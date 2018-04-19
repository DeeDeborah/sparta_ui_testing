require 'capybara/dsl'

class BbcSignInPage
  include Capybara::DSL

  SIGN_IN_PAGE = 'https://account.bbc.com/signin'
  FILL_IN_USERNAME = 'user-identifier-input'
  FILL_IN_PASSWORD = 'password-input'
  ERROR_MES = 'form-message-username'
  SUBMIT_BUTTON = 'submit-button'
  WRONG_DETAILS = 'form-message-general'
  PASSWORD_ERROR_MESSAGE = 'form-message-password'

  def visit_sign_in_page
    visit(SIGN_IN_PAGE)
  end

  def fill_in_username(username)
    fill_in(FILL_IN_USERNAME, with: username)
  end

  def fill_in_password(password)
    fill_in(FILL_IN_PASSWORD, with: password)
  end

  def click_sign_in_button
    find_by_id(SUBMIT_BUTTON).click
  end

  def invalid_account
    find(:id, ERROR_MES).text
  end

  def incorrect_password_text
    find(:id, PASSWORD_ERROR_MESSAGE).text
  end

  def general_error_messages_text
    find(:id, WRONG_DETAILS).text
  end
  def username_error_message
    find(:id, ERROR_MES).text
  end

end
