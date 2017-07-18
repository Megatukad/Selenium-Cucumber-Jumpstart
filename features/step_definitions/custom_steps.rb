require 'selenium-webdriver'
require 'rubygems'

driver = Selenium::WebDriver.for :firefox

Given(/^I open Wonderworx website$/) do
  driver.get 'https://uat.wonderworx.io/login'
  sleep (2)
end

Given(/^I type wonderworx on username field$/) do
  driver.find_element(:name,"username").click
  driver.find_element(:name,"username").send_keys ("wonderworx")
  sleep(2)
end

Given(/^I type wonderlabs2017 on password field$/) do
  driver.find_element(:name,"password").click
  driver.find_element(:name,"password").send_keys ("wonderlabs2017")
  sleep(2)
end

When(/^I click Login button$/) do
  driver.find_element(:xpath,"/html/body/div[2]/form/button").click
  sleep(2)
end

Then(/^I see Dashboard$/) do
  driver.get 'https://uat.wonderworx.io/admin/dashboard/'
  sleep(2)
end
