"use client";
import React from "react";
import Link from "next/link";
import { signOut, useSession } from "next-auth/react";
import Image from "next/image";

const Navbar = () => {
  const { data: session }: any = useSession();
  console.log("navbar session ",session);
  return (
    <div className='w-full h-full border-b-2 border-solid border-gray-500 rounded-b-lg'>
      <ul className="flex justify-between m-3 item-center ">
      <div className="h-[1rem]">
          <Link href="/">
            <Image src='https://github.com/PushkarWaykole/TIAA_Hackathon/blob/main/Web%20app/frontend/src/components/logo.jpg?raw=true' width={100} height={130} alt="logo" />
          </Link>
        </div>
        <div>
          <Link href="/">
            <li className="font-bold text-2xl">Home</li>
          </Link>
        </div>
        
        <div className="flex gap-6">
          
          {!session ? (
            <>
              <Link href="/login">
                <li className="font-bold text-2xl">Login</li>
              </Link>
              <Link href="/register">
                <li className="font-bold text-2xl">Register</li>
              </Link>
            </>
          ) : (
            <>
            <li>
            <img
            className="object-cover w-full h-9 rounded-full"
            src="https://static.vecteezy.com/system/resources/thumbnails/002/534/006/small/social-media-chatting-online-blank-profile-picture-head-and-body-icon-people-standing-icon-grey-background-free-vector.jpg"
            alt="Card Image"
            
          />
            </li>
              <div className="flex justify-center items-center"> {session.user?.email}</div>
              <li>

                <button
                  onClick={() => {
                    signOut();
                  }}
                  className="p-2 px-5 -mt-1 bg-blue-800 rounded-full"
                >
                  Logout
                </button>
              </li>
            </>
          )}
        </div>
      </ul>
    </div>
  );
};

export default Navbar;
