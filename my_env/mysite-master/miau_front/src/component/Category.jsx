import React from 'react';
import styled from 'styled-components';

const CategoryButtonsWrapper = styled.div`
  display: flex;
  flex-wrap: wrap;
  margin-bottom: 10px;
`;

const CategoryButton = styled.button`
  padding: 10px;
  margin: 3px;
  border: none;
  background-color: #fff;
  color: #333;
  cursor: pointer;
  border-radius: 20px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  transition: background-color 0.3s ease;

  &.active {
    background-color: rgba(0,52,92,255);;
    color: #fff;
  }
`;

function Category({ handleCategoryChange , selectedCategory }) {
  const categories = [
    '커뮤니티공간',
    '학습실',
    '강의실',
    '학과사무실',
    'PC실',
    '실험실',
    'ATM',
    '정수기',
  ];

  const handleCategoryClick = (category) => {
    handleCategoryChange(category);
  };

  return (
    <CategoryButtonsWrapper>
      {categories.map((category, index) => (
        <CategoryButton
          key={index}
          className={selectedCategory === category ? "active" : ""}
          onClick={() => handleCategoryClick(category)}
        >
          {category}
        </CategoryButton>
      ))}
    </CategoryButtonsWrapper>
  );
}

export default Category;