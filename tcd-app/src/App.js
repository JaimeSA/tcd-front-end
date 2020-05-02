import React, { useState, useEffect } from "react";
import "./App.css";
import logo from "./ecs-logo.png";
const publicIp = require("public-ip");

function App() {
  const [ip, setIp] = useState("unknown");

  useEffect(() => {
    async function getIp() {
      const ip = await publicIp.v4();
      setIp(ip);
    }
    getIp();
  }, []);

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <h2>Elastic Container Service Lab</h2>
        <p>This application runs on IP: {ip}</p>
      </header>
    </div>
  );
}

export default App;
