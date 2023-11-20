// components/ExampleButton.js
'ue client';
import { useState } from 'react';

const AI = ({age,savingsBalance,annualIncome,annualExpense,investmentExperience,investmentTimeHorizon}) => {
    const [apiData, setApiData] = useState(null);
    const extractPlainText = (apiResponse) => {
        const messages = apiResponse.data.messages;
        let plainText = '';
      
        messages.forEach((message) => {
          plainText += message.content + '\n';
        });
      
        return plainText.trim(); // Remove trailing newline if needed
      };
    const handleClick = async () => {
        try {
            const data = {
                "age": age,
                "savingsBalance": savingsBalance,
                "annualIncome": annualIncome,
                "annualExpense": annualExpense,
                "investmentExperience": investmentExperience,
                "investmentTimeHorizon": investmentTimeHorizon,
            }
            const response = await fetch('http://localhost:5000/api_res', {
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
            <button className="text-2xl text-black font-bold" onClick={handleClick}>Click here to get the AI generated Stocks recommendations</button>
            {apiData && <div className="text-sm text-black">
                {apiData.replace(/\*\*/g, '')}
            </div>}
        </div>
    );
};

export default AI;
