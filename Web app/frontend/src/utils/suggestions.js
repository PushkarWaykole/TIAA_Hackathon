
import { getServerSession } from "next-auth";
import { redirect } from "next/navigation";
import User from "@/models/User";
import connect from "@/utils/db";
const suggest = async () => {
    const session = await getServerSession();
 
  if (!session) {
    redirect("/");
  }
  await connect();
  
  const userData = await User.findOne({ email: session?.user?.email });
  
  const age=userData.age;
  const gender=userData.gender;
  const income=userData.income;
  const data={
    "age":age,
    "gender":gender,
    "income":income,
  }
  
  try {
        const response = await fetch('http://localhost:5000/suggest', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ requestBody: data }),
    });
    return response;
  } catch (error) {
    console.log("Error in suggestion");
  }
};

export default suggest;
