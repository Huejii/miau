import React from 'react';
import styled from 'styled-components';
import { useNavigate } from 'react-router';

const PlaceInfoContainer = styled.div`
  margin-top: 10px;
  margin-left: 30px;

  margin-bottom: 10px;
`;

const BuildingName = styled.h2`
  margin-bottom: 5px;
`;

const LocNum = styled.span`
  color: #888888;
`;
const LocationName = styled.span`
  color: #888888;
`;


const WikiButton = styled.button`
  color: black;
  background-color: white;
  border: 1px solid lightgray;
  margin-top: 5px;
  margin-left: 10px;
  margin-bottom: 5px;
  padding: 5px 10px 5px 10px;
  border-radius: 10px;
  cursor: pointer;
  transition: background-color 0.3s ease;

  &:hover {
    background-color: #f2f2f2;
  }
`;

const PlaceInfo = ({ selectedItem, selectedBuilding, visible }) => {
  const navigate = useNavigate();

  return (
    <PlaceInfoContainer>
      <BuildingName>
        {selectedBuilding}
        <WikiButton
          onClick={() => {
            navigate(`/wiki`, { state: { selectedBuilding } });
          }}
        >
          건물위키 페이지 바로가기
        </WikiButton>
      </BuildingName>
      {selectedItem && visible && (
        <>
          <LocationName>
          {(selectedItem.loc_num !=='') && <LocNum>{selectedItem.loc_num}호 </LocNum>}
            {selectedItem.location}
            <WikiButton
              onClick={() => {
                navigate(`/wiki`, { state: { selectedItem } });
              }}
            >
              장소위키 페이지 바로가기
            </WikiButton>
          </LocationName>
        </>
      )}
    </PlaceInfoContainer>
  );
};

export default PlaceInfo;
