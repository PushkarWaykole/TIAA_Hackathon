
import AI from '@/components/AI'
import React, { useState, useEffect } from 'react';
const Sample2 = ({ age, savingsBalance, annualIncome, annualExpense, investmentExperience, investmentTimeHorizon }) => {



  return (


   
    <div>

      <AI age={age} savingsBalance={savingsBalance} annualExpense={annualExpense} annualIncome={annualIncome} investmentExperience={investmentExperience} investmentTimeHorizon={investmentTimeHorizon} />

    </div>





  )
}

export default Sample2