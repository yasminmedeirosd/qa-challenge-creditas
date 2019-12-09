class NovaAbaPage < SitePrism::Page
  include RSpec::Matchers
  
  # ELEMENTOS MAPEADOS #
  element :lnk_Click_Here, :css, "#content > div > a"
  element :txt_message_new_window, :css, "body > div > h3"

  def clicar_link()
    lnk_Click_Here.click
  end

  def visualizo_nova_aba()
    newWindow = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(newWindow)
    expect(txt_message_new_window.text).to eql("New Window")
  end
end
