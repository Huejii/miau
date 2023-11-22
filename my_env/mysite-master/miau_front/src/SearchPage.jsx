import React, { useState, useEffect } from "react";
import styled from "styled-components";
import Searchlist from "./component/Searchlist";
import Search from "./component/Search";
import FloorPlan from "./component/FloorPlan";
import axios from "axios";
import { useLocation } from 'react-router-dom';

const SearchInputContainer = styled.div`
  display: flex;
  /* justify-content: left; */
  align-items: left;
  flex-direction: column;
`;
const SearchContainer = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  /* margin-top: 1vh; */
  flex-direction: row;
  box-shadow: 0 1px 6px rgba(89, 89, 93, 0.28);
  padding-bottom: 1vh;
`;
const MainContainer = styled.div`
  display: flex;
  margin-top: 1vh;
  flex-direction: row;
  justify-content: center;
`;
const SearchListContainer = styled.div`
  /* display: flex; */
  padding : 10px;
  box-shadow: 0 1px 2px rgba(89, 89, 93, 0.28);
  width: 30vw;
`;
const FloorPlanContainer = styled.div`
  width: 60vw;
`;
// 빠른검색
const ShortcutButton = styled.button`
  margin-top: 2vh;
  background-color: #ffffff;
  border: none;
  color: #000000;
  cursor: pointer;
  border-radius: 24px;
  box-shadow: 0 1px 1px rgba(89, 89, 93, 0.28);
  padding: 5px 12px;
  margin: 3px;
  margin-top: 15px;
  &:hover {
    box-shadow: 0 1px 6px rgba(32, 33, 36, 0.28), 0 1px 6px rgba(32, 33, 36, 0.64);
  }
`;


const SearchPage = () => {
  const [searchResults, setSearchResults] = useState([]);
  const [selectedBuilding, setSelectedBuilding] = useState('');
  const [selectedFloor, setSelectedFloor] = useState('');
  const [selectedCategory, setSelectedCategory] = useState('');
  const [selectedItem, setSelectedItem] = useState(null);
  const location = useLocation();
  const [kw, setKeyword] = useState(location.state?.searchKeyword);


  const [buildingOptions, setBuildingOptions] = useState([]);
  const [floorOptions, setFloorOptions] = useState([]);
  const [categoryOptions, setCategoryOptions] = useState([]);
  const [activeCategory, setActiveCategory] = useState('');
  const [isSelectDropdown, setisSelectDropdown] = useState(false);
  const [buttonClick, setButtonClick] = useState('');
  const [isNotInit, setisNotInit] = useState(false);
  const [defaultSelect, setDefaultSelect] = useState(true);
  const [isSearch, setIsSearch] = useState(false);


  // 키워드 검색
  const searchres = (keyword) => {
    axios
      .get('http://127.0.0.1:8000/search', {
        params: {
          searched: keyword,
          cta: '',
          builds: selectedBuilding,
          floor: selectedFloor,
          category: selectedCategory,
        },
      })
      .then((response) => {

        setSearchResults(response.data);
        console.log("keyword:",keyword);
        console.log("selectedBuilding:",selectedBuilding);
        console.log("selectedFloor:",selectedFloor);
        console.log("selectedCategory:",selectedCategory);

      })
      .catch((error) => console.log(error));
  };

  // 빠른 검색
  const handleShortcutClick = (keyword) => {
    searchres(keyword);
  };

  // 층별도면 열기
  const openPopup = (item) => {
    setSelectedItem(item);
  };
    
  // 층별도면 닫기
  const closePopup = () => {
    setSelectedItem(null);
    setButtonClick('');
  };
  useEffect(() => {
    searchres(kw)
},[kw]);

  return (
    <>
    <SearchContainer>
      <img src="" alt="Logo"/>
      <SearchInputContainer>
        <Search searchres={searchres}/>
        <div>
          <ShortcutButton onClick={() => handleShortcutClick("커뮤니티공간")}>커뮤니티공간</ShortcutButton>
          <ShortcutButton onClick={() => handleShortcutClick("학습실")}>학습실</ShortcutButton>
          <ShortcutButton onClick={() => handleShortcutClick("강의실")}>강의실</ShortcutButton>
          <ShortcutButton onClick={() => handleShortcutClick("학과사무실")}>학과사무실</ShortcutButton>
          <ShortcutButton onClick={() => handleShortcutClick("PC실")}>PC실</ShortcutButton>
          <ShortcutButton onClick={() => handleShortcutClick("실험실")}>실험실</ShortcutButton>
          <ShortcutButton onClick={() => handleShortcutClick("ATM")}>ATM</ShortcutButton>
          <ShortcutButton onClick={() => handleShortcutClick("정수기")}>정수기</ShortcutButton>
        </div> 
      </SearchInputContainer>
    </SearchContainer>
    <MainContainer>
      <SearchListContainer>
        <Searchlist searchResults={searchResults} openPopup={openPopup}/>
      </SearchListContainer>
      <FloorPlanContainer>
      <FloorPlan isOpen={selectedItem !== null || buttonClick !== ''} onRequestClose={closePopup} selectedItem={selectedItem} buttonClick={buttonClick}/>
      </FloorPlanContainer>
    </MainContainer>
                    </>
  );
};

export default SearchPage;

