def enter_values postfix_expression
  postfix_expression.split("").each do |key|
  	press_button @id_list[key.to_s]
  end
end

def press_button(id)
  @browser.find_element('id', id).click
end
