import React, { useState, useEffect } from 'react';
import styled from 'styled-components';
import axios from 'axios';

const SearchContainer = styled.div`
  display: flex;
  flex-direction: column;
  overflow-y: auto;
  height: 70vh;
`;

const SearchResults = styled.ul`
  list-style: none;
  margin: 0;
  padding: 0;
`;

const SearchResultItem = styled.li`
  padding: 1px 20px 1px 20px;
  background-color: #fff;
  margin-bottom: 5px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  cursor: pointer;

  &:hover {
    background-color: #f2f2f2;
  }
`;

const PaginationContainer = styled.div`
  display: flex;
  justify-content: center;
  margin-top: 20px;
`;

const PaginationButton = styled.button`
  padding: 6px 10px;
  margin: 0 3px;
  background-color: ${(props) => (props.active ? '#333' : '#fff')};
  color: ${(props) => (props.active ? '#fff' : '#333')};
  border: 1px solid #333;
  border-radius: 5px;
  cursor: pointer;
  opacity: 0.4;

  &:disabled {
    opacity: 0.8;
    cursor: not-allowed;
  }
`;

const FilterContainer = styled.div`
  margin-bottom: 10px;
`;

const FilterLabel = styled.label`
  font-weight: bold;
  margin-right: 5px;
`;

const FilterDropdown = styled.select`
  padding: 5px;
  border-radius: 5px;
`;

const FloorLocNumPlaceName = styled.p`
  margin-bottom: 16px;
`;

function Searchlist({ searchResults, openPopup, isNotInit}) {
  const [currentPage, setCurrentPage] = useState(1);
  const resultsPerPage = 15;
  const [totalPages, setTotalPages] = useState(1);
  const [filteredResults, setFilteredResults] = useState(searchResults);
  const indexOfLastResult = currentPage * resultsPerPage;
  const indexOfFirstResult = indexOfLastResult - resultsPerPage;
  const currentResults = filteredResults.slice(
    indexOfFirstResult,
    indexOfLastResult
  );

  const handlePageChange = (page) => {
    setCurrentPage(page);
  };

  // 이전 페이지가 새로운 검색 결과를 불러올 때마다 1로 초기화
  useEffect(() => {
    setCurrentPage(1);
  }, [filteredResults]);

  // State for building options
  const [buildingOptions, setBuildingOptions] = useState(['------']);

  // State for selected building
  const [selectedBuilding, setSelectedBuilding] = useState('All Buildings');

  // Fetch building data from the database
  useEffect(() => {
    axios
      .get('http://127.0.0.1:8000/chained-dropdown-data/')
      .then((response) => {
        const buildings = response.data.buildings || [];
        setBuildingOptions(['All Buildings', ...buildings]);
      })
      .catch((error) => {
        console.error('Error fetching building data:', error);
      });
  }, []);

  // Handle building selection change
  const handleBuildingOptions = (event) => {
    const selectedBuilding = event.target.value;
    setSelectedBuilding(selectedBuilding);
    setCurrentPage(1); // Reset current page when building changes
  };

  // Filter the results based on the selected building
  useEffect(() => {
    const filteredResults = selectedBuilding === 'All Buildings'
      ? searchResults
      : searchResults.filter((result) => result.building_name === selectedBuilding);
    setFilteredResults(filteredResults);
    setTotalPages(Math.ceil(filteredResults.length / resultsPerPage));
    setCurrentPage(1);
    console.log("searchResults.length:",searchResults.length);
    console.log("filteredResults.length:",filteredResults.length);
    console.log("filteredResults[0]:",filteredResults[0]);
  }, [selectedBuilding, searchResults, resultsPerPage]);

  const renderPageNumbers = () => {
    const pageNumbers = [];
    const maxVisiblePages = 5;
    const halfVisiblePages = Math.floor(maxVisiblePages / 2);
    let startPage = currentPage - halfVisiblePages;
    let endPage = currentPage + halfVisiblePages;
    if (startPage <= 0) {
      startPage = 1;
      endPage = maxVisiblePages;
    }

    if (endPage > totalPages) {
      endPage = totalPages;
      startPage = totalPages - maxVisiblePages + 1;
      if (startPage <= 0) {
        startPage = 1;
      }
    }

    for (let page = startPage; page <= endPage; page++) {
      pageNumbers.push(page);
    }

    return pageNumbers.map((page) => (
      <PaginationButton
        key={page}
        onClick={() => handlePageChange(page)}
        active={(currentPage === page).toString()}
        disabled={currentPage === page}
      >
        {page}
      </PaginationButton>
    ));
  };

  return (
    <>
    <FilterContainer>
        <FilterLabel>Filter by Building:</FilterLabel>
        <FilterDropdown value={selectedBuilding} onChange={handleBuildingOptions}>
          {buildingOptions.map((building) => (
            <option key={building} value={building}>
              {building}
            </option>
          ))}
        </FilterDropdown>
      </FilterContainer>
      <SearchContainer>
        {filteredResults.length > 0 && !(filteredResults[0] === "에러") ? (
          <SearchResults>
            {currentResults.map((result, index) => (
              <SearchResultItem key={index} onClick={() => openPopup(result)}>
                <div className="place-details">
                  <h3 className="building-name">{result.location}</h3>
                  <FloorLocNumPlaceName>
                    {result.building_name} | [{result.floor}F] {result.loc_num}
                  </FloorLocNumPlaceName>
                </div>
              </SearchResultItem>
            ))}
          </SearchResults>
        ) : (
          isNotInit === true && <div>검색결과가 없습니다.</div>
        )}
      </SearchContainer>
      <PaginationContainer>{renderPageNumbers()}</PaginationContainer>
    </>
  );
}
export default Searchlist;