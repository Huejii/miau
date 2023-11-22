import React, { useState, useEffect, useRef } from 'react';
import { useNavigate } from 'react-router';
import styled from 'styled-components';
import axios from 'axios';
import { Map, MapMarker } from 'react-kakao-maps-sdk';


const MapButton = styled.button`
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
const CommentContainer = styled.div`
    position: fixed;
    bottom: 30px;
    right: 30px;

    height: 500px;
    width: 500px;

    border: 1px solid rgba(0, 0, 0, 0.3);
    border-radius: 10px;
    background: white;
    color: black;
    padding: 12px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
    font-size: 1rem;
`;
const CommentNavbar = styled.div`
    height: 30px;
    width: 100%;
    padding: 10px 0;
    border-bottom: 1px solid lightslategray;
    display: flex;
    justify-content: space-between;
    align-items: center;
`;
const HeadWrapper = styled.div`
    display: flex;
    justify-content: flex-start;
`;
const CommentH2 = styled.h2`
    margin: 0 10px;
`;
const CommentPlus = styled.button`
    border: none;
    background: none;
    color: #a8a8a8;
    display: flex;
    align-items: end;
    cursor: pointer;
`;
const CommentClose = styled.button`
    background: lightslategray;
    border-radius: 25%;
    border: none;
    color: white;
    width: 25px;
    height: 25px;
    margin-right: 10px;
    cursor: pointer;
`;
const CommentInput = styled.div`
    height: 50px;
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
`;
const CommentInputText = styled.input.attrs({
    type: 'comment',
    placeholder: '건물을 검색해보세요!',
})`
    border: 1px;
    font-size: 1rem;
    height: 40px;
    width: 360px;
    border-radius: 10px;
    padding-left: 15px;
    box-shadow: inset 0px 0px 5px rgba(0, 0, 0, 0.3);
`;
const CommentInputButton = styled.button`
    height: 43px;
    width: 70px;
    background: rgba(0, 52, 92, 255);
    color: white;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.1);
`;
const CommentsContainer = styled.div`
    height: 75%;
    width: 100%;
    display: flex;
    justify-content: center;
    background-color: white;
`;
const CommentsWrapper = styled.div`
    padding: 0 20px;
    background-color: white;
    width: 1080px;
    overflow-y: auto;
`;
const SingleCommentDiv = styled.div`
    padding: 0 10px;
    display: flex;
    justify-content: flex-start;
    min-height: 30px;
    width: 100%;
    border-bottom: 0.5px dotted gray;
`;
const CommentHeader = styled.div`
    display: flex;
    justify-content: flex-start;
    color: gray;
    width: 100px;
`;
const Content = styled.div`
    display: flex;
    justify-content: flex-start;
    margin: 0 10px;
    padding: 10px 0;
    width: 100%;
    white-space: pre-wrap;
    word-break: break-word;
    overflow-wrap: break-word;
`;

const PopupComment = () => {
    const wrapperRef = useRef(null);
    const navigate = useNavigate();
    const [popupState, setPopupState] = useState(false);
    const [popups, setPopups] = useState(null); // db에서 불러온 팝업 리스트
    const [comments, setComments] = useState([]);
    const [buildingName, setBuildingName] = useState('');
    const [roomNumber, setRoomNumber] = useState('');
    const [commentText, setCommentText] = useState('');
    const [isPopupOpen, setPopupOpen] = useState(false);
    const [isOpen, setIsOpen] = useState(false)

    const openPopup = () => {
        setPopupOpen(true);
    };

    const closePopup = () => {
        setPopupOpen(false);
    };

    useEffect(() => {
        const fetchComments = async () => {
            try {
                const response = await axios.get('http://127.0.0.1:8000/comments/');
                setComments(response.data);
            } catch (error) {
                console.error(error);
            }
        };

        fetchComments();
    }, []);

    const handleCommentSubmit = async () => {
        if (commentText.trim() === '') {
            return;
        }

        const newComment = {
            building_name: buildingName,
            tag: roomNumber,
            comment: commentText,
        };

        try {
            const response = await axios.post('http://127.0.0.1:8000/comments/', newComment);
            setBuildingName(''); // 건물 초기화
            setRoomNumber(''); // 태그 초기화
            setCommentText(''); // 댓글 초기화
            setComments([response.data, ...comments]);
        } catch (error) {
            console.error(error);
        }
    };
        // useEffect(()=>{
        //   var container = document.getElementById('map');
        //   var options = {
        //     center: new kakao.maps.LatLng(37.365264512305174, 127.10676860117488),
        //     level: 3
        //   };
      
        //   var map = new kakao.maps.Map(container, options);
        //   var markerPosition  = new kakao.maps.LatLng(37.365264512305174, 127.10676860117488); 
        //   var marker = new kakao.maps.Marker({
        //     position: markerPosition
        // });
        // marker.setMap(map);
      
        //   }, [])

    useEffect(() => {
        // 스크롤을 올리는 함수
        const scrollToBottom = () => {
            if (wrapperRef.current) {
                const { scrollHeight, clientHeight } = wrapperRef.current;
                wrapperRef.current.scrollTo({ top: scrollHeight - clientHeight, behavior: 'smooth' });
            }
        };

        // comments 상태가 업데이트될 때마다 스크롤을 올림
        scrollToBottom();
    }, [comments]);

    

    return (
        <>
            <MapButton onClick={openPopup}>Map 🗺️</MapButton>
            {isPopupOpen && (
                <CommentContainer>
                    <CommentNavbar>
                        <HeadWrapper>
                            <CommentH2>Map</CommentH2>
                            <CommentPlus
                                onClick={() => {
                                    navigate('/map');
                                }}
                            >
                                &gt; 지도 전체화면
                            </CommentPlus>
                        </HeadWrapper>
                        <CommentClose onClick={closePopup}>X</CommentClose>
                    </CommentNavbar>
                    <Map 
        center={{ lat: 37.283, lng: 127.043}}   // 지도의 중심 좌표
        style={{ width: '500px', height: '400px' }} // 지도 크기
        level={4}                                   // 지도 확대 레벨
      >
         <MapMarker // 마커를 생성합니다
        position={{
          // 마커가 표시될 위치입니다
          lat: 37.28435,
          lng: 127.0444,
        }}
        image={{
          src: "http://localhost:8000/media/2d_map/pal.png", // 마커이미지의 주소입니다
          size: {
            width: 60,
            height: 60,
          }, // 마커이미지의 크기입니다
          options: {
            offset: {
              x: 27,
              y: 69,
            }, // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
          },
        }}
        clickable={true} // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
        onClick={() => setIsOpen(true)}
      />
      </Map>
                    <CommentInput>
                        <CommentInputText value={commentText} onChange={(e) => setCommentText(e.target.value)} />
                        <CommentInputButton onClick={handleCommentSubmit}>Confirm</CommentInputButton>
                    </CommentInput>
                </CommentContainer>
            )}
        </>
    );
};

export default PopupComment;
