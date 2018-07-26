require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'poltergeist'

@brower = ENV['BROWER']
if @browser.eql?('headless')
  Capybara.register_driver :selenium do |app|
    capybara::Poltergeist::Driver.new(appjs, {Js_erros: false})
  end
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'https://mark7.herokuapp.com'
end

Capybara.default_max_wait_time = 10
