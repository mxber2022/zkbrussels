"use client";

import { useContext } from "react";
import Image from "next/image";
import Text from "./components/Text";
import WalletButton from "./components/WalletButton";
import Greeting from "./components/GreeterMessage";
import Input from "./components/Input";
import Web3Context from "./context/Web3Context";
import zkSyncImage from "./assets/zkSync_logo.png";

export default function Home() {
  const web3Context = useContext(Web3Context);

  return (
    <main className="flex flex-col items-center justify-center min-h-screen">
      <div className="self-end mb-4">
        <WalletButton />
      </div>

      <div className="flex min-h-screen flex-col items-center justify-evenly p-52">
        <div className="mb-12">
          <Image
            src={zkSyncImage}
            alt="zkSync Era Logo"
            priority
            width={250}
            height={150}
          />
        </div>
        <div className="mb-8">
          <Text>
            Claim testnet faucet, and discover if you own an
            poap from ZK Lambda hackathon. Lucky holders enjoy gas-free transactions, covered
            by ZKLambda paymaster.
          </Text>
        </div>
        <Greeting greeting="" />
        <Input
          greeterInstance={web3Context.greeterContractInstance}
          setGreetingMessage={web3Context.setGreetingMessage}
          provider={web3Context.provider}
          nfts={web3Context.nfts}
        />
        <div className="mb-12"></div>
      </div>
    </main>
  );
}
