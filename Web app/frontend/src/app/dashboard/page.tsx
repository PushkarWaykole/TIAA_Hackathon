import React from "react";

import { getServerSession } from "next-auth";
import { redirect } from "next/navigation";
import User from "@/models/User";
import connect from "@/utils/db";
import ExampleButton from "@/components/ExampleButton";
import Sample from "@/components/Sample";
import suggestions from "@/utils/suggestions";
import Form1 from '@/components/Form1';
const Dashboard = async () => {
  const session = await getServerSession();

  if (!session) {
    redirect("/");
  }
  await connect();

  const userData = await User.findOne({ email: session?.user?.email });
  const name = userData.name;
  const email = userData.email;
  const age = userData.age;
  const gender = userData.gender;
  const income = userData.income;
 
  const data = {
    age: age,
    gender: gender,
    income: income,
  };
  
  let res_data = await suggestions();
  console.log("response ", res_data);
  let img_link="";
  if(gender=="Male"){
    img_link="https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&amp;ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&amp;auto=format&amp;fit=crop&amp;w=1480&amp;q=80"
  }
  else{
    img_link="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRROt7YUKa7excpJt4CR59ZwHzhWDfV1mr0eQ&usqp=CAU"
  }
  return (
    <>
      <div className=" flex items-center justify-center bg-[url('https://images.unsplash.com/photo-1459257831348-f0cdd359235f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')] h-screen w-full overflow-hidden rounded-none bg-transparent bg-cover bg-center gap-10 ">
        
        <div className="relative grid h-[40rem] w-full max-w-[28rem] flex-col items-end justify-center overflow-hidden rounded-xl bg-white bg-clip-border text-center text-gray-700">
          <div className="absolute inset-0 m-0 h-full w-full overflow-hidden rounded-none bg-transparent bg-[url('https://images.unsplash.com/photo-1593672715438-d88a70629abe?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')] bg-cover bg-clip-border bg-center text-gray-700 shadow-none">
            <div className="absolute inset-0 w-full h-full to-bg-black-10 bg-gradient-to-t from-black/80 via-black/50"></div>
          </div>
          <div className="relative p-6 px-6 py-14 md:px-12">
            <h2 className="mb-6 block font-sans text-4xl font-medium leading-[1.5] tracking-normal text-white antialiased">
              Welcome to your portfolio
            </h2>
            <h5 className="block mb-4 font-sans text-xl antialiased font-semibold leading-snug tracking-normal text-white">
              {name}
            </h5>
            <h5 className="block mb-4 font-sans text-xl antialiased font-semibold leading-snug tracking-normal text-white">
              Your age is: {age}
            </h5>
            <h5 className="block mb-4 font-sans text-xl antialiased font-semibold leading-snug tracking-normal text-white">
              Your annual income is: {income}
            </h5>
            <img
              alt="tania andrew"
              
              src={img_link}
              className="relative inline-block h-[74px] w-[74px] rounded-full border-2 border-white object-cover object-center"
            />
          </div>
        </div>
      <div>

      </div>
        <Sample age={age} gender={gender} income={income} />
      </div>

      <div>
        <Form1 age={age}/>
      </div>
    </>
  );
};

export default Dashboard;
