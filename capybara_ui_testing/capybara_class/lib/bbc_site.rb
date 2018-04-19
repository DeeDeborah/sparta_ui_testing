require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in_page'
require_relative 'pages/bbc_register_page'

class BbcSite

  def bbc_homepage
    BbcHomepage.new
  end

  def bbc_sign_in_page
    BbcSignInPage.new
  end

  def bbc_u13_register_page
    Under13Reg.new
  end
end
