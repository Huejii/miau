import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router';
import styled from 'styled-components';
import axios from 'axios';

const HeadContainer = styled.div`
    width: 100%;
    position: fixed;
    height: 70px;
    border-bottom: 1px solid gray;
    background-color: white;
    box-shadow: 0px 0px 5px 2px rgba(0, 0, 0, 0.1);
    display: flex;
    justify-content: center;
    z-index: 999;
`;

const HeadWrapper = styled.div`
    width: 1080px;
    display: flex;
    justify-content: space-between;
    align-items: center;
`;

const HomeButton = styled.button`
    display: flex;
    align-items: center;
    width: auto;
    height: auto;
    background-color: rgba(0, 52, 92, 255);
    border-radius: 50%;
    cursor: pointer;
    color: white;
`;

const MainContainer = styled.main`
    padding-top: 260px;
    display: flex;
    justify-content: center;
    height: 100%;
    background-color: white;
`;

const MainWrapper = styled.div`
    display: flex;
    justify-content: center;
    padding: 0 20px;
    background-color: white;
    width: 1080px;
`;

const MainComments = styled.div`
    overflow-y: auto;
`;

const CommentDiv = styled.div`
    display: flex;
    justify-content: center;
`;

const CommentContainer = styled.div`
    position: fixed;
    top: 90px;
    height: 140px;
    width: 1080px;
    display: flex;
    justify-content: center;
    border: 1px solid rgba(0, 0, 0, 0.3);
    border-radius: 20px;
    background: white;
    color: black;
    padding: 10px;
    box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
`;

const CommentWrapper = styled.div`
    padding: 0 0 0 5px;
    height: 100px;
    width: 100%;
`;

const CategorySelectWrapper = styled.div`
    display: flex;
    justify-content: flex-start;
`;

const CommentTextAndSubmitWrapper = styled.div`
    padding: 5px;
    display: flex;
    justify-content: center;
    align-items: center;
`;
const CommentInputText = styled.textarea.attrs({
    type: 'comment',
    placeholder: '댓글을 작성해보세요!',
})`
    border: none;
    font-size: 1rem;
    height: 70px;
    width: 100%;
    border-radius: 8px;
    padding: 0 10px;
    margin: 0 10px;
    white-space: pre-wrap;
`;

const CommentInputButton = styled.button`
    height: 43px;
    width: 70px;
    background: rgba(0, 52, 92, 255);
    font-size: 1.1rem;
    color: white;
    border: none;
    border-radius: 50px;
    cursor: pointer;
    box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.1);
`;

const SingleCommentDiv = styled.div`
    display: flex;
    justify-content: space-around;
    padding: 0 10px;
    align-items: center;
    min-height: 50px;
    width: 1060px;
    border-bottom: 0.5px dashed gray;
`;

const CommentHeader = styled.div`
    display: flex;
    justify-content: flex-start;
    color: gray;
    width: 100px;
`;

const CommentContent = styled.div`
    display: flex;
    justify-content: flex-start;
    margin: 0 10px;
    padding: 10px 0;
    width: 100%;
    white-space: pre-wrap;
    word-break: break-word;
    overflow-wrap: break-word;
`;
const BuildingNameDropdown = styled.select`
    width: 85px;
    height: 30px;
    margin: 0 5px;
    border-radius: 5px;
    color: rgba(0, 52, 92, 255);
`;

const PlaceInput = styled.input.attrs({
    placeholder: 'tag:',
})`
    width: 80px;
    height: 25px;
    margin: 0 5px;
    border: 1px solid rgba(0, 52, 92, 255);
    border-radius: 5px;
    color: rgba(0, 52, 92, 255);
`;

const CommentButtons = styled.div`
    display: flex;
    margin-left: auto;
`;

const CommentButton = styled.button`
    margin-left: 10px;
    padding: 5px 10px;
    width: 45px;
    border: none;
    background-color: transparent;
    color: rgba(0, 52, 92, 255);
    cursor: pointer;
`;

const MoreComment = () => {
    const navigate = useNavigate();
    const [comments, setComments] = useState([]);
    const [buildingName, setBuildingName] = useState('');
    const [roomNumber, setRoomNumber] = useState('');
    const [commentText, setCommentText] = useState('');

    // 댓글 가져오기
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

    const handleCommentDelete = async (id) => {
        try {
            console.log(id);
            await axios.delete(`http://127.0.0.1:8000/comments/${id}`);
            const updatedComments = comments.filter((comment) => comment.id !== id);
            setComments(updatedComments);
        } catch (error) {
            console.error(error);
        }
    };

    const handleCommentEdit = async (id, newText) => {
        try {
            console.log(id, newText);
            const updatedComment = { comment: newText };
            await axios.put(`http://127.0.0.1:8000/comments/${id}`, updatedComment);
            const updatedComments = comments.map((comment) => {
                if (comment.id === id) {
                    return { ...comment, comment: newText };
                }
                return comment;
            });
            setComments(updatedComments);
        } catch (error) {
            console.error(error);
        }
    };

    return (
        <>
            <HeadContainer>
                <HeadWrapper>
                    <HomeButton
                        onClick={() => {
                            navigate('/');
                        }}
                    >
                        <h3>MiAU</h3>
                    </HomeButton>
                    <button
                        style={{ background: 'none', border: 'none', cursor: 'pointer' }}
                        onClick={() => {
                            navigate('/comments');
                        }}
                    >
                        <h3>댓글 모아보기</h3>
                    </button>
                </HeadWrapper>
            </HeadContainer>
            <CommentDiv>
                <CommentContainer>
                    <CommentWrapper>
                        <CategorySelectWrapper>
                            <BuildingNameDropdown value={buildingName} onChange={(e) => setBuildingName(e.target.value)}>
                                <option value="">건물 선택</option>
                                <option value="혜강관">혜강관</option>
                                <option value="팔달관">팔달관</option>
                                <option value="중앙도서관">중앙도서관</option>
                            </BuildingNameDropdown>
                            <PlaceInput value={roomNumber} onChange={(e) => setRoomNumber(e.target.value)}></PlaceInput>
                        </CategorySelectWrapper>
                        <hr />
                        <CommentTextAndSubmitWrapper>
                            <CommentInputText value={commentText} onChange={(e) => setCommentText(e.target.value)} />
                            <CommentInputButton onClick={handleCommentSubmit}>등록</CommentInputButton>
                        </CommentTextAndSubmitWrapper>
                    </CommentWrapper>
                </CommentContainer>
            </CommentDiv>
            <MainContainer>
                <MainWrapper>
                    <MainComments>
                        {comments.map((comment) => (
                            <SingleCommentDiv key={comment.id}>
                                <CommentHeader>
                                    {comment.building_name} {comment.tag}
                                </CommentHeader>
                                <CommentContent>{comment.comment}</CommentContent>
                                <CommentButtons>
                                    <CommentButton
                                        onClick={() => {
                                            const newText = prompt('댓글을 수정하세요:', comment.comment);
                                            if (newText !== null && newText !== '' && newText !== comment.comment) {
                                                handleCommentEdit(comment.id, newText);
                                            }
                                        }}
                                    >
                                        수정
                                    </CommentButton>
                                    <CommentButton
                                        onClick={() => {
                                            if (window.confirm('댓글을 삭제하시겠습니까?')) {
                                                handleCommentDelete(comment.id);
                                            }
                                        }}
                                    >
                                        삭제
                                    </CommentButton>
                                </CommentButtons>
                            </SingleCommentDiv>
                        ))}
                    </MainComments>
                </MainWrapper>
            </MainContainer>
        </>
    );
};

export default MoreComment;
