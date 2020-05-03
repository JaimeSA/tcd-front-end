import "./App.css";
import logo from "./ecs-logo.png";
const publicIp = require("public-ip");

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <h2>Elastic Container Service Lab</h2>
      </header>
    </div>
  );
}
export default App;
