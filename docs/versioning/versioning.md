Aqui vai um **guia de Versionamento Semântico (Semantic Versioning)** bem estruturado para você aplicar em todos os projetos do **Apollo Workspace** de forma consistente e profissional.

---

# 🚀 Apollo Workspace — Guia de Versionamento Semântico

Você vai padronizar todos os repositórios usando:

```
MAJOR.MINOR.PATCH
```

Exemplo:

```
1.4.2
```

---

# 🧠 1. O que cada parte significa

## 🔴 MAJOR (X.0.0)

Mudanças incompatíveis com versões anteriores.

Use quando:

* quebra API
* muda estrutura de dados
* remove funcionalidades antigas
* refatoração grande que quebra integração

### Exemplo:

```
1.0.0 → 2.0.0
```

📌 Regra:

> Se um usuário precisar mudar código para atualizar, é MAJOR.

---

## 🟡 MINOR (0.X.0)

Novas funcionalidades compatíveis com versões anteriores.

Use quando:

* adiciona feature nova
* adiciona endpoint
* adiciona tela nova
* melhora sistema sem quebrar nada

### Exemplo:

```
1.2.0 → 1.3.0
```

📌 Regra:

> Se não quebra nada, mas adiciona valor → MINOR.

---

## 🟢 PATCH (0.0.X)

Correções e ajustes pequenos.

Use quando:

* bug fix
* ajuste de UI
* correção de crash
* melhorias internas sem impacto funcional

### Exemplo:

```
1.2.1 → 1.2.2
```

📌 Regra:

> Pequena correção sem mudança funcional → PATCH.

---

# 🧩 2. Regras importantes do Apollo

## 📌 Regra 1 — Nunca pule versões

Errado:

```
1.0.0 → 1.0.3 direto
```

Correto:

```
1.0.0 → 1.0.1 → 1.0.2 → 1.0.3
```

---

## 📌 Regra 2 — Toda release precisa de tag no Git

Exemplo:

```bash
git tag -a v1.2.0 -m "Feature: login system"
git push origin v1.2.0
```

---

## 📌 Regra 3 — Branch main sempre reflete versão estável

* `main` = produção
* `develop` = opcional (se usar git flow)

---

## 📌 Regra 4 — Nunca versionar sem mudança real

Se não mudou nada relevante:

> não incrementa versão

---

# 📦 3. Estrutura de Release no Apollo

Cada release deve ter:

## 📄 Tag

```
v1.3.0
```

## 📝 Changelog obrigatório

Exemplo:

```md
## [1.3.0] - 2026-05-13

### Added
- Login system
- User session persistence

### Fixed
- Crash on startup
- Button alignment issue

### Changed
- Improved API performance
```

---

# 🔁 4. Fluxo profissional de versionamento

### 1. Criar feature branch

```
feature/login-system
```

### 2. Merge na main

### 3. Definir tipo de versão:

* feature → MINOR
* bug fix → PATCH
* breaking change → MAJOR

### 4. Atualizar versão

Ex:

```
1.2.0 → 1.3.0
```

### 5. Criar tag

```
git tag v1.3.0
```

### 6. Criar release no GitHub

---

# 🧠 5. Como decidir rapidamente o tipo de versão

## Pergunta 1:

👉 “Quebrei algo existente?”

* sim → MAJOR
* não → próxima

---

## Pergunta 2:

👉 “Adicionei algo novo?”

* sim → MINOR
* não → próxima

---

## Pergunta 3:

👉 “Só corrigi algo?”

* sim → PATCH

---

# 🏗️ 6. Padronização para todos os projetos Apollo

Use sempre prefixo de versão:

### Exemplos:

#### Apollo Mobile

```
1.0.0 → 1.4.2
```

#### Apollo SDK

```
0.1.0 → 0.9.0
```

#### Apollo Backend

```
2.3.1 → 3.0.0
```

---

# ⚠️ 7. Erros comuns que você deve evitar

❌ Usar versão como “contador de commits”

```
1.0.1, 1.0.2, 1.0.3 sem critério
```

❌ Não documentar mudanças

❌ Pular MAJOR sem consciência

❌ Misturar features e bug fixes na mesma lógica sem clareza

---

# 🚀 8. Nível profissional (extra recomendado)

Se quiser deixar ainda mais forte:

## Adicione build metadata:

```
1.3.0+20260513
```

ou

```
1.3.0+build.45
```

---

## 🔥 Bonus: convenção de commits (muito importante junto com versionamento)

Use padrão:

```
feat: add login system
fix: resolve crash on startup
refactor: simplify auth service
chore: update dependencies
```

---

# 🧭 Resumo do Apollo Versioning

* MAJOR → quebra compatibilidade
* MINOR → adiciona funcionalidade
* PATCH → corrige bugs
* sempre tag no Git
* sempre changelog
* nunca versionar sem motivo

---

Se quiser, posso te montar o **pipeline completo Apollo (Git + versionamento + CI + release automático no GitHub Actions)** pra você nunca mais fazer isso manualmente.
