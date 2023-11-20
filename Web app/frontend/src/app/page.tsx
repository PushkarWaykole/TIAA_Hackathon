import Image from "next/image";
import Head from "next/head";

export default function Home() {
  return ( <>
  
    <div className="px-4 py-12 mx-auto max-w-7xl sm:px-6 md:px-12 lg:px-24 lg:py-24">
      <div className="flex flex-wrap items-center mx-auto ">
        <div className="w-full lg:max-w-lg lg:w-1/2 rounded-xl">
          <div>
            <div className="relative w-full max-w-lg">
              <div className="absolute top-0 rounded-full bg-violet-300 -left-4 w-72 h-72 mix-blend-multiply filter blur-xl opacity-70 animate-blob"></div>

              <div className="absolute rounded-full bg-fuchsia-300 -bottom-24 right-20 w-72 h-72 mix-blend-multiply filter blur-xl opacity-70 animate-blob animation-delay-4000"></div>
              <div className="relative">
                <img
                  className="object-cover object-center mx-auto rounded-lg shadow-2xl"
                  alt="hero"
                  src="https://cdn.pixabay.com/photo/2017/09/07/08/54/money-2724241_1280.jpg"
                />
              </div>
            </div>
          </div>
        </div>
        <div className="flex flex-col items-start mt-12 mb-16 text-left lg:flex-grow lg:w-1/2 lg:pl-6 xl:pl-24 md:mb-0 xl:mt-0">
          <span className="mb-8 text-xs font-bold tracking-widest text-blue-600 uppercase">
            {" "}
            Portfolio manager{" "}
          </span>
          <h1 className="mb-8 text-4xl font-bold leading-none tracking-tighter text-neutral-600 md:text-7xl lg:text-5xl">
            AI generated portfolios for optimal returns
          </h1>
          <p className="mb-8 text-base leading-relaxed text-left text-gray-500">
            AI in portfolio management enhances decision-making by analyzing
            vast datasets, identifying trends, and executing trades at optimal
            times, ultimately improving overall investment performance .
          </p>
          <p className="mb-8 text-base leading-relaxed text-left text-gray-500">
            Visit our website to get AI tailored portfolios according to your
            need.
          </p>

          
        </div>
      </div>
    </div>


    <div className="items-center flex flex-wrap">
    <div className="w-full md:w-4/12 ml-auto mr-auto px-4">
      <img
        alt="..."
        className="max-w-full rounded-lg shadow-lg"
        src="https://images.unsplash.com/photo-1555212697-194d092e3b8f?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=634&amp;q=80"
      />
    </div>
    <div className="w-full md:w-5/12 ml-auto mr-auto px-4">
      <div className="md:pr-12">
        <div className="text-pink-600 p-3 text-center inline-flex items-center justify-center w-16 h-16 mb-6 shadow-lg rounded-full bg-pink-300 mt-8">
          <i className="fas fa-rocket text-xl"></i>
        </div>
        <h3 className="text-3xl font-semibold">A growing company</h3>
        <p className="mt-4 text-lg leading-relaxed text-blueGray-500">
          The extension comes with three pre-built pages to help you get
          started faster. You can change the text and images and you're
          good to go.
        </p>
        <ul className="list-none mt-6">
          <li className="py-2">
            <div className="flex items-center">
              <div>
                <span className="text-xs font-semibold inline-block py-1 px-2 uppercase rounded-full text-pink-600 bg-pink-200 mr-3">
                  <i className="fas fa-fingerprint"></i>
                </span>
              </div>
              <div>
                <h4 className="text-blueGray-500">
                  Carefully crafted components
                </h4>
              </div>
            </div>
          </li>
          <li className="py-2">
            <div className="flex items-center">
              <div>
                <span className="text-xs font-semibold inline-block py-1 px-2 uppercase rounded-full text-pink-600 bg-pink-200 mr-3">
                  <i className="fab fa-html5"></i>
                </span>
              </div>
              <div>
                <h4 className="text-blueGray-500">
                  Amazing page examples
                </h4>
              </div>
            </div>
          </li>
          <li className="py-2">
            <div className="flex items-center">
              <div>
                <span className="text-xs font-semibold inline-block py-1 px-2 uppercase rounded-full text-pink-600 bg-pink-200 mr-3">
                  <i className="far fa-paper-plane"></i>
                </span>
              </div>
              <div>
                <h4 className="text-blueGray-500">
                  Dynamic components
                </h4>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
  </>
  );
}
