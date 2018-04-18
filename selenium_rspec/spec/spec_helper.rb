require 'selenium-webdriver'
require_relative '../selenium_demoqa_reg'
require_relative '../lib/generate/generate_data'


RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
