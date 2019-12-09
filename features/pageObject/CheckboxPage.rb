class CheckBoxPage < SitePrism::Page
  include RSpec::Matchers
  
  # ELEMENTOS MAPEADOS
  element :btn_Add_Remove, :css, "#checkbox-example > button"
  element :btn_checkbox, :css, "#checkbox"
  element :txt_message, :id, "message"

  def clicar_remover_e_adicionar()
    btn_Add_Remove.click
  end

  def validar_mensagem(msg)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    mensagem = wait.until {txt_message}
    expect(txt_message.text).to eql(msg)
  end

  def validar_checkbox_nao_esta_na_tela()
    expect(btn_checkbox.visible?).to be false
  end

  def validar_checkbox_na_tela()
    expect(btn_checkbox.visible?).to be true
  end
end
