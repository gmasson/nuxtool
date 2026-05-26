# NuxTool 3.0

> Ferramenta CLI bilíngue (pt-br / en) com atalhos úteis para o uso cotidiano em distribuições Linux baseadas em Debian/Ubuntu.

[![Bash](https://img.shields.io/badge/language-Bash-green)](https://www.gnu.org/software/bash/)
[![Platform](https://img.shields.io/badge/platform-Debian%20%7C%20Ubuntu-orange)](https://ubuntu.com)
[![License](https://img.shields.io/badge/license-see%20LICENSE-blue)](LICENSE)

---

## Módulos

| Módulo | Descrição |
|---|---|
| `install` | Instala pacotes de software organizados por categorias |
| `update` | Busca e instala atualizações (incluindo patches de segurança) |
| `update-dist` | Atualização completa da distribuição (`full-upgrade`) com confirmação |
| `correct` | Repara pacotes quebrados, reconfigura o dpkg e corrige dependências |
| `info` | Exibe informações de hardware, rede, memória, disco, usuários e processos |
| `bkp` | Copia um arquivo ou pasta para outro destino com validação de caminho |

---

## Requisitos

- Debian 11+ ou Ubuntu 22.04+ (ou qualquer derivado compatível)
- Bash 4+
- `sudo` configurado para o usuário atual
- Conexão com a internet para instalações
- `snapd` instalado para pacotes via Snap (VS Code, Discord, Sublime, etc.)

---

## Instalação

```bash
git clone https://github.com/gmasson/Nuxtool.git
cd Nuxtool
chmod +x nuxtool.sh
```

---

## Uso

```bash
./nuxtool.sh
```

Após iniciar, digite `help` para listar todos os módulos ou `exit` / `quit` para encerrar.

> **Nota:** O NuxTool deve ser executado a partir do seu próprio diretório ou via caminho absoluto, pois ele resolve os caminhos dos módulos relativos ao `${BASH_SOURCE[0]}`.

### Navegação

```text
> help               # lista todos os módulos
> install            # abre o submenu de instalação
>> dev               # instala ferramentas de desenvolvimento
>> back              # volta ao menu principal

> info
>> cpu               # exibe informações do processador
>> net               # exibe interfaces de rede
>> back

> update             # atualiza lista de pacotes e instala atualizações
> update-dist        # atualização completa da distribuição (com confirmação)
> correct            # repara pacotes quebrados
> bkp                # copia um arquivo ou pasta
> exit               # encerra o NuxTool
```

---

## Categorias de Instalação

### `studio` — Edição de Áudio e Vídeo
| Pacote | Descrição |
|---|---|
| GIMP | Editor de imagens |
| Inkscape | Editor de gráficos vetoriais |
| Blender | Modelagem e animação 3D |
| Audacity | Editor de áudio |
| OpenShot | Editor de vídeo |
| Audacious | Player de música |
| VLC | Player multimídia |
| Avidemux | Processamento de vídeo |
| Cheese | Aplicativo de webcam |

### `game` — Jogos e Emuladores
| Pacote | Descrição |
|---|---|
| Java (default-jre) | Necessário para jogos Java |
| Steam | Plataforma de jogos (i386 habilitado) |
| Wine + Lutris | Compatibilidade com jogos Windows |
| DreamChess | Jogo de xadrez 3D |
| SNES9X | Emulador de Super Nintendo |
| Stella | Emulador de Atari 2600 |
| PCSX2 | Emulador de PS1/PS2 |

### `serv` — Ferramentas para Servidores
| Pacote | Descrição |
|---|---|
| Apache2 | Servidor web |
| Nginx | Servidor web / proxy reverso |
| MariaDB | Servidor de banco de dados |
| PHP + extensões | PHP com Apache, MySQL, cURL, etc. |
| Node.js LTS | Runtime JavaScript (via NodeSource) |
| Nano / Git | Editor e controle de versão |
| ProFTPD | Servidor FTP |
| phpMyAdmin | Administrador web de banco de dados |

### `dev` — Ferramentas para Desenvolvedores
| Pacote | Descrição |
|---|---|
| FileZilla | Cliente FTP/SFTP |
| Wireshark | Analisador de rede |
| MySQL Workbench | Interface gráfica para banco de dados |
| Vim | Editor de texto no terminal |
| VS Code | Editor de código (snap) |
| Sublime Text | Editor de código (snap) |
| PuTTY | Cliente SSH |
| Htop / Btop | Monitores de processos |
| Firefox / Opera / Chromium | Navegadores web |

### `home` — Uso Pessoal
| Pacote | Descrição |
|---|---|
| LibreOffice | Pacote de escritório |
| uGet | Gerenciador de downloads |
| SMPlayer | Player multimídia |
| Avidemux | Processamento de vídeo |
| Transmission | Cliente de torrent |
| Thunderbird | Cliente de e-mail |
| Discord | Plataforma de chat (snap) |
| Google Chrome | Navegador (repositório oficial com chave GPG) |
| Firefox | Navegador |
| OpenShot | Editor de vídeo |
| VLC | Player multimídia |
| Wine + Lutris | Compatibilidade com aplicativos Windows |

---

## Subcomandos de Info

| Comando | Descrição |
|---|---|
| `all` | Informações gerais do sistema (`uname -a`) |
| `cpu` | Detalhes do processador (`lscpu`) |
| `net` | Interfaces de rede (`ip addr show`) |
| `memo` | Uso de memória RAM (`free -h`) |
| `hd` | Uso do disco (`df -h`) com breakdown por pasta opcional |
| `user` | Usuários logados no sistema (`who`, `w`) |
| `proc` | Processos em execução (`htop` se disponível, caso contrário `top`) |

---

## Configuração de Idioma

Edite o arquivo [config.sh](config.sh) e defina a variável `language`:

```bash
# Português (padrão)
language="pt-br"

# English
language="en"
```

---

## Estrutura do Projeto

```
nuxtool.sh            # entrypoint principal (while loop, detecção de SCRIPT_DIR)
config.sh             # variáveis globais: idioma, cores, verificação de sistema
modules/
├── bkp/              # cópia de arquivo/pasta com validação
├── correct/          # reparo de pacotes (5 etapas)
├── info/             # informações do sistema
├── install/          # instalação de software por categoria
│   ├── module.sh     # menus de categoria e grupos de instalação
│   └── softwares.sh  # funções individuais de instalação
├── update/           # apt update + upgrade
└── update-dist/      # full-upgrade com autoremove
```

Cada módulo segue a convenção:
- `module.sh` — lógica do módulo
- `help.sh` — descrição exibida no menu `help`

---

## Licença

Distribuído sob os termos descritos em [LICENSE](LICENSE).
