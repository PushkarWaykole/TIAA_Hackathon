// components/ExampleButton.js
'ue client';
import { useState, useEffect, useRef } from 'react';
import emailjs from "emailjs-com";
const AI = ({ age, savingsBalance, annualIncome, annualExpense, investmentExperience, investmentTimeHorizon }) => {
    const [apiData, setApiData] = useState(null);
    const [showLoader, setShowLoader] = useState(true);
    const form = useRef();

    const sendEmail = (e) => {
        e.preventDefault();

        emailjs
            .sendForm(
                "service_sld8my8",
                "template_qrk7gzs",
                form.current,
                "m33LbOVskhQuSN23e",
            )
            .then(
                (result) => {
                    console.log(result.text);
                },
                (error) => {
                    console.log(error.text);
                }
            );
    };
    useEffect(() => {
        // Set a timeout to hide the loader after 5 seconds
        const timeoutId = setTimeout(() => {
            // Set showLoader to false after 5 seconds
            setShowLoader(false);
        }, 60000);

        // Clean up the timeout to avoid memory leaks
        return () => clearTimeout(timeoutId);
    }, []);

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
    console.log("APi data ", apiData);
    const makeBold = (text) => {
        return text.replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>');
    };
    useEffect(() => {
        handleClick();

    }, [])

    // if(apiData){
    //     const formaatted_text=makeBold(apiData);
    //     setApiData(formaatted_text);
    // }
    return (
        <div>
            {showLoader ? (
                <div className="text-black font-bold text-4xl">
                    Getting Portfolio Recommendation from AI
                </div>
            ) : (
                <div>

                    <div>

                        {apiData && <div className="text-sm text-black bg-white rounded-lg p-2 m-3">
                            <div className="font-bold text-2xl text-center">Response using Google Bard</div>

                            {apiData.replace(/\*\*/g, '').replace(/\*/g, '')}

                        </div>

                        }
                    </div>

                    
                </div>
            )}

        </div>
    );
};

export default AI;
