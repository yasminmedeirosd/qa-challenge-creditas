# encoding: utf-8
# !/usr/bin/env ruby

Dado(/^que estou no site Windows$/) do 
  visit "/windows"
  @nova_aba = NovaAbaPage.new
end

Quando(/^clico no link na tela$/) do
  @nova_aba.clicar_link()
end

Então(/^visualizo a nova aba$/) do
  @nova_aba.visualizo_nova_aba()
end
