import React, { useState } from 'react'
import Sample2 from '@/components/Sample2'
const Form = ({ age }) => {
  const [savingsBalance, setSavingsBalance] = useState('');
  const [annualIncome, setAnnualIncome] = useState('');
  const [annualExpense, setAnnualExpense] = useState('');
  const [investmentExperience, setInvestmentExperience] = useState('');
  const [investmentTimeHorizon, setInvestmentTimeHorizon] = useState('');
  const [submitted, setSubmitted] = useState(false)
  const handleSubmit = (e) => {
    setSubmitted(true);
    e.preventDefault();


  };
  return (
    <div className="flex items-center justify-center bg-[url('https://images.unsplash.com/photo-1579546929518-9e396f3cc809?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c21vb3RoJTIwYmFja2dyb3VuZCUyMGdyYWRpZW50c3xlbnwwfHwwfHx8MA%3D%3D')] h-screen w-full overflow-hidden rounded-none bg-transparent bg-cover bg-center gap-10">
      <form onSubmit={handleSubmit} className="max-w-md mx-auto my-8 bg-white p-6 rounded-md shadow-md text-black flex items-center justify-center flex-col">


        <div className="block mb-4 text-center text-center text-center">
          Savings Account Balance:
          <input
            type="number"
            value={savingsBalance}
            onChange={(e) => setSavingsBalance(e.target.value)}
            className="border border-gray-300 focus:outline-none focus:border-black p-2 rounded-md"
          />
        </div>
        <div className="block mb-4 text-center text-center">
          Annual Income Balance:
          <input
            type="number"
            value={annualIncome}
            onChange={(e) => setAnnualIncome(e.target.value)}
            className="border border-gray-300 focus:outline-none focus:border-black p-2 rounded-md"
          />
        </div>
        <div className="block mb-4 text-center text-center">
          Annual Expense
          <input
            type="number"
            value={annualExpense}
            onChange={(e) => setAnnualExpense(e.target.value)}
            className="border border-gray-300 focus:outline-none focus:border-black p-2 rounded-md"
          />
        </div>
        <div className="block mb-4 text-center text-center">
          Investment Experience(in years)
          <input
            type="number"
            value={investmentExperience}
            onChange={(e) => setInvestmentExperience(e.target.value)}
            className="border border-gray-300 focus:outline-none focus:border-black p-2 rounded-md"
          />
        </div>
        <div className="block mb-4 text-center text-center">
          Investment Time Horizon
          <input
            type="number"
            value={investmentTimeHorizon}
            onChange={(e) => setInvestmentTimeHorizon(e.target.value)}
            className="border border-gray-300 focus:outline-none focus:border-black p-2 rounded-md"
          />
        </div>
        <button
          type="submit"
          className="bg-black text-white py-2 px-4 rounded-md hover:bg-blue-700 focus:outline-none focus:shadow-outline-blue active:bg-blue-800"
        >
          Submit
        </button>
      </form>

      {submitted && (
        <Sample2
          age={age} savingsBalance={savingsBalance} annualExpense={annualExpense} annualIncome={annualIncome} investmentExperience={investmentExperience} investmentTimeHorizon={investmentTimeHorizon}
        />

    )}
    </div>
  )
}

export default Form