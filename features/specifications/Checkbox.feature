#language: pt

Funcionalidade: Validar Checkbox

Contexto: 
    Dado que acesso a página Dynamic Controls

Cenário: Remover Checkbox
    Quando clico no botão Remove
    Então visualizo a mensagem "It's gone!"

Cenário: Adicionar Checkbox
    Quando clico no botão Add
    Então visualizo o checkbox na tela