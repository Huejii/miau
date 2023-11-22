import React, { useState, useEffect } from 'react';
import styled from 'styled-components';


const SearchContainer = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-top: 20px;
  width: 500px;
  height: 35px;
  border: 1px solid #dfe1e5;
  border-radius: 24px;
  padding: 3px 30px;
  box-shadow: 0 1px 2px rgba(79, 80, 82, 0.28);
`;

const SearchInput = styled.input`
  flex-grow: 1;
  border: none;
  &:focus {
    outline: none;
  }
  font-size: 14px;
`;

const SearchButton = styled.button`
  background-color: transparent;
  border: none;
  cursor: pointer;
  &:hover {
    box-shadow: 0 1px 1px hsla(0, 0%, 0%, 0.1);
  }
`;


function Search({searchres}) {
  const [searchKeyword, setSearchKeyword] = useState('');
  const handleSearch = async () => {
    await searchres(searchKeyword);
  };
  const handleInputChange = (e) => {
    setSearchKeyword(e.target.value);
  };

  return (
    <SearchContainer>
      <SearchInput
        type="text"
        value={searchKeyword}
        onChange={handleInputChange}
        placeholder="장소 또는 시설을 검색하세요.   예) 팔달관 309, 정수기"
      />
      <SearchButton onClick={handleSearch} type="submit">검색</SearchButton>
    </SearchContainer>
  );
}
export default Search;
