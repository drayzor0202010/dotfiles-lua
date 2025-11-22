

🌙 Dotfiles Lua Multi-Plataforma

> Dotfiles em Lua que funcionam tanto no Termux (Android) quanto no Linux (Hyprland ou outro).
Automatize aliases, funções úteis e organize seu terminal de forma prática e elegante.



💻 Funcionalidades

✨ Aliases personalizados para comandos frequentes.

🛠️ Funções úteis, como limpar cache e criar backups.

📱 Compatível com Android (Termux) e Linux (Hyprland/Outro).

🧩 Estrutura modular para fácil manutenção e expansão.

🔍 Detecção automática do sistema para carregar os módulos corretos.


📂 Estrutura do projeto

dotfiles-lua/
├─ init.lua           # Arquivo principal que detecta o sistema e carrega os módulos
├─ termux/
│   ├─ aliases.lua    # Aliases para Termux
│   └─ funcs.lua      # Funções para Termux
├─ linux/
│   ├─ aliases.lua    # Aliases para Linux
│   └─ funcs.lua      # Funções para Linux
└─ README.md          # Este arquivo



⚡ Instalação

No Termux ou Linux, abra o terminal e rode:

# Clonar o repositório
git clone https://github.com/drayzor0202010/dotfiles-lua.git
cd dotfiles-lua

# Rodar o script principal
lua init.lua

> Após rodar o init.lua, seus aliases e funções já estarão disponíveis globalmente.



🛠️ Comandos disponíveis

📌 Aliases

Comando	Função

cls()	Limpa a tela do terminal
atualizar()	Atualiza pacotes do sistema


⚡ Funções úteis

Função	Função detalhada

limpar_cache()	Limpa o cache do Termux ou Linux
backup_docs()	Cria backup da pasta Documents


🖥️ Exemplo de uso no terminal Lua

cls()             -- Limpa a tela
atualizar()       -- Atualiza pacotes
limpar_cache()    -- Limpa cache
backup_docs()     -- Cria backup de documentos



🔄 Compatibilidade

O script detecta automaticamente o sistema:

local uname = io.popen("uname"):read("*l")

if uname == "Linux" then
    dofile("linux/aliases.lua")
    dofile("linux/funcs.lua")
elseif uname == "Android" then
    dofile("termux/aliases.lua")
    dofile("termux/funcs.lua")
end

> Assim, você não precisa se preocupar em carregar módulos errados.




📝 Personalização

Adicione novos aliases ou funções editando aliases.lua ou funcs.lua de cada pasta.

Para criar funções globais, crie no arquivo correspondente e chame no init.lua.

Utilize caminhos relativos para manter a portabilidade entre sistemas.




📌 Dicas de uso

Combine com outros scripts para automatizar tarefas diárias.

Compartilhe no GitHub e use em qualquer dispositivo copiando a pasta dotfiles-lua.

Mantenha o init.lua limpo e organizado, carregando apenas o necessário.




🌟 Contribuição

Contribuições são sempre bem-vindas! 🙌

Abra um issue para bugs ou sugestões.

Faça fork do projeto e envie um pull request com novas funções ou melhorias.

Mantenha coerência e compatibilidade entre Termux e Linux.




❤️ Agradecimentos

Lua 🐍 — linguagem simples e poderosa para scripting.

Termux 📱 — tornando Android tão funcional quanto Linux.

Comunidade open-source 🌐 — inspiração e aprendizado diário.
