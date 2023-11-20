import React,{useState} from 'react'

const Form = () => {
    const [savingsBalance, setSavingsBalance] = useState('');
    const [annualIncome, setAnnualIncome] = useState('');
    const [annualExpense, setAnnualExpense] = useState('');
    const [investmentExperience, setInvestmentExperience] = useState('');
    const [investmentTimeHorizon, setInvestmentTimeHorizon] = useState('');
    const handleSubmit = (e) => {
        e.preventDefault();
    
        // You can use the state values as needed (e.g., send them to an API, store in Redux, etc.)
        console.log({
          
          savingsBalance,
          annualIncome,
          annualExpense,
          investmentExperience,
          investmentTimeHorizon,
        });
      };
  return (
    <div className=" flex items-center justify-center bg-[url('https://images.unsplash.com/photo-1579546929518-9e396f3cc809?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c21vb3RoJTIwYmFja2dyb3VuZCUyMGdyYWRpZW50c3xlbnwwfHwwfHx8MA%3D%3D')] h-screen w-full overflow-hidden rounded-none bg-transparent bg-cover bg-center gap-10">
        <form onSubmit={handleSubmit} className="max-w-md mx-auto my-8 bg-white p-6 rounded-md shadow-md text-black">
      

      <div className="block mb-4">
        Savings Account Balance:
        <input
          type="number"
          value={savingsBalance}
          onChange={(e) => setSavingsBalance(e.target.value)}
          className="form-input mt-1 block w-full rounded-md border-gray-300"
        />
      </div>
      <div className="block mb-4">
      Annual Income Balance:
        <input
          type="number"
          value={annualIncome}
          onChange={(e) => setSavingsBalance(e.target.value)}
          className="form-input mt-1 block w-full rounded-md border-gray-300"
        />
      </div>
      <div className="block mb-4">
      Annual Expense
        <input
          type="number"
          value={annualExpense}
          onChange={(e) => setSavingsBalance(e.target.value)}
          className="form-input mt-1 block w-full rounded-md border-gray-300"
        />
      </div>
      <div className="block mb-4">
      Investment Experience(in years)
        <input
          type="number"
          value={investmentExperience}
          onChange={(e) => setSavingsBalance(e.target.value)}
          className="form-input mt-1 block w-full rounded-md border-gray-300"
        />
      </div>
      <div className="block mb-4">
      Investment TimeHorizon
        <input
          type="number"
          value={investmentTimeHorizon}
          onChange={(e) => setSavingsBalance(e.target.value)}
          className="form-input mt-1 block w-full rounded-md border-gray-300"
        />
      </div>
      <button
        type="submit"
        className="bg-blue-500 text-white py-2 px-4 rounded-md hover:bg-blue-700 focus:outline-none focus:shadow-outline-blue active:bg-blue-800"
      >
        Submit
      </button>
    </form>

    </div>
  )
}

export default Form