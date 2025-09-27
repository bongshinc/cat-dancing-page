import React, { useState } from 'react';
import './DancingCat.css';

const DancingCat = () => {
  const [isDancing, setIsDancing] = useState(false);

  const toggleDance = () => {
    setIsDancing(!isDancing);
  };

  return (
    <div className="dancing-cat-container">
      <h1>🐱 댄싱 캣 🐱</h1>

      <div className={`cat ${isDancing ? 'dancing' : ''}`}>
        <div className="cat-face">
          <div className="cat-ear left"></div>
          <div className="cat-ear right"></div>
          <div className="cat-eye left"></div>
          <div className="cat-eye right"></div>
          <div className="cat-nose"></div>
          <div className="cat-mouth"></div>
        </div>
        <div className="cat-body">
          <div className="cat-paw front-left"></div>
          <div className="cat-paw front-right"></div>
          <div className="cat-paw back-left"></div>
          <div className="cat-paw back-right"></div>
        </div>
        <div className="cat-tail"></div>
      </div>

      <button
        onClick={toggleDance}
        className={`dance-button ${isDancing ? 'active' : ''}`}
      >
        {isDancing ? '🛑 멈추기' : '💃 춤추기'}
      </button>

      <p className="instructions">
        버튼을 클릭해서 고양이를 춤추게 해보세요!
      </p>
    </div>
  );
};

export default DancingCat;