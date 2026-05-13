# Padrões Git

## Branch principal

main

## Branches de desenvolvimento

feature/nome-da-feature  
fix/nome-do-fix  
refactor/nome-do-refactor  
docs/nome-da-documentacao

## Exemplos de branches

feature/socket-server  
feature/command-registry  
fix/socket-reconnect  
refactor/logger-service  
docs/update-readme

---

# Commits

O projeto segue o padrão de commits semânticos.

## Estrutura de commits

tipo: descrição

## Tipos permitidos

feat:  
fix:  
refactor:  
docs:  
test:  
chore:

## Exemplos de commits

feat: add socket server  
fix: reconnect socket on disconnect  
refactor: simplify command registry  
docs: update functional requirements  
test: add socket service tests  
chore: update dependencies

---

## Pull Requests

Toda funcionalidade deve ser desenvolvida em branch separada e integrada na `main` através de Pull Request.