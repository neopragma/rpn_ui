#encoding: utf-8
	
Feature: Evaluate arithmetic expressions in postfix form
  See that the RPN calculator evaluates expressions as expected

  Scenario: A single addition operation
    Given I enter the postfix expression "2 15 +"
    When I submit the expression
    Then the calculator returns "17.0"

  Scenario: A single exponent operation
    Given I enter the postfix expression "9 2 ^"
    When I submit the expression
    Then the calculator returns "81.0"

  Scenario: A modulo operation
    Given I enter the postfix expression "16 2 %"
    When I submit the expression
    Then the calculator returns "0.0"

  Scenario: A more complicated expression
    Given I enter the postfix expression "2 5 3 + * 4 /"
    When I submit the expression
    Then the calculator returns "4.0"

  Scenario: An invalid expression
    Given I enter the postfix expression "2 - 2"
    When I submit the expression
    Then the calculator returns "invalid input"
