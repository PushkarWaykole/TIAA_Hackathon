'use client';
import ExampleButton from './ExampleButton'
const Sample = ({age,gender,income}) => {
  return (
    <div>
        <ExampleButton age={age} gender={gender} income={income}/>
    </div>
  )
}

export default Sample