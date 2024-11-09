import React, { useState } from "react";

const TeslaDashboard = () => {
  const [image, setImage] = useState(null);
  const [text, setText] = useState("");

  const handleImageChange = (e) => {
    setImage(URL.createObjectURL(e.target.files[0]));
  };

  const handleTextChange = (e) => {
    setText(e.target.value);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    // For now, just log the inputs
    console.log("Image:", image);
    console.log("Text:", text);
  };

  return (
    <div className="container mx-auto p-4">
      <h1 className="text-2xl font-bold mb-4">Trader XAI</h1>
      <form onSubmit={handleSubmit} className="space-y-4">
        <div>
          <label className="block text-sm font-medium text-gray-700">
            Upload Image
          </label>
          <input
            type="file"
            accept="image/*"
            onChange={handleImageChange}
            className="mt-1 block w-full"
          />
        </div>
        <div>
          <label className="block text-sm font-medium text-gray-700">
            Text Input
          </label>
          <textarea
            value={text}
            onChange={handleTextChange}
            className="mt-1 block w-full border border-gray-300 rounded-md shadow-sm"
            rows="4"
          />
        </div>
        <button
          type="submit"
          className="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600"
        >
          Analyze
        </button>
      </form>
      {image && (
        <div className="mt-4">
          <h2 className="text-xl font-bold">Uploaded Image</h2>
          <img src={image} alt="Uploaded" className="mt-2 max-w-full h-auto" />
        </div>
      )}
      {text && (
        <div className="mt-4 p-4 bg-gray-100 rounded-md">
          <h2 className="text-xl font-bold">Text Input</h2>
          <p>{text}</p>
        </div>
      )}
    </div>
  );
};

export default TeslaDashboard;
