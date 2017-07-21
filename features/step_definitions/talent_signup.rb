require 'selenium-webdriver'
require 'rubygems'

driver = Selenium::WebDriver.for :firefox

Given(/^I go to Wonderworx website$/) do
  driver.get 'https://uat.wonderworx.io/'
  sleep (2)
end

Given(/^I click Sign Up$/) do
  driver.find_element(:xpath,"/html/body/div[2]/footer/span/a").click
  sleep (2)
end

Then(/^I select I want to Work$/) do
  driver.find_element(:xpath,"/html/body/div[2]/form/div/div[2]/label").click
  sleep (2)
end

Then(/^I fill all mandatory fields$/) do
  driver.find_element(:name,"username").click
  driver.find_element(:name,"username").send_keys ("TomJerry2")
  driver.find_element(:name,"email").click
  driver.find_element(:name,"email").send_keys ("talentest2@mailinator.com")
  driver.find_element(:name,"password").click
  driver.find_element(:name,"password").send_keys ("1111111")
  driver.find_element(:name,"password_confirmation").click
  driver.find_element(:name,"password_confirmation").send_keys ("1111111")
  sleep (2)
end

When(/^I click Sign Up button$/) do
  driver.find_element(:xpath,"/html/body/div[2]/form/button").click
  sleep (2)
end

Then(/^I would got a message to verify my email registration$/) do
  driver.find_element(:xpath,"/html/body/div[2]/form/div/ul/li").text.include?"Your account has been created, please check your inbox to activate your account."
  sleep (2)
end
