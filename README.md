# NuxTool 2.0
Criado a partir de uma necessidade pessoal, o NuxTool vem com ferramentas e atalhos úteis para o uso cotidiano no ambiente Linux (com distribuições Debian ou derivados).

### Estrutura

```
|- /modules
  |- your-module => Pasta com o nome do seu módulo
     |- your-module.sh => Seu módulo (com o mesmo nome da pasta)
     |- help.sh => Informações do seu módulo que serão exibidos no help
```

O nome da pasta é o mesmo nome do arquivo do módulo, pois este será o comando que o usuário digitará no Nuxtool
#### Exemplo:

```
|- /modules
  |- test
     |- test.sh
     |- help.sh
```
O comando para executar este módulo será:
```
test
```

### Sugestões de módulos
...

### help.sh
...

### Disponibilização
...