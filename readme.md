# Luma Store - RobotFramework

## Descrição do projeto

Esse projeto tem como finalidade realizar alguns testes automatizados utilizando o RobotFramework na página [Luma Store](https://magento.softwaretestingboard.com/). 

### Tecnologias utilizadas:
- Python
- Robot Framework
- Selenium 
- Google Chrome (Web Driver)

### IDE Utilizada:
- VSCode

## Como instalar e usar o projeto (instruções):

### 1. *Baixar e instalar o Python*

> Acessar o [site do Python](https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbDczTnZTaEZGQ0l3U2FGMFdrcnlxajA1Qm1ZUXxBQ3Jtc0ttVGFRWVZNYlpPSVBueXhWRVBacEJDdlFmS0d0cENieUwwMWVCZUVQT0M5YVN3TzhiTHBfemNCTW1NZEZhWnRMWGREdEJzOFJXLVlab05WR1YtVG5JZ2VUUUwteGwtZ2IzR3d2bjg0UE5mLUY5bUFvcw&q=https%3A%2F%2Fwww.python.org%2Fdownloads%2F&v=BhtyZISTFRs) e realizar o download da última versão disponiblizada para o sistema operacional que você está utilizando. Ao executar 

![alt text](image.png)

> Marcar a opção "Add Python to PATH" e depois clicar em Install Now

![alt text](image-2.png)

> Para verificar se a instalação do Python foi concluída com sucesso, abrir o CMD e executar o seguinte comando: 

``` bash
pip --version
```
> A saída deverá conter a versão do seu Python instalada: 

![alt text](image-3.png)

## 2. *Baixar e instalar o RobotFramework*

> Abrir o cmd e executar o seguinte comando:

``` bash
pip install robotframework
```

## 3. *Baixar e instalar a lib do Selenium*

> Abrir o cmd e executar o seguinte comando:

``` bash
pip install robotframework-seleniumlibrary
```

## 4. Baixar e configurar o ChromeDriver

> Antes de baixar o driver, é necessário verificar a versão do seu Chrome em:

![alt text](image-4.png)
![alt text](image-6.png)

> Após verificar a versão do seu Chrome, entre no [site](https://developer.chrome.com/docs/chromedriver/downloads?hl=pt-br) e realize o Download de uma versão proporcional ao seu Chrome. Ex.: Versão do chrome 132 - Versão do ChromeDriver 132

![alt text](image-7.png)

*Acesse o link para realizar o download*

> Após realizado o download, acesse as váriaveis de ambiente do seu S.O, e copie o caminho do Python dentro do PATH:

![alt text](image-8.png)

> Abra o caminho copiado no explorador de arquivos:

![alt text](image-10.png)

> Após isso, copie o arquivo **chromedriver.exe**, e cole no path mencionado no passo anterior:

![alt text](image-12.png)

![alt text](image-13.png)

*Após realizado esses passos, reinicie o seu computador/notebook*

> Para testar se as configurações foram realizadas corretamente, abra uma IDE, crie um arquivo .robot e cole o seguinte código a seguir:

~~~python
** Settings **
Library  SeleniumLibrary

** Variables **


** Keywords **
Abrir Site
    Open Browser  https://robotframework.org/  chrome

** Test Cases **
Cenário 1: Acessando o site do Robot
    Abrir Site
~~~

![alt text](image-14.png)

> Abra o bash e execute o arquivo:

~~~python
 robot nome_do_seu_arquivo
~~~