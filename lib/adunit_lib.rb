require "rubygems"
require "watir"
require "watir-webdriver"

class AdunitAdd
  def inicialize
  	login
  end

  def self.call
  	new
  end

  def login
  	browser = Watir::Browser.new
	browser.goto 'https://target.my.com/'
	browser.text_field(:name, "login").set("aleksmakarenko@inbox.ru")
	browser.text_field(:name, "password").set("h393co02")
	browser.button(:class, "button_submit button").click
  end
end