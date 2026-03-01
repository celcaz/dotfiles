# 🚀 LSP Keymaps -- Guia Prático de Uso

Este documento explica como utilizar os atalhos configurados para o LSP
(Language Server Protocol) no Neovim.

> ⚠️ Importante: Esses atalhos só funcionam quando o LSP estiver ativo
> no arquivo atual.

---

<leader> = tecla espaço

# 🧭 Navegação de Código

## `gd` --- Go to Definition

Vai para a definição da função, variável ou classe sob o cursor.

**Exemplo:** - Cursor em uma função `handleSubmit` - Pressione `gd` -
Você será levado para onde ela foi definida

---

## `gD` --- Go to Declaration

Vai para a declaração (muito usado em TypeScript e linguagens tipadas).

---

## `gi` --- Go to Implementation

Vai para a implementação concreta de algo (útil para interfaces).

---

## `gr` --- Go to References

Mostra todas as referências do símbolo atual.

**Quando usar:** - Quer saber onde uma função está sendo usada - Quer
refatorar algo com segurança

---

# 📚 Informações Rápidas

## `K` --- Hover Documentation

Mostra a documentação da função ou variável sob o cursor.

**Exemplo:** - Cursor em `useState` - Pressione `K` - Aparece a
documentação inline

---

# ♻️ Refatoração

## `<leader>rn` --- Rename

Renomeia a variável/função em todos os lugares do projeto.

**Exemplo:** 1. Cursor em `userName` 2. Pressione `<leader>rn` 3. Digite
o novo nome 4. Enter

🔥 Muito mais seguro que substituir manualmente.

---

## `<leader>ca` --- Code Actions

Mostra ações disponíveis para aquele trecho de código.

Pode incluir: - Corrigir erro - Importar automaticamente - Remover
código não utilizado - Ajustar tipos

---

# 🐛 Diagnósticos (Erros e Warnings)

## `[d` --- Erro Anterior

Vai para o diagnóstico anterior.

---

## `]d` --- Próximo Erro

Vai para o próximo erro ou warning.

---

## `<leader>e` --- Mostrar Erro Atual

Abre uma janela flutuante com detalhes do erro.

---

# 🧠 LSPs Ativos no Setup

- `lua_ls` → Suporte para Lua
- `ts_ls` → TypeScript / JavaScript
- `eslint` → Regras e lint do ESLint

Eles são ativados automaticamente quando você abre arquivos compatíveis.
