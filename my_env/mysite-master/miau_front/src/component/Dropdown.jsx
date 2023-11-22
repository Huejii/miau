import React, { useState } from 'react';
import styled from 'styled-components';

const DropdownWrapper = styled.div`
  margin-bottom: 10px;
  margin-right: 10px;
`;

const DropdownLabel = styled.label`
  margin: 0px 10px 0px 15px;
`;

const DropdownSelect = styled.select`
  padding: 6.5px;
  border: none;
  border-radius: 4px;
  margin-right: 5px;
  box-shadow: inset 0px 0px 3px rgba(0, 0, 0, 0.3);
`;

function Dropdown({ label, options, value, onChange, defaultSelect }) {
    // const [selectedOption, setSelectedOption] = useState('');
  
    // const handleSelect = (e) => {
    //   const option = e.target.value;
    //   setSelectedOption(option);
    //   onSelect(option);
    // };
    return (
      <DropdownWrapper>
        <DropdownLabel>{label}</DropdownLabel>
        <DropdownSelect value={value} onChange={onChange} >
          {defaultSelect &&<option value="">-- Select --</option>}
          {options.map((option, index) => (
            <option key={index} value={option}>
              {option}
            </option>
          ))}
        </DropdownSelect>
      </DropdownWrapper>
    );
  }
  
export default Dropdown;