import React, { Component } from 'react';
import { Header, Segment, Button } from 'semantic-ui-react';
import { Link } from 'react-router-dom';

class Home extends Component {
state = { name:'', amount:'', payments:'', description:'', interest:''};

  render() {
    return (
    <div>  
      <Header as="h1" textAlign="center"> Friend Loan Tracker </Header>
      <div>
        <p> Handy little app that keeps track of repayments your friends are expecting. Also clarify's payments for any misunderstandings. </p>
      </div>
      <div>
        <Segment>
           <Link to="/CreateForm"> 
              <Button 
                name = {this.state.name}
                amount = {this.state.amount}
                payments = {this.state.payments}
                description = {this.state.description}
                interest = {this.state.interest}
               > Create A Table </Button>
           </Link>
        </Segment>
      </div>

    </div>
    );
  }
}

export default Home;

