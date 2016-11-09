require 'selenium-webdriver'
require 'capybara'

if ENV["HEADLESS"] then
  require 'headless'
  @headless = Headless.new
  @headless.start
end
 
Capybara.default_driver = :selenium

Before do
  @browser = Selenium::WebDriver.for :chrome

  @id_list = { 
    '0' => 'btn_0',
    '1' => 'btn_1',
    '2' => 'btn_2',
    '3' => 'btn_3',
    '4' => 'btn_4',
    '5' => 'btn_5',
    '6' => 'btn_6',
    '7' => 'btn_7',
    '8' => 'btn_8',
    '9' => 'btn_9',
    '+' => 'btn_plus', 
    '-' => 'btn_minus', 
    '*' => 'btn_times', 
    '/' => 'btn_divide', 
    '%' => 'btn_modulo', 
    '^' => 'btn_exponent', 
    '√' => 'btn_root', 
    'C' => 'btn_clear',
    '<<' => 'btn_backspace',
    ' ' => 'btn_enter'
  }
end
 
at_exit do
  @browser.close if @browser
  @headless.destroy if @headless
end
