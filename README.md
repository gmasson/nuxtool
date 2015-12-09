# NuxTool 2.0
Criado a partir de uma necessidade pessoal, o NuxTool vem com ferramentas e atalhos úteis para o uso cotidiano no ambiente Linux (com distribuições Debian ou derivados).

### Estrutura de Módulos

```
|- /modules
  |- /your-module => Pasta com o nome do seu módulo
     |- your-module.sh => Seu módulo (com o mesmo nome da pasta)
     |- help.sh => Informações do seu módulo que serão exibidos no help
```

O nome da pasta é o mesmo nome do arquivo do módulo, pois este será o comando que o usuário digitará no Nuxtool
##### Exemplo:

```
|- /modules
  |- /test
     |- test.sh
     |- help.sh
```

O comando para executar este módulo será:

```
test
```

### Sugestões de módulos
Desenvolva ferramentas que facilitem o dia a dia dos usuários, como ferramentas relacionadas á automação e/ou manutenção do computador.


### help.sh
O arquivo ***help.sh*** é onde o desenvolvedor coloca a descrição de seu módulo, visto que este arquivo será inscluido automaticamente no comando ***help*** do NuxTool


### Disponibilização
Colabore com a comunidade, disponibilize seus módulos em seu GitHub e divulgue para que tenhamos mais adeptos ao software, caso queira, [apresente para o desenvolvedor](http://gmasson.com.br) para que ele ajude na divulgação.

### Suporte
Tenha suporte para o desenvolvimento, [entre em contato](http://gmasson.com.br) 
***suporte 100% gratuito desde que seu módulo seja open source***