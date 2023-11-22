import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Home from './Home';
import SearchPage from './SearchPage';
import Wiki from './wiki/Wiki'
import MoreComment from './comment/MoreComment'
import CampusMap from './CampusMap';

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/search" element={<SearchPage />} />
        <Route path="/wiki" element={<Wiki />} />
        <Route path="/comments" element={<MoreComment />} />
        <Route path="/map" element={<CampusMap />} />
      </Routes>
    </Router>
  );
}

export default App;
