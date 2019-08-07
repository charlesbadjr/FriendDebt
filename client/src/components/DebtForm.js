import React, { Component } from 'react';
import {Segment, Button, Form, Header } from 'semantic-ui-react';
import {Link} from 'react-router-dom';
import axios from 'axios';



class DebtForm extends Component {
    state = { name: '', description: '', payOffDate:'', 
              amount: '', amountleft:'', payments: '', 
              interestAmount: '' };
  
    handleChange = (event) => {
      const { name, value } = event.target;
      this.setState({ [name]: value });
    }
  
    handleSubmit = (event) => {
      event.preventDefault();

    };



    render() {
      const { amount, payments, amountleft, description, payOffDate, interestAmount } = this.state;
     
     
      return (
        <Segment basic>
          <Header as="h1" textAlign="center"> About the Debt </Header>
          <Form >
            <Form.Field>
               
               <input
                 autoFocus
                 required
                 id="amount"
                 icon="user"
                 name="name"
                 value={amount}
                 placeholder="Total Amount"
                 onChange={this.handleChange}
                 />
             </Form.Field>
             <Form.Field>  
              <input
                required
                id="description"
                icon="user"
                name="name"
                value={description}
                placeholder="Debt Description"
                onChange={this.handleChange}
                />
            </Form.Field>
            <Form.Field> 
              <input
                required
                id="Amount"
                name="amount"
                value={payOffDate}
                placeholder="Pay off Date"
                onChange={this.handleChange}
              />
            </Form.Field>
            <Form.Field>
              
              <input
                required
                id="NoP"
                name="payments"
                value={payments}
                placeholder="Number of Payments"
                onChange={this.handleChange}
              />
            </Form.Field>
            <Form.Field>
              
              <input
                id="APR"
                name="intrestAmount"
                value={interestAmount}
                placeholder="Apply Intrest?"
                onChange={this.handleChange}
              />
            </Form.Field>
            
            <Segment textAlign="center" basic>
              <Link to="./PaymentHistory">
                 <Button color="red" 
                         icon="dollar" 
                         primary type="submit" > Submit </Button>
              </Link> 
            </Segment>
          </Form>
        </Segment>
      );
    }
  }


  export default DebtForm;
