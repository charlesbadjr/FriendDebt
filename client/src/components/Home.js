import React, { Component } from 'react';
import { Header, Segment, Button } from 'semantic-ui-react';
import { Link } from 'react-router-dom';

class Home extends Component {

  render() {
    return (
    <div>  
      <Header as="h1" textAlign="center"> Friend Loan Tracker </Header>
      <div>
        <p> Handy little app that keeps track of repayments your friends are expecting. Also clarify's payments for any misunderstandings. </p>
      </div>
      <div>
        <Segment>
           <Link to="/Login"> 
              <Button> Start Tracking </Button>
           </Link>
        </Segment>
      </div>

    </div>
    );
  }
}

export default Home;

