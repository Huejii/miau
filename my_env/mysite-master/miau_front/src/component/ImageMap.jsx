import React from 'react';
import styled from 'styled-components';
import { MapData } from './MapData';

const FloorPlanImage = styled.img`
  width: 100%;
  height: auto;
  max-height: 100%;
  object-fit: contain; /* 이미지 비율 유지 */
`;

function ImageMap({ imageRef, imageUrl, selectedBuilding, selectedFloor, handleImageLoad, handleClick }) {

 let selectedMap = MapData.maps.find((map) => map.imageUrl === imageUrl);


  return (
    <div>
      {selectedMap = MapData.maps.find((map) => map.imageUrl === imageUrl) ? (
        <>
      <FloorPlanImage
        ref={imageRef}
        id="map"
        src={imageUrl}
        alt="도면"
        onLoad={handleImageLoad}
        useMap={`#${selectedBuilding + "_" + selectedFloor + "F"}`}
      />
      <map id="map" name={selectedBuilding + "_" + selectedFloor + "F"}>
        {selectedMap.areas.map((area, index) => (
          <area
            alt={area.alt}
            key={index}
            shape={area.shape}
            coords={area.coords}
            id={area.id}
            onClick={() => handleClick(area)}
          />
        ))}
        </map>
      
        </>

      )
        :(<FloorPlanImage ref={imageRef} id={selectedBuilding + "_" + selectedFloor + "F"} src={imageUrl} alt="도면" onLoad={handleImageLoad} useMap={`#${selectedBuilding + "_" + selectedFloor + "F"}`} />
              )}
    </div>
  );
}

export default ImageMap;