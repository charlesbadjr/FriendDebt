import React, { Component } from 'react';
import {Segment, Button, Form, Header } from 'semantic-ui-react';
import {Link} from 'react-router-dom';






class DebtForm extends Component {
    state = { name: '', description: '', 
              amount: '', payments: '', 
              interestAmount: '' };
  
    handleChange = (event) => {
      const { name, value } = event.target;
      this.setState({ [name]: value });
    }
  
    handleSubmit = (event) => {
      event.preventDefault();
      
    }



    render() {
      const { name, description, amount, payments, intrestAmount  } = this.state;
     
     
      return (
        <Segment basic>
          <Header as="h1" textAlign="center"> About the Debt </Header>
          <Form >
            <Form.Field>
               
               <input
                 required
                 id="fName"
                 icon="user"
                 name="name"
                 value={name}
                 placeholder="Your Name"
                 onChange={this.handleChange}
                 />
             </Form.Field>
             <Form.Field>  
              <input
                required
                id="fName"
                icon="user"
                name="name"
                value={name}
                placeholder="Your Name"
                onChange={this.handleChange}
                />
            </Form.Field>
            <Form.Field> 
              <input
                required
                id="Amount"
                name="amount"
                value={amount}
                placeholder="Amount Due"
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
                required
                id="description"
                name="description"
                value={description}
                placeholder="Description of Debt"
                onChange={this.handleChange}
              />
            </Form.Field>
            <Form.Field>
              
              <input
                id="APR"
                name="intrestAmount"
                value={intrestAmount}
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
