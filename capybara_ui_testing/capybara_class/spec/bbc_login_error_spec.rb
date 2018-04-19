require 'spec_helper'

describe 'Incorrect user details produces vaild error' do

  before(:all) do
    @bbc_site = BbcSite.new
    @bbc_homepage = @bbc_site.bbc_homepage
    @bbc_signin_page = @bbc_site.bbc_sign_in_page
  end

  context 'It should respond with the correct errors when no details are entered' do
    it 'should produce three error message when no username or password is entered' do
      @bbc_homepage.visit_home_page
      @bbc_homepage.click_sign_in_link
      @bbc_signin_page.click_sign_in_button
      expect(@bbc_signin_page.general_error_messages_text).to eq 'Sorry, those details don\'t match. Check you\'ve typed them correctly.'
      expect(@bbc_signin_page.incorrect_password_text).to eq 'Something\'s missing. Please check and try again.'
      expect(@bbc_signin_page.username_error_message).to eq 'Something\'s missing. Please check and try again.'
    end
  end

  context 'It should respond with the correct error when incorrect detials are input' do

    it 'should produce an error when inputting an incorrect password to a invalid account' do
      @bbc_homepage.visit_home_page
      @bbc_homepage.click_sign_in_link
      @bbc_signin_page.fill_in_username('dszfxsdgdfgdf')
      @bbc_signin_page.fill_in_password('safsezddrfcdxrfc5555')
      @bbc_signin_page.click_sign_in_button
      expect(@bbc_signin_page.invalid_account).to eq 'Sorry, we can’t find an account with that username. If you\'re over 13, try your email address instead or get help here.'
      end
    end

  context 'It should respond with the correct error message when details are too short' do

      it 'Should produce an error when the input details are too short' do
        @bbc_homepage.visit_home_page
        @bbc_homepage.click_sign_in_link
        @bbc_signin_page.fill_in_username('d')
        @bbc_signin_page.fill_in_password('s2')
        @bbc_signin_page.click_sign_in_button
        expect(@bbc_signin_page.incorrect_password_text).to eq  'Sorry, that password is too short. It needs to be eight characters or more.'
        expect(@bbc_signin_page.username_error_message).to eq 'Sorry, that username\'s too short. It needs to be at least two characters.'
        @bbc_signin_page.click_sign_in_button
        expect(@bbc_signin_page.general_error_messages_text).to eq 'Sorry, those details don\'t match. Check you\'ve typed them correctly.'
      end
    end

end
