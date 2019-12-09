# PROJETO QA CHALLENGE - CREDITAS - Yasmin Medeiros:

**1. Estrutura**

O projeto foi realizado com a seguinte estrutura:
- Especificação
- features
	- pageObject
    - specifications
    - step_definitions
    - support
- Gemfile

**2. Conteúdos da Estrutura**

Cada pasta do projeto segundo a estrutura, possui seus conteúdo exclusivo.

**2.1 Especificação**

Segundo a descrição do desafio, na pasta Especificação foi criado o arquivo "LoginCreditas.txt". Nele possui a descrição dos possíveis cenários da tela de login.

**2.2 Features**

Esta pasta é baseada em toda a estrutura de pastas e classes do projeto.

**2.2.1 PageObject**

Nesta pasta contém as classes:
   
**CheckboxPage** - Utilizando o conceito pageObject, esta classe possui elementos mapeados e seus métodos que serão utilizados pelos steps na classe Test. Os métodos criados são:

 - **clicar_remover_e_adicionar:** Método de click no botão da tela, se fez necessário criar apenas um método referenciando o click em ambas ações devido ao elemento ser o mesmo para ambas as situações e ter apenas a label do botão trocada.
 - **validar_mensagem:** Método utilizado que valida o texto da mensagem que aparece na tela. 
 - **validar_checkbox_na_tela:** Método que valida se o checkbox voltou a aparecer na tela  

**NovaAbaPage** - Esta classe utiliza o conceito pageObject que possui os elementos mapeados e seus métodos que serão utilizados pelos steps na classe de Test.

 - **clicar_link:** Método de click no link para ir para outra aba
 - **validar_troca_de_Aba:** Método para validar que foi aberta outra aba e possui texto.

**2.2.2 Specifications**

Contém os arquivos feature com todos os BDDs escritos.

**2.2.3 Step_defitions**

Nesta pasta contém os arquivos de testes que possuem todos os steps gerados pelas features

**ApiPostTest** - Esta classe contém os steps da feature "ApiPost", utilizando o Httparty montando o post com o Json do desafio, no "Então" foi validado que o retorno da resposta com código 201 e o id criado como 101

**CheckBoxTest** - Esta classe contém os steps da feature **"Checkbox"**.A classe contém a instância da classe Page e cada step define uma ação do teste:

- **Dado:** possui a chamada visit completando a url já declarada no arquivo "env.rb".
- **Quando:** é chamada do método da page onde realiza o click no botão **"Remove"** e um quando necessita clicar no botão **"Add"**.
- **Então**: é a chamada do método da page onde valida que as mensagens estão aparecendo quando remove e volta o checkbox e outro **"Então"** valida o checkbox presente na tela após clicar no botão **"Add"**

**NovaAbaTest** - Esta classe contém os steps da feature **"NovaAba"**. A classe contém a instância da classe Page e cada step define uma ação do teste:
- **Dado:** possui a chamada visit completando a url já declarada no arquivo "env.rb".
- **Quando:** é chamada do método da page onde clica no link para ir para uma nova aba.
-  **Então:** é a chamada do método da page onde verifica a abertura de uma nova aba e possui o texto **"New Window"**. 

**2.2.4 Support**

Nesta pasta contém o arquivo **"env.rb"**, onde neste arquivo é declarado todos os requerimentos utilizados no projeto.
No arquivo env também possui a configuração para iniciar o chromedriver e também é declarado a utilização do navegador chrome e a url que deverá ser acessada.
Na pasta existe o arquivo **"hooks.rb"**, onde existe a chamada "Before feature" em que nesta chamada é definido maximizar o navegador antes de iniciar a execução dos testes e também o "After scenario" que realiza print screen do step em que o cenário falhou, caso ocorra falha.
  
**2.2.5 Arquivo Gemfile**

Este arquivo ele é criado sem extensão nenhuma e nele deve ser declarado todas as gens que serão instaladas e usadas no projeto.

**3. CONSIDERAÇÕES FINAIS**
O projeto foi criado dentro do conceito PageObject, na linguagem Ruby, utilizando as gems necessárias.
Há futuras melhorias que podem ser feitas no código para melhor performance dos testes, como por exemplo, criação de uma classe base onde nesta classe há métodos básicos e genéricos para ações e manipulações de elementos (como click,inserção de textos em inputs, waits, etc...), a fim de evitar repetição de códigos e para melhorar possíveis manutenção nos testes, a classe poderá ser extendida para todas as classes do projeto através do arquivo "env.rb" com o comando World, a partir daí todos os métodos do pacote de classes bases, poderão ser chamados sem necessidade de criar variável. Melhorias assim, podem tornar o projeto mais limpo, organizado e com padrão de desenvolvimento definido a fim de facilitar o profissional na criação e execução dos testes automatizados.