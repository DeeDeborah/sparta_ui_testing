require 'selenium-webdriver'

class SeleniumQaToolForm

  PRACTICE_FORM_URL = "http://toolsqa.com/automation-practice-form/"
  FIRST_NAME_FIELD_NAME = "firstname"
  LAST_NAME_FIELD_NAME = "lastname"
  CONTINENT_LIST = 'continents'
  CLICK_LINK = 'Test File to Download'


  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def vist_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
    sleep 2
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
    sleep 2
  end

  def input_choice_of_sex
    @chrome_driver.find_element(:id, "sex-1").click
    sleep 2
  end

  def click_years_of_exp
    @chrome_driver.find_element(:id, "exp-1").click
    sleep 2
  end

  def input_date(text)
    @chrome_driver.find_element(:id, "datepicker").send_keys(text)
    sleep 2
  end

  def select_profession
    @chrome_driver.find_element(:id, 'profession-1').click
    sleep 2
  end

  # def choose_photo(file)
  #   @chrome_driver.find_element(:id, 'photo').click
  # end

  def choose_tool
    @chrome_driver.find_element(:id, 'tool-2').click
    sleep 2
  end

  def click_link
    @chrome_driver.find_element(:link_text, CLICK_LINK).click
  end

  def continents
    con = @chrome_driver.find_element(:id, CONTINENT_LIST)
		options = con.find_elements(:tag_name, "option")
		options.each { |option| option.click if option.text == "Europe" }
    sleep 2
		end

end

form = SeleniumQaToolForm.new
form.vist_practice_form
form.input_firstname_field("Deborah")
form.input_lastname_field("Ansah")
form.input_choice_of_sex
form.click_years_of_exp
form.input_date("17-03-18")
form.select_profession
form.click_link
form.choose_tool
form.click_link
form.continents
