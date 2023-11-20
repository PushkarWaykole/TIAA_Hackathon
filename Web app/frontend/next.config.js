/** @type {import('next').NextConfig} */

const nextConfig = {
    reactStrictMode: true,
    env: {
      NEXTAUTH_SECRET:"fsdyfgsdjhg",
    },
    images : { 
      domains : ['cdn.pixabay.com'] 
    }
  };
  
module.exports = nextConfig

