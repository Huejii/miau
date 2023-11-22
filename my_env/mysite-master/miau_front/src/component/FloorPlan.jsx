import React, { useState, useEffect, useRef } from 'react';
import styled from 'styled-components';
import Dropdown from './Dropdown';
import axios from 'axios';
import PlaceInfo from './PlaceInfo';
import ImageMap from './ImageMap';

const customPopUpStyles = {
  top: 0,
  left: 0,
  right: 0,
  bottom: 0,
  display: 'flex',
  alignItems: 'center',
  justifyContent: 'center',
  zIndex: 9999,
};
const FloorPlanWrapper = styled.div`
  width: 95%;
  max-width: 95%;
  max-height: 95%;
  background-color: #ffffff;
  border-radius: 5px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
  position: relative;
`;
const CloseButton = styled.div`
  position: absolute;
  top: 10px;
  right: 10px;
  width: 30px;
  height: 30px;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 50%;
  background-color: #ffffff;
  cursor: pointer;
`;
const CloseIcon = styled.span`
  display: block;
  width: 14px;
  height: 14px;
  position: relative;

  &::before,
  &::after {
    content: '';
    position: absolute;
    width: 100%;
    height: 2px;
    background-color: #888888;
    top: 50%;
    left: 0;
    transform: translateY(-50%);
  }

  &::before {
    transform: rotate(45deg);
  }

  &::after {
    transform: rotate(-45deg);
  }
`;

const FloorPlan = ({ isOpen, onRequestClose, selectedItem, buttonClick }) => {
  const [imageLoaded, setImageLoaded] = useState(false);
  const [imageUrl, setImageUrl] = useState('');
  const imageRef = useRef(null);
  const [defaultSelect, setDefaultSelect] = useState(false);
  const [floorOptions, setFloorOptions] = useState([]);
  const [selectedFloor, setSelectedFloor] = useState('');
  const [selectedBuilding, setSelectedBuilding] = useState('');
  const [visible, setVisible] = useState(true);
  const [Item, setItem] = useState();
  const [markerPosition, setMarkerPosition] = useState(null); // 마커의 위치를 저장하는 state 변수
  const [wRatio, setWRatio]= useState(null);
  const [hRatio, setHRatio]= useState(null);

  // 1. 장소아이템 선택!
  useEffect(() => {
    // 마커 포지션 초기화
    if (markerPosition) {
      markerPosition.remove();
    }
    // 그림 url 초기화
    setImageUrl('');

    // 층별도면창 on
    setVisible(true);

    if (selectedItem) {
      
      console.log("682// selectedItem:", selectedItem);
      setItem(selectedItem);
      console.log("684// 장소가 선택되어 Item에 selectedItem을 저장합니다. Item:", Item);
      setSelectedBuilding(selectedItem.building_name);
      console.log("686// selectedItem.building_name을 selectedBuilding에 저장합니다. selectedBuilding:", selectedBuilding);
      setSelectedFloor(selectedItem.floor);
      console.log("688// selectedItem.floor을 selectedFloor에 저장합니다. selectedFloor:", selectedFloor);
      setImageUrl(selectedItem.image);
      console.log("690// ImageUrl에 selectedItem.image 주소를 저장합니다. imageUrl:", imageUrl);
    }
    if (selectedItem) {
      console.log(`702// selectedItem: ${selectedItem} 클릭되어 드롭다운셋팅을 합니다.`);
      axios
        .get('http://127.0.0.1:8000/chained-dropdown-data/', {
          params: {
            building_name: selectedItem.building_name
          },
        })
        .then(response => {
          const floors = response.data.floors || [];
          setFloorOptions([...floors]);
        })
        .catch(error => {
          console.error('Error fetching floor data:', error);
        });

    }

  }, [selectedItem]);

// 이미지 로드 불대수
  const handleImageLoad = () => {
    setImageLoaded(true);
    console.log(`747// setImageLoaded를 true로 변환합니다.: ${imageLoaded}`);

  };

// 2. 이미지 조정
  useEffect(() =>{
    console.log("이미지조정할까요");
    if(imageRef.current !== null){
        console.log("이미지조정시작");
      const img = imageRef.current;
      console.log(`764// img:${img}`);
      const container = img.parentNode;              
      const containerWidth = container.offsetWidth;
      const containerHeight = container.offsetHeight;
      const imageWidth = img.naturalWidth;
      const imageHeight = img.naturalHeight;
      console.log(`763// imageWidth=${imageWidth}, imageHeight=${imageHeight}`);
      const widthRatio = imageWidth / containerWidth;
      const heightRatio = imageHeight / containerHeight;
      console.log(`763// containerWidth=${containerWidth}`);
      setWRatio(widthRatio);
      setHRatio(heightRatio);
      console.log(`763// wRatio와 hRatio가 셋팅되었습니다. wRatio=${widthRatio}, hRatio=${heightRatio}`);
}}, [imageLoaded]);

useEffect(() =>{
  if(imageRef.current !== null){
      // 이미지의 가로 세로 비율을 유지하면서 적절한 크기로 조정합니다.
      const areas = document.querySelectorAll("#map area");
      console.log("areas: ",areas);
      areas.forEach(area => {
        area.setAttribute('coords', area.getAttribute('alt')); // 초기값 설정
        console.log("area: ",area);
        
        const originalCoords = area.getAttribute('coords');
        const coordsArray = originalCoords.split(',').map(coord => parseInt(coord));
        
        const convertedCoords = coordsArray.map((coord, index) => {
          if (index % 2 === 0) {
            return Math.round(coord / wRatio);
          } else {
            return Math.round(coord / hRatio);
          }
        });
        const newCoords = convertedCoords.join(',');
        area.setAttribute('coords', newCoords);
      });
    }   

    console.log("이미지조정끝");
      }, [Item, wRatio, hRatio]);

  const handleFloorOptions = event => {
    const selectedFloor = event.target.value;
    setItem();
    if (markerPosition) {
      markerPosition.remove();
    }
    setImageLoaded(false);
    console.log(`763// 층별드롭다운 초기화`);
    setSelectedFloor(selectedFloor);
    setVisible(false);
    console.log(`763// selectedFloor:${selectedFloor}`);

    if (selectedItem !== null) {
      console.log(`763// 층별도면 선택:${selectedFloor}`);
      if (selectedItem.building_name === '팔달관' || buttonClick === '팔달관') {
        setImageUrl(`http://127.0.0.1:8000/media/2d_map/paldal_${selectedFloor}F.png`);
      } else if (selectedItem.building_name === '혜강관' || buttonClick === '혜강관') {
        setImageUrl(`http://127.0.0.1:8000/media/2d_map/hyegang_${selectedFloor}F.png`);
      } else if (selectedItem.building_name === '중앙도서관' || buttonClick === '중앙도서관') {
        setImageUrl(`http://127.0.0.1:8000/media/2d_map/library_${selectedFloor}F.png`);
      }
    } else if (buttonClick !== '') {
      
      if (buttonClick === '팔달관') {
        setImageUrl(`http://127.0.0.1:8000/media/2d_map/paldal_${selectedFloor}F.png`);
      } else if (buttonClick === '혜강관') {
        setImageUrl(`http://127.0.0.1:8000/media/2d_map/hyegang_${selectedFloor}F.png`);
      } else if (buttonClick === '중앙도서관') {
        setImageUrl(`http://127.0.0.1:8000/media/2d_map/library_${selectedFloor}F.png`);
      }
    }
    setImageLoaded(false);
  };

// 3. 다시 아이템이 다시 선택될 때마다 마커 표시
  useEffect(() => {
    if(Item){
      if (markerPosition) {
        markerPosition.remove();
      }
      setMarker(Item);
    }
  }, [Item, wRatio, hRatio]);  // wRatio와 hRatio를 의존성 배열에 추가
  

// 층별도면상에서 클릭했을 때
  const handleClick = place => {
    console.log(`${place.name} 클릭`);
    if (markerPosition) {
      markerPosition.remove();
    }
    axios
      .get('http://127.0.0.1:8000/imageclick/', {
        params: {
          id: place.id
        },
      })
      .then(response => {
        console.log("imageclick response", response.data);
        setItem(response.data);
        setVisible(true);

      })
      .catch(error => {
        console.error('Error fetching floor data:', error);
      });
  };

  // 마커 표시
  const setMarker = place =>{
    if (markerPosition) {
      markerPosition.remove();
    }
    if(place.coords){
    const coords = place.coords.split(',').map(coord => parseInt(coord));
    const convertedCoords = coords.map((coord, index) => {
      console.log("882// wRatio",wRatio);
      console.log("883// hRatio",hRatio);
      if (index % 2 === 0) {
        return Math.round(coord / wRatio);
      } else {
        return Math.round(coord / hRatio);
      }
    });
    const centerX = (convertedCoords[0] + convertedCoords[2]) / 2;
    const centerY = (convertedCoords[1] + convertedCoords[3]) / 2;
    console.log("892// coords: ",place.coords)
    console.log("893// convertedCoords: ",convertedCoords)
    console.log("894// marker position: ",centerX,centerY)
    const marker = document.createElement('div');
    marker.style.position = 'absolute';
    marker.style.top = `${centerY + 20}px`;
    marker.style.left = `${centerX - 5}px`;
    marker.style.width = '13px';
    marker.style.height = '24px';
    marker.style.backgroundImage = 'url("http://127.0.0.1:8000/media/2d_map/marker.png")'; // 마커 이미지 URL로 변경
    marker.style.backgroundSize = 'cover';
    marker.style.zIndex = '9999';
    document.querySelector("#map").parentNode.appendChild(marker);
    setMarkerPosition(marker);
    console.log("906// set marker position: ")
    console.log("setmarker 완료");
  }
  }

  return (
    <>
      {isOpen && (
        <div style={customPopUpStyles}>
          <FloorPlanWrapper>
            <CloseButton onClick={onRequestClose}>
              <CloseIcon />
            </CloseButton>
            <div style={{ width: '100%', height: '100%', display: 'flex', alignItems: 'center', justifyContent: 'center', flexDirection: "column", paddingTop: "10px" }}>
              <div style={{ width: '100%', display: 'flex', alignItems: 'left' }}>
                <Dropdown label="Floor" options={floorOptions} value={selectedFloor} onChange={handleFloorOptions} defaultSelect={defaultSelect} />
              </div>
              <ImageMap imageRef={imageRef} imageUrl={imageUrl} selectedBuilding ={selectedBuilding} selectedFloor={selectedFloor} handleImageLoad={handleImageLoad} handleClick={handleClick}/>
            </div>
            <PlaceInfo selectedItem={Item} selectedBuilding={selectedBuilding} visible={visible}></PlaceInfo>
          </FloorPlanWrapper>
        </div>
      )}
    </>
  );
};

export default FloorPlan;