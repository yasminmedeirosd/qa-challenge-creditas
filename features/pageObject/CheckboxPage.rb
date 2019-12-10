class CheckBoxPage < SitePrism::Page
  include RSpec::Matchers
  
  # ELEMENTOS MAPEADOS
  element :btn_Add_Remove, :css, "#checkbox-example > button"
  element :btn_checkbox, :id, "checkbox"
  #"#checkbox > input[type=checkbox]"
  element :txt_message, :id, "message"

  def clicar_remover_e_adicionar()
    btn_Add_Remove.click
  end

  def clicar_btn_Remove_Add(botao)
    case botao
    when "Remove"
      btn_Add_Remove.click
      sleep 3
    when "Add"
      if (btn_Add_Remove.text == "Remove")
        btn_Add_Remove.click
        wait = Selenium::WebDriver::Wait.new(:timeout => 10)
        espera = wait.until{btn_Add_Remove.text == "Add"}
        btn_Add_Remove.click
        sleep 3
      end
    else
        "ERRO: Não houve clique."
    end
  end

  def validar_mensagem(msg)
    wait = Selenium::WebDriver::Wait.new(:timeout => 15)
    espera = wait.until {txt_message}
    expect(txt_message.text).to eql(msg)
  end

  def validar_checkbox_nao_esta_na_tela()
    expect(btn_checkbox.visible?).to be false
  end

  def validar_checkbox_na_tela()
    wait = Selenium::WebDriver::Wait.new(:timeout => 15)
    espera = wait.until {btn_checkbox}
    expect(btn_checkbox.visible?).to be true
  end
end
