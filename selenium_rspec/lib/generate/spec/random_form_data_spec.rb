require 'spec_helper'

describe 'testing random data class' do

  before(:all) do
    @random_data = GenerateData.new.generate_data
    @first_name = @random_data.get_faker_firstname
    @last_name = @random_data.get_faker_lastname
    @username = @random_data.get_faker_username
    @password = @random_data.get_faker_password
    @number = @random_data.get_faker_number
    @country = @random_data.get_faker_country
    @email = @random_data.get_faker_email
    @description = @random_data.get_faker_description
  end

  it 'should generate random a new first name that is string' do
    expect(@first_name).to be_a String
  end

  it 'should generate random a new last name that is string' do
    expect(@last_name).to be_a String
  end

  it 'should generate random a new username that is string' do
    expect(@username).to be_a String
  end

  it 'should generate random a new phone number that is equal to 11 numbers and is an string' do
    expect(@number.length).to eq 11
    expect(@number).to be_a String
  end

  it 'should generate a random description quote' do
    expect(@description).to be_a String
  end

  it 'should generate a new random email address' do
    expect(@email).to be_a String
  end

  it 'should generate random a new password that is string' do
    expect(@password).to be_a String
  end

  it 'should generate a new country that is string' do
    expect(@country).to be_a String
  end

end
