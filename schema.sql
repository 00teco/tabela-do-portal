-- Relacionamento 1:1

create table usuarios (
  id bigint generated always as identity primary key,
  email text not null
);

create table perfis (
  id bigint generated always as identity primary key,
  nome_completo text not null,
  usuario_id bigint unique references usuarios(id)
);

-- Relacionamento 1:N

create table professores (
  id bigint generated always as identity primary key,
  nome text not null
);

create table quizzes (
  id bigint generated always as identity primary key,
  titulo text not null,
  professor_id bigint references professores(id)
);

-- Relacionamento N:N

create table alunos (
  id bigint generated always as identity primary key,
  nome text not null
);

create table respostas (
  aluno_id bigint references alunos(id),
  quiz_id bigint references quizzes(id)
);
