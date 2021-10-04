import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import LoginPage from "./components/Login";
import AdsPage from "./components/Ads";
import SignUpPage from "./components/Signup";

function App() {
  return (
    //this is a react fragment <React.Fragment></ReactFragment>
    <Router>
      <Switch>
        <Route path="/login" component={LoginPage} />
        <Route path="/signup" component={SignUpPage} />

        <Route path="/dashboard" component={null} />
        <Route path="/posts" component={AdsPage} />
      </Switch>
    </Router>
  );
}

export default App;
