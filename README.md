# proejtoCole-o (Projeto Coleção)

> Nome do repositório contém typo (`proejto` em vez de `projeto`); preservado para não quebrar URLs existentes.

Aplicação desktop em Java Swing para gerenciamento de coleções pessoais — com login e CRUD de usuários e coleções. Trabalho da ULBRA (pacote `br.ulbra`).

## Tecnologias

- Java Swing
- MySQL — schema em [`ProjetoColecao/colle_db.sql`](ProjetoColecao/colle_db.sql)
- Ant (NetBeans) — `ProjetoColecao/build.xml`

## Estrutura

```
ProjetoColecao/
  src/br/ulbra/
    dao/          — CollectionDao, UserDao, ConnectionFactory
    model/        — Collection, User
    view/         — FrLogin, FrMenu, FrCollection, FrUser
  colle_db.sql    — schema do banco
  leia-me.txt     — credenciais de exemplo (admin/123, MySQL root sem senha)
```

## Como rodar

1. Criar banco MySQL `colle_db` e rodar `colle_db.sql`
2. Ajustar `ConnectionFactory.java` se as credenciais do MySQL forem diferentes
3. Abrir o projeto no NetBeans e executar

## Status

Projeto acadêmico de 2020. Mantido como arquivo histórico — não recebe manutenção nem aceita PRs. As credenciais em `leia-me.txt` são apenas valores-padrão de desenvolvimento local.

## Licença

[MIT](LICENSE).
