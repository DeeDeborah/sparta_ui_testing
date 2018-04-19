require 'spec_helper'

describe 'Registering for different accounts' do
  before(:all) do
    @bbc_site = BbcSite.new
    
  end
  context 'It should respond with the correct error message when an incorrect email is inputted' do

      it 'Should produce an error when an incorrect email' do
        @bbc_homepage.visit_home_page
        @bbc_homepage.click_sign_in_link
        @bbc_signin_page.register_link
      end
    end
end
