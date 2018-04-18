require 'faker'
require 'selenium-webdriver'

class RandomData
  include Faker

  def get_faker_firstname
     Name.first_name
  end

  def get_faker_lastname
    Name.last_name
  end

  def get_faker_username
    Internet.user_name
  end

  def get_faker_email
    Internet.safe_email
  end

  def get_faker_password
    Internet.password
  end

  def get_faker_country
    Address.country
  end

  def get_faker_number
    num = Number.number(10)
    '0' + num
  end

  def get_faker_description
    TheFreshPrinceOfBelAir.quote
  end

end

 # ran = RandomData.new
 # puts ran.get_faker_firstname
# puts ran.get_faker_lastname
# puts ran.get_faker_username
# puts ran.get_faker_email
# puts ran.get_faker_password
# puts ran.get_faker_number
