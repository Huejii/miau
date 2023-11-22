import React, { useState } from 'react';
import styled from 'styled-components';
import { useLocation } from 'react-router-dom';
import { useNavigate } from 'react-router';

const HeadContainer = styled.div`
    width: 100%;
    position: fixed;
    height: 50px;
    border-bottom: 1px solid gray;
    background-color: rgba(0, 52, 92, 255);
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 999;
`;

const HeadWrapper = styled.div`
    width: 100%;
    display: flex;
    padding: 0 2rem;
    justify-content: space-between;
    align-items: center;
`;

const H2 = styled.h2`
    color: white;
`;

const SearchlistContainer = styled.div`
    display: flex;
    align-items: center;
    justify-content: center;
`;

const SearchBarWrapper = styled.div`
    display: flex;
    align-items: center;
    justify-content: center;
`;

const SearchInput = styled.input`
    width: 300px;
    padding: 7px;
    border: none;
    border-radius: 7px;
    margin-right: 5px;
    box-shadow: inset 0px 0px 3px rgba(0, 0, 0, 0.3);
`;

const SearchButton = styled.button`
    padding: 8px 12px;
    border: none;
    background: white;
    color: rgba(0, 52, 92, 255);
    cursor: pointer;
    border-radius: 5px;
    box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.1);
`;

const Main = styled.div`
    padding-top: 50px;
    display: flex;
    justify-content: center;
`;

const MainContainer = styled.div`
    width: 1080px;
`;

const ContentContainer = styled.div``;

const MainHeadDiv = styled.div`
    display: flex;
    justify-content: space-between;
`;

const H1 = styled.h1``;

const ReportDiv = styled.div`
    display: flex;
    align-items: center;
`;

const ReportButton = styled.button`
    padding: 8px 12px;
    border: none;
    background: #850000;
    color: white;
    cursor: pointer;
    border-radius: 5px;
    box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.1);
`;

const A = styled.a`
    text-decoration: none;
    color: #0645ad;
    &:hover {
        text-decoration: underline;
    }
    &:visited {
        color: #0645ad;
    }
`;
const WikiHome = () => {
    const location = useLocation();
    const dummy = ['혜강', '5층', '502호'];
    const [content, setContent] = useState('');
    const navigate = useNavigate();
    const [selectedItem, setSelectedItem] = useState(location.state?.selectedItem);
    const [selectedBuilding, setSelectedBuilding] = useState(location.state?.selectedBuilding);

    const handleContentChange = (e) => {
        setContent(e.target.value);
    };

    const handleReportClick = () => {
        // 잘못된 정보 신고 버튼 클릭 시 처리할 로직 작성
        console.log('잘못된 정보 신고');
    };

    return (
        <>
            <HeadContainer>
                <HeadWrapper>
                    <H2>Miki</H2>
                    <SearchlistContainer>
                        <SearchBarWrapper>
                            <SearchInput />
                            <SearchButton>검색</SearchButton>
                        </SearchBarWrapper>
                    </SearchlistContainer>
                </HeadWrapper>
            </HeadContainer>
            <Main>
                <MainContainer>
                    <MainHeadDiv>
                        <H1>Map in Ajou Wiki</H1>
                        <ReportDiv>
                            <ReportButton onClick={handleReportClick}>잘못된 정보 신고</ReportButton>
                        </ReportDiv>
                    </MainHeadDiv>
                    <hr></hr>
                    <ContentContainer>
                        {selectedItem && (
                            <A
                                onClick={() => {
                                    navigate(`/wiki_detail`, { state: { selectedItem } });
                                }}
                            >
                                {selectedItem.building_name} {selectedItem.floor}층 {selectedItem.loc_num}호 {selectedItem.location}
                            </A>
                        )}
                        {selectedBuilding && (
                            <A
                                onClick={() => {
                                    navigate(`/wiki_detail`, { state: { selectedBuilding } });
                                }}
                            >
                                {selectedBuilding}{' '}
                            </A>
                        )}
                    </ContentContainer>
                </MainContainer>
            </Main>
        </>
    );
};

export default WikiHome;
