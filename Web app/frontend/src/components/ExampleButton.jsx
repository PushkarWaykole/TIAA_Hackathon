// components/ExampleButton.js
'ue client';
import { useState } from 'react';

const ExampleButton = ({age,gender,income}) => {
  const [apiData, setApiData] = useState(null);
  
  const handleClick = async () => {
    try {
        const data={
            "age":age,
            "gender":gender,
            "income":income,
          }
        const response = await fetch('http://localhost:5000/suggest', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ requestBody: data }),
      });

      const res_data = await response.json();
      setApiData(res_data);
    } catch (error) {
      console.error('Error making POST request to Flask server:', error);
    }
  };
  
  return (
    <div>
      <button className="text-2xl text-black font-bold" onClick={handleClick}>Click to get stock suggestions</button>
      {apiData && <div className="text-2xl text-black">
        
      <div>
      {apiData.map((bucket, index) => (
        <div key={index}>
          <h2 className="font-bold mt-3">Bucket {index + 1}:</h2>
          <div className="bg-gray-300 p-2 rounded-lg">
            {bucket.map((company, companyIndex) => (
              <div key={companyIndex}>{company.replace(/'/g, '').replace(/\[|\]/g, '')}</div>
            ))}
          </div>
        </div>
      ))}
    </div>

        
        </div>}
    </div>
  );
};

export default ExampleButton;
