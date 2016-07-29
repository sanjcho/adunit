require "rubygems"
require "watir"
require "watir-webdriver"

class AdunitAdd
  def inicialize
    login
    puts "hello"
  end

  def self.call
    new.login
  end

  def login
    browser = Watir::Browser.start('https://target.my.com/#login')
    sleep(1) if browser.status != "Done"
    browser.text_field(:name, "login").set("aleksmakar@inbox.ru")
    browser.text_field(:name, "password").set("h393co02")
    browser.button(:class, "button_submit button").click
    sleep(1) if browser.status != "Done" && browser.text.include?("You have no active campaigns. Create one?") == true 
    puts "hellow"
  end
end