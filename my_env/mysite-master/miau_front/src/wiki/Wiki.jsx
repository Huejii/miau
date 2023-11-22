import React, { useState, useEffect } from 'react';
import styled from 'styled-components';
import { useLocation } from 'react-router-dom';
import axios from 'axios';

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

const EditButton = styled.button`
    padding: 8px 12px;
    margin-right: 5px;
    border: none;
    background: #2a55a0;
    color: white;
    cursor: pointer;
    border-radius: 5px;
    box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.1);
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

const SaveButton = styled.button`
    padding: 8px 12px;
    margin-right: 5px;
    border: none;
    background: #006400;
    color: white;
    cursor: pointer;
    border-radius: 5px;
    box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.1);
`;

const TextArea = styled.textarea`
    width: 100%;
    // min-height : 300px;
    padding: 10px;
    border: none;
    resize: vertical;
    ${({ disabled }) =>
        disabled
            ? `
                background-color: white;
            `
            : `
                background-color: #eeeee7; /* 수정 모드일 때 원하는 색상으로 변경 */
            `}
`;

const LectureTextArea = styled.textarea`
    width: 100%;
    min-height: 300px;
    padding: 10px;
    border: none;
    resize: vertical;
    background-color: white;
`;

const ModalOverlay = styled.div`
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 9999;
`;

const ModalContent = styled.div`
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    border: 1px solid lightgray;
`;

const ModalHeader = styled.div`
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 10px;
`;

const ModalTitle = styled.h2`
    padding: 5px;
    color: rgba(0, 52, 92, 255);
    font-weight: 600;
    margin-bottom: 0 0 10px 0;
    border-bottom: 1px solid black;
`;

const ModalBody = styled.div`
    margin-bottom: 20px;
`;

const P = styled.p`
    font-weight: 300;
`;

const ReportText = styled.textarea`
    width: 250px;
    height: 50px;
    padding: 10px;
    resize: vertical;
    margin: 15px auto 0 auto;
    ${({ invalid }) =>
        invalid &&
        `
    `}
`;

const ModalFooter = styled.div`
    display: flex;
    justify-content: flex-end;
`;

const ModalButton = styled.button`
    padding: 8px 12px;
    margin-left: 10px;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.1);
`;

const Wiki = () => {
    const [content, setContent] = useState('');
    const [wikiContent, setWikiContent] = useState('');
    const [lectureContent, setLectureContent] = useState('');
    const [floorInfo, setFloorInfo] = useState('');
    const [campusInfo, setCampusInfo] = useState('');
    const [users, setUsers] = useState('');
    const [builtDate, setBuiltDate] = useState('');

    const location = useLocation();
    let response = null;
    let newContent = ``;
    let newWiki = ``;
    const [selectedItem, setSelectedItem] = useState(location.state?.selectedItem);
    const [selectedBuilding, setSelectedBuilding] = useState(location.state?.selectedBuilding);

    const [isEditing, setIsEditing] = useState(false);
    const [selectedReports, setSelectedReports] = useState([]);
    const [invalidSubmission, setInvalidSubmission] = useState(false);
    const [reportText, setReportText] = useState('');

    const handleEditClick = () => {
        setIsEditing(true);
    };

    const handleSaveClick = async () => {
        setIsEditing(false);
        console.log('저장:', wikiContent);
        try {
            if (selectedItem) {
                const wikiData = { wiki: wikiContent };
                await axios.put(`http://127.0.0.1:8000/place/${selectedItem.id}/wiki/`, wikiData);
                console.log('위키 데이터 업데이트 성공');
            }
            else if(selectedBuilding) {
                const wikiData = {}
                wikiData["floor_info"] = floorInfo
                wikiData["campus_info"] = campusInfo
                wikiData["users"] = users
                wikiData["built_date"] = builtDate
                console.log("selectedBuilding 데이터:",selectedBuilding)
                if (selectedBuilding === '혜강관'){
                await axios.put(`http://127.0.0.1:8000/buildsdetail/1`, wikiData);
                console.log('건물 위키 데이터 업데이트 성공');}
                else if (selectedBuilding === '중앙도서관'){
                    await axios.put(`http://127.0.0.1:8000/buildsdetail/2`, wikiData);
                    console.log('건물 위키 데이터 업데이트 성공');
                }
                else if (selectedBuilding === '팔달관'){
                    await axios.put(`http://127.0.0.1:8000/buildsdetail/3`, wikiData);
                    console.log('건물 위키 데이터 업데이트 성공');
                }
            }
        } catch (error) {
            console.error(error);
        }
        setWikiContent(wikiContent);
    };

    useEffect(() => {
        const fetchWikiContent = async () => {
            try {
                setWikiContent('');
                if (selectedItem) {
                    response = await axios.get(`http://127.0.0.1:8000/place/${selectedItem.id}/wiki/`);
                    setWikiContent(response.data.wiki);
                } else if (selectedBuilding) {
                    setContent('');
                    let newWikiContent = `${content}`;
                    if (selectedBuilding === '혜강관') {
                        response = await axios.get(`http://127.0.0.1:8000/buildsdetail/1`);
                        console.log(response.data.floor_info);
                    } else if (selectedBuilding === '중앙도서관') {
                        response = await axios.get(`http://127.0.0.1:8000/buildsdetail/2`);
                    } else if (selectedBuilding === '팔달관') {
                        response = await axios.get(`http://127.0.0.1:8000/buildsdetail/3`);
                    }
                    
                    setFloorInfo(response.data.floor_info);
                    setCampusInfo(response.data.campus_info);
                    setUsers(response.data.users);
                    setBuiltDate(response.data.built_date);
                    console.log("newWikiContent", newWikiContent);
                }
            } catch (error) {
                console.error(error);
            }
        };

        const fetchLectureContent = async () => {
            try {
                setLectureContent('');
                let newLecContent = `${lectureContent}`;
                if (selectedItem) {
                    response = await axios.get(`http://127.0.0.1:8000/place/${selectedItem.id}/wiki/`);
                    if (response.data.lecture !== null) {
                        if (response.data.lecture['mon'][0] !== '') {
                            newLecContent = `${newLecContent}\n\n[월요일 강의정보]`;
                            for (let i = 0; i < response.data.lecture['mon'].length; i++) {
                                newLecContent = `${newLecContent}\n${response.data.lecture['mon_time'][i]}`;
                                newLecContent = `${newLecContent}: ${response.data.lecture['mon'][i]}`;
                            }
                        }
                        if (response.data.lecture['tue'][0] !== '') {
                            newLecContent = `${newLecContent}\n\n[화요일 강의정보]`;
                            for (let i = 0; i < response.data.lecture['tue'].length; i++) {
                                newLecContent = `${newLecContent}\n${response.data.lecture['tue_time'][i]}`;
                                newLecContent = `${newLecContent}: ${response.data.lecture['tue'][i]}`;
                            }
                        }
                        if (response.data.lecture['wed'][0] !== '') {
                            newLecContent = `${newLecContent}\n\n[수요일 강의정보]`;
                            for (let i = 0; i < response.data.lecture['wed'].length; i++) {
                                newLecContent = `${newLecContent}\n${response.data.lecture['wed_time'][i]}`;
                                newLecContent = `${newLecContent}: ${response.data.lecture['wed'][i]}`;
                            }
                        }
                        if (response.data.lecture['thr'][0] !== '') {
                            newLecContent = `${newLecContent}\n\n[목요일 강의정보]`;
                            for (let i = 0; i < response.data.lecture['thr'].length; i++) {
                                newLecContent = `${newLecContent}\n${response.data.lecture['thr_time'][i]}`;
                                newLecContent = `${newLecContent}: ${response.data.lecture['thr'][i]}`;
                            }
                        }
                        if (response.data.lecture['fri'][0] !== '') {
                            newLecContent = `${newLecContent}\n\n[금요일 강의정보]`;
                            for (let i = 0; i < response.data.lecture['fri'].length; i++) {
                                newLecContent = `${newLecContent}\n${response.data.lecture['fri_time'][i]}`;
                                newLecContent = `${newLecContent}: ${response.data.lecture['fri'][i]}`;
                            }
                        }
                        if (response.data.lecture['sat'][0] !== '') {
                            newLecContent = `${newLecContent}\n\n[토요일 강의정보]`;
                            for (let i = 0; i < response.data.lecture['sat'].length; i++) {
                                newLecContent = `${newLecContent}\n${response.data.lecture['sat_time'][i]}`;
                                newLecContent = `${newLecContent}: ${response.data.lecture['sat'][i]}`;
                            }
                        }
                    }
                    setLectureContent(newLecContent);
                }
            } catch (error) {
                console.error(error);
            }
        };

        fetchWikiContent();
        fetchLectureContent();
    }, []);

    const [isModalOpen, setIsModalOpen] = useState(false);

    const handleReportClick = () => {
        setIsModalOpen(true);
    };

    const handleCloseModal = () => {
        setIsModalOpen(false);
    };
    const handleFinalSubmit = async () => {
        if (selectedReports.length === 0 || reportText.trim() === '') {
            alert('신고 내용을 작성하고 제출해주세요!');
            setInvalidSubmission(true);
        } else {
            try {
                const reportData = {
                    report_title: selectedReports.join(''),
                    report_contents: reportText.trim()
                };
                if(selectedBuilding)
                {
                    if (selectedBuilding === '혜강관'){
                        await axios.post(`http://127.0.0.1:8000/report/1`, reportData); // 서버 주소를 적절히 변경해야 합니다.
                        console.log('건물 위키 데이터 업데이트 성공');}
                        else if (selectedBuilding === '중앙도서관'){
                            await axios.post(`http://127.0.0.1:8000/report/2`, reportData); // 서버 주소를 적절히 변경해야 합니다.
                            console.log('건물 위키 데이터 업데이트 성공');
                        }
                        else if (selectedBuilding === '팔달관'){
                            await axios.post(`http://127.0.0.1:8000/report/3`, reportData); // 서버 주소를 적절히 변경해야 합니다.
                            console.log('건물 위키 데이터 업데이트 성공');
                        }
                }else if(selectedItem){
                await axios.post(`http://127.0.0.1:8000/report/${selectedItem.id}`, reportData); // 서버 주소를 적절히 변경해야 합니다.
                }        
                setSelectedReports([]);
                setReportText('');
                setInvalidSubmission(false);
                handleCloseModal();
            } catch (error) {
                console.error(error);
            }
        }
    };

    const handleReportOptionClick = (report) => {
        setSelectedReports((prevReports) => {
            if (prevReports.includes(report)) {
                return prevReports.filter((r) => r !== report);
            } else {
                return [...prevReports, report];
            }
        });
    };

    return (
        <>
            <ModalOverlay style={{ display: isModalOpen ? 'flex' : 'none' }}>
                <ModalContent>
                    <ModalHeader>
                        <ModalTitle>잘못된 정보 신고</ModalTitle>
                    </ModalHeader>
                    <ModalBody>
                        <P>
                            <label>
                                <input
                                    type="checkbox"
                                    checked={selectedReports.includes('부적절한 언어/폭언')}
                                    onChange={() => handleReportOptionClick('부적절한 언어/폭언')}
                                />
                                부적절한 언어/폭언
                            </label>
                        </P>
                        <P>
                            <label>
                                <input
                                    type="checkbox"
                                    checked={selectedReports.includes('잘못된 내용 기재')}
                                    onChange={() => handleReportOptionClick('잘못된 내용 기재')}
                                />
                                잘못된 내용 기재
                            </label>
                        </P>
                        <P>
                            <label>
                                <input
                                    type="checkbox"
                                    checked={selectedReports.includes('장소와 상관없는 내용')}
                                    onChange={() => handleReportOptionClick('장소와 상관없는 내용')}
                                />
                                장소와 상관없는 내용
                            </label>
                        </P>
                        <ReportText
                            value={reportText}
                            onChange={(e) => setReportText(e.target.value)}
                            invalid={invalidSubmission}
                        ></ReportText>
                    </ModalBody>
                    <ModalFooter>
                        <ModalButton onClick={handleCloseModal}>취소</ModalButton>
                        <ModalButton
                            style={{ backgroundColor: 'black', color: 'white' }}
                            onClick={() => {
                                if (window.confirm('제출하시겠습니까?')) {
                                    handleFinalSubmit();
                                }
                            }}
                        >
                            제출
                        </ModalButton>
                    </ModalFooter>
                </ModalContent>
            </ModalOverlay>
            <HeadContainer>
                <HeadWrapper>
                    <H2>Miki</H2>
                    {/* <SearchlistContainer>
                        <SearchBarWrapper>
                            <SearchInput />
                            <SearchButton>검색</SearchButton>
                        </SearchBarWrapper>
                    </SearchlistContainer> */}
                </HeadWrapper>
            </HeadContainer>
            <Main>
                <MainContainer>
                    <MainHeadDiv>
                        {selectedItem && (
                            <H1>{`${selectedItem.building_name} ${selectedItem.floor}층 ${selectedItem.loc_num}호 ${selectedItem.location}`}</H1>
                        )}
                        {selectedBuilding && <H1>{`${selectedBuilding}`} </H1>}
                        <ReportDiv>
                            {isEditing ? (
                                <>
                                    <SaveButton onClick={handleSaveClick}>저장</SaveButton>
                                    <ReportButton onClick={handleReportClick}>잘못된 정보 신고</ReportButton>
                                </>
                            ) : (
                                <>
                                    <EditButton onClick={handleEditClick}>수정</EditButton>
                                    <ReportButton onClick={handleReportClick}>잘못된 정보 신고</ReportButton>
                                </>
                            )}
                        </ReportDiv>
                    </MainHeadDiv>
                    <hr></hr>
                    {selectedBuilding && (
                        <>
                    <ContentContainer>
                        <h2>층별 정보</h2>
                        <hr/>
                        <TextArea
                            style= {{height:'200px'}}
                            value={floorInfo}
                            onChange={(e) => setFloorInfo(e.target.value)}
                            disabled={!isEditing}
                            placeholder="위키를 사용하세요"
                        />
                        <h2>건물정보</h2>
                        <hr/>
                        <TextArea
                            value={campusInfo}
                            style={{height : '100px'}}
                            onChange={(e) => setCampusInfo(e.target.value)}
                            disabled={!isEditing}
                            placeholder="위키를 사용하세요"
                        />
                        {/* {users !== ''&&
                        <> */}
                        <h2>소속 단과대학</h2>
                        <hr/>
                        <TextArea
                            value={users}
                            onChange={(e) => setUsers(e.target.value)}
                            disabled={!isEditing}
                            placeholder="위키를 사용하세요"
                        />
                        {/* </>
                            } */}
                        <h2>준공날짜</h2>
                        <hr/>
                        <TextArea
                            value={builtDate}
                            onChange={(e) => setBuiltDate(e.target.value)}
                            disabled={!isEditing}
                            placeholder="위키를 사용하세요"
                        />
                        {lectureContent !== ''&&
                        <>
                            <h2>강의정보</h2>
                            <hr/>
                            <LectureTextArea value={lectureContent} disabled />
                        </>}
                    </ContentContainer>
                    </>)}
                    {selectedItem &&(
                    <ContentContainer>
                        <h2>상세정보</h2>
                        <hr/>
                        <TextArea
                            style= {{height:'200px'}}
                            value={wikiContent}
                            onChange={(e) => setWikiContent(e.target.value)}
                            disabled={!isEditing}
                            placeholder="위키를 사용하세요"
                        />
                        {lectureContent !== ''&&
                        <>
                            <h2>강의정보</h2>
                            <hr/>
                            <LectureTextArea value={lectureContent} disabled />
                        </>}
                    </ContentContainer>
                    
                    )}
                </MainContainer>
            </Main>
        </>
    );
};

export default Wiki;