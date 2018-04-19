require 'capybara/dsl'

class Under13Reg
  include Capybara::DSL

  def register_link
    click_link('Register now')
  end

  def click_under13_button
    click_link('Under 13')
  end

end
