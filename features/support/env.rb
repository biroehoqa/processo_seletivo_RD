require "capybara/cucumber"
require "selenium-webdriver"
require "capybara-webkit"
require "site_prism"
require "faker"
require "cpf_faker"
require "rspec"

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10

Capybara::Webkit.configure do |config|
  config.allow_url("https://www.rdstation.com.br/cadastro")
  config.allow_url "https://www.rdstation.com.br"
  config.block_unknown_urls
end
