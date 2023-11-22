import React, { useState, useRef, useEffect } from "react";
import styled from "styled-components";
// import Search from "./component/Search";
import axios from "axios";
import { useNavigate } from 'react-router-dom';
import { Application } from '@splinetool/runtime';
import Map from './component/Map'

const MenuButton = styled.button`
    position: fixed;
    bottom: 30px;
    right: 30px;
    border: none;
    border-radius: 16px;
    background: #69cbf1;
    color: white;
    padding: 12px;
    font-weight: bold;
    font-size: 1.1rem;
    box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
    cursor: pointer;
`;
const MapButton = styled.button`
    position: fixed;
    bottom: 30px;
    right: 120px;
    border: none;
    border-radius: 16px;
    background: #69cbf1;
    color: white;
    padding: 12px;
    font-weight: bold;
    font-size: 1.1rem;
    box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
    cursor: pointer;
`;
const Container = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  height: 80vh;
  flex-direction: column;
`;
const SearchContainer = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 500px;
  height: 35px;
  border: 1px solid #dfe1e5;
  border-radius: 24px;
  margin-top: -70px;
  padding: 3px 30px;
   
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
const ShortcutButton = styled.button`
  margin-top: 2vh;
  background-color: #ffffff;
  border: none;
  color: #000000;
  cursor: pointer;
  border-radius: 24px;
  box-shadow: 0 1px 2px rgba(89, 89, 93, 0.28);
  padding: 5px 12px;
  margin: 3px;
  margin-top: 15px;
  &:hover {
    box-shadow: 0 1px 6px rgba(32, 33, 36, 0.28), 0 1px 6px rgba(32, 33, 36, 0.64);
  }
`;


const Home = () => {
  const [searchResults, setSearchResults] = useState([]);
  const [selectedItem, setSelectedItem] = useState(null);
  const [selectedBuilding, setSelectedBuilding] = useState('');
  const [selectedFloor, setSelectedFloor] = useState('');
  const [selectedCategory, setSelectedCategory] = useState('');
  const [searchKeyword, setSearchKeyword] = useState('');
  const navigate = useNavigate();

  const handleInputChange = (e) => {
    setSearchKeyword(e.target.value);
  };


  // 키워드검색
  const canvasRef = useRef(null);

  useEffect(() => {

    const canvas = document.getElementById('canvas3d');
    const app = new Application(canvas);
    app.load('https://prod.spline.design/udDTYOYkY6B6sTbl/scene.splinecode');
    
    
    
    
  }, []);

  const handleShortcutClick = (keyword) => {
    navigate(`/search`, { state: { searchKeyword: keyword } });
  };
  

  return (
    <>
    <Map/>
    <Container>
    <canvas id="canvas3d" ref={canvasRef} />
      <SearchContainer>
      <SearchInput
        type="text"
        value={searchKeyword}
        onChange={handleInputChange}
        placeholder="장소 또는 시설을 검색하세요.   예) 팔달관 309, 정수기"
      />
      <SearchButton onClick={() => {
            navigate(`/search`, { state: { searchKeyword } });
          }} type="submit">검색</SearchButton>
    </SearchContainer> 
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
    </Container>
                    </>
  );
};

export default Home;

