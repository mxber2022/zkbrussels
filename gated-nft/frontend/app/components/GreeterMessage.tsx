type GreetingProps = {
  greeting: string;
};

const Greeting = ({ greeting }: GreetingProps) => {
  return (
    <div>
      <h3 className="text-4xl font-bold text-center mb-4">Faucet? We got you hackers</h3>
      <p className="text-2xl text-center mb-4">{greeting} </p>
    </div>
  );
};

export default Greeting;
