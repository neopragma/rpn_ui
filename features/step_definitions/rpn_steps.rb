Given(/^I enter the postfix expression "([^"]*)"$/) do |postfix_expression|
  @postfix_expression = postfix_expression
end

When(/^I submit the expression$/) do
  @browser.navigate.to "http://localhost:3001/" 
  enter_values(@postfix_expression)
  press_button 'btn_submit'	
end

Then(/^the calculator returns "([^"]*)"$/) do |answer|
  expect(@browser.find_element('id', 'answer').text)
  	.to eq(answer)
end
