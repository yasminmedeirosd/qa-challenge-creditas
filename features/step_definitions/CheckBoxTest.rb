# encoding: utf-8
# !/usr/bin/env ruby

Dado(/^que acesso a página Dynamic Controls$/) do
  visit "/dynamic_controls"
  @checkbox_page = CheckBoxPage.new
end

Quando(/^clico no botão Remove$/) do
  @checkbox_page.clicar_remover_e_adicionar()
end

Então(/^visualizo a mensagem "([^"]*)"$/) do |msg|
  @checkbox_page.validar_mensagem(msg)
end

Quando(/^clico no botão Add$/) do
  #Entra novamente na página, deverá clicar para remover e depois clicar novamente para adicionar.
  @checkbox_page.clicar_remover_e_adicionar()
  @checkbox_page.clicar_remover_e_adicionar()
end

Então(/^visualizo o checkbox na tela$/) do
  @checkbox_page.validar_checkbox_na_tela()
end
