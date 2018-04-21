require 'capybara'

# register chrome driver eith capybara

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

session = Capybara::Session.new(:chrome)

# use the visit method to navigate to page
session.visit('http://toolsqa.com/automation-practice-form/')

# filling in the box
session.fill_in('firstname', with: 'test')
session.fill_in('lastname', with: 'answer')

# radio button
session.choose('sex-0')
session.choose('exp-2')

session.fill_in('datepicker', with: '18-03-2014')
session.check('profession-1')

session.click_on('Test File to Download')
session.check('tool-2')
session.select('Browser Commands', :from => 'selenium_commands')
session.select('Europe', :from => 'continents')
session.click_button('submit')
# session.attach_file('debs.JPG', '/path/to/debs.jpg')



sleep 3
