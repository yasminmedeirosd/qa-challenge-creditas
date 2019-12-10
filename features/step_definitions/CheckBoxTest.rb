# encoding: utf-8
# !/usr/bin/env ruby

Dado(/^que acesso a página Dynamic Controls$/) do
  visit "/dynamic_controls"
  @checkbox_page = CheckBoxPage.new
end

Quando(/^clico no botão "([^"]*)"$/) do |btn|
  @checkbox_page.clicar_btn_Remove_Add(btn)
end

Então(/^visualizo a mensagem "([^"]*)"$/) do |msg|
  @checkbox_page.validar_mensagem(msg)
end


Então(/^visualizo o checkbox na tela$/) do
  @checkbox_page.validar_checkbox_na_tela()
end
