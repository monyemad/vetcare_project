import React, { useState } from 'react';

const PetInformation = () => {
  const [name, setName] = useState('');
  const [address, setAddress] = useState('');
  const [phone, setPhone] = useState('');
  const [location, setLocation] = useState('');
  const [animalType, setAnimalType] = useState('');
  const [animalAge, setAnimalAge] = useState('');
  const [animalWeight, setAnimalWeight] = useState('');

  const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    console.log({
      name,
      address,
      phone,
      location,
      animalType,
      animalAge,
      animalWeight,
    });
  };

  return (
    <div className="max-w-2xl mx-auto p-6 bg-white rounded-lg shadow-md">
      <h2 className="text-3xl font-bold text-center mb-8">Pet Information</h2>
      <form onSubmit={handleSubmit} className="flex flex-col gap-4">
        <div className="flex flex-col gap-2">
          <label className="text-lg font-bold" htmlFor="name">
            Name:
          </label>
          <input
            className="p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            id="name"
            type="text"
            value={name}
            onChange={(e) => setName(e.target.value)}
            placeholder="Enter your name"
          />
        </div>
        <div className="flex flex-col gap-2">
          <label className="text-lg font-bold" htmlFor="address">
            Address:
          </label>
          <input
            className="p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            id="address"
            type="text"
            value={address}
            onChange={(e) => setAddress(e.target.value)}
            placeholder="Enter your address"
          />
        </div>
        <div className="flex flex-col gap-2">
          <label className="text-lg font-bold" htmlFor="phone">
            Phone:
          </label>
          <input
            className="p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            id="phone"
            type="text"
            value={phone}
            onChange={(e) => setPhone(e.target.value)}
            placeholder="Enter your phone"
          />
        </div>
        <div className="flex flex-col gap-2">
          <label className="text-lg font-bold" htmlFor="location">
            Location:
          </label>
          <input
            className="p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            id="location"
            type="text"
            value={location}
            onChange={(e) => setLocation(e.target.value)}
            placeholder="Enter your location"
          />
        </div>
        <div className="flex flex-col gap-2">
          <label className="text-lg font-bold" htmlFor="animalType">
            Animal type:
          </label>
          <select
            className="p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            id="animalType"
            value={animalType}
            onChange={(e) => setAnimalType(e.target.value)}
          >
            <option value="">Select Animal Type</option>
            <option value="Dog">Dog</option>
            <option value="Cat">Cat</option>
            <option value="Other">Other</option>
          </select>
        </div>
        <div className="flex flex-col gap-2">
          <label className="text-lg font-bold" htmlFor="animalAge">
            Animal age:
          </label>
          <input
            className="p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            id="animalAge"
            type="text"
            value={animalAge}
            onChange={(e) => setAnimalAge(e.target.value)}
            placeholder="Animal age"
          />
        </div>
        <div className="flex flex-col gap-2">
          <label className="text-lg font-bold" htmlFor="animalWeight">
            Animal weight:
          </label>
          <input
            className="p-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            id="animalWeight"
            type="text"
            value={animalWeight}
            onChange={(e) => setAnimalWeight(e.target.value)}
            placeholder="Animal weight"
          />
        </div>
        <button
          className="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
          type="submit"
        >
          Submit
        </button>
      </form>
    </div>
  );
};

export default PetInformation;
