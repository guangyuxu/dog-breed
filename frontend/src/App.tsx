import React, { useState } from 'react';
import './App.css';
import Header from './Header/Header';
import BreedList from './BreedList/BreedList';
import UploadImage from './UploadImage/UploadImage';


export default function App() {
  const [selectedBreeds, setSelectedBreeds] = useState<string[]>([])
  function setBreeds(breeds: string[]) {
    setSelectedBreeds(breeds);
  }
  return (
    <div className="App">
      <Header />
      <BreedList selectedBreeds={selectedBreeds}/>
      <UploadImage setBreeds={setBreeds}/>
    </div>
  );
}
