import React, { Component } from 'react';
import { Switch, Route } from 'react-router-dom';
import NoMatch from './NoMatch';
import NavBar from './NavBar';
import Login from './Login';
import Register from './Register';
import Flash from './Flash';
import Home from './Home';
import DebtForm from './DebtForm';
import LoanChart from './LoanChart';
import ProtectedRoute from './ProtectedRoute';
import AuthRoute from './AuthRoute';
import FetchUser from './FetchUser';

class App extends Component {

  render() {
    
    return (
      <div>
        <NavBar />
        <Flash />
        <FetchUser>
          <Switch>
            <Route exact path="/" component={Home} />
            <Route exact path="/CreateForm" component={DebtForm} />
            <Route exact path="/PaymentHistory" component={LoanChart} />
            <AuthRoute exact path="/login" component={Login} />
            <AuthRoute exact path="/register" component={Register} />
            <Route exact path="/youlostboy" component={NoMatch} />
          </Switch>
        </FetchUser>
      </div>
    );
  }
}

export default App;
