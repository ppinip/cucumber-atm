Feature: deposit
  As a customer
  I want to deposit from my account using ATM

Background:
  Given a customer with id 1 and pin 111 with balance 200 exists
  When I login to ATM with id 1 and pin 111

Scenario: Deposit amount more than zero
  When I deposit 50 from ATM
  Then my account balance is 250

Scenario: Deposit amount zero
  When I deposit 0 from ATM
  Then my account balance is 200