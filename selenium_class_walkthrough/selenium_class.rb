require 'selenium-webdriver'

class SeleniumQaToolForm

  PRACTICE_FORM_URL = "http://toolsqa.com/automation-practice-form/"
  FIRST_NAME_FIELD_NAME = "firstname"
  LAST_NAME_FIELD_NAME = "lastname"
  CONTINENT_LIST = 'continents'

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def vist_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
    sleep 3
  end

  def get_first_name_text
    puts @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)['value']
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
    sleep 5
  end

  def get_last_name_text
    puts @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME)['value']
  end

  def input_choice_of_sex
    @chrome_driver.find_element(:id, "sex-1").click
    sleep 3
  end

  def click_years_of_exp
    @chrome_driver.find_element(:id, "exp-1").click
    sleep 3
  end

  def input_date(text)
    @chrome_driver.find_element(:id, "datepicker").send_keys(text)
    sleep 3
  end

  def select_profession
    @chrome_driver.find_element(:id, 'profession-1').click
    sleep 3
  end

  def choose_photo(file)
    @chrome_driver.find_element(:id, 'photo').click
  end

  def choose_tool
    @chrome_driver.find_element(:id, 'tool-2').click
    sleep 3
  end

  def continents(continent)
    con = @chrome_driver.find_element(:id, CONTINENT_LIST)
		opt = dropdown.find_elements(:tag_name,"option")
		opt.each do |opt|
			opt.click if opt.text == continent
		end
		sleep 2
  end
end

form = SeleniumQaToolForm.new
form.vist_practice_form
form.input_firstname_field("Deborah")
form.get_first_name_text
form.input_lastname_field("Ansah")
form.get_last_name_text
form.input_choice_of_sex
form.click_years_of_exp
form.input_date("12-03-18")
form.select_profession
form.choose_tool
form.continents('Europe')
