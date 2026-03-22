create database script_bd_biblioteca_pessoal_v1;
use script_bd_biblioteca_pessoal_v1;
/* tabela usuario */

create table usuario(
	id_usuario int primary key auto_increment,
    nome varchar(255) not null ,
    email varchar(128) not null unique, 
    data_cadastro date default (current_date) not null
);
/* tabela categoria */

create table categoria(
	id_categoria int primary key auto_increment,
    nome varchar(255) not null unique,
    descricao text not null,
    data_cadastro timestamp,
    data_atualizacao timestamp
);
/* tabela autor */

create table autor(
	id_autor int primary key auto_increment,
    nome varchar(255) not null unique,
    ano_nascimento YEAR not null,
    ano_falecimento YEAR,
    apresentacao TEXT not null,
    data_cadastro timestamp,
    data_atualizacao timestamp
);
/* tabela editora */

create table editora(
	id_editora int primary key  auto_increment,
    nome varchar(255) not null unique,
    pais varchar(64) not null,
    estado varchar(64) not null,
    cidade varchar(64) not null,
	data_cadastro timestamp,
    data_atualizacao timestamp
    
);
/* tabela livro */

create table livro(
	id_livro int primary key auto_increment,
    id_usuario int,
    id_categoria int,
    id_autor int,
    id_editora int,
    titulo varchar(255) not null, 
    sinopse varchar(255) not null,
    ano_publicacao year, 
    lido boolean default false,
    data_cadastro timestamp,
    data_atualizacao timestamp,
    
    foreign key (id_usuario) references usuario(id_usuario) ON DELETE CASCADE, 
    foreign key (id_categoria) references categoria(id_categoria),
    foreign key (id_autor) references autor(id_autor),
    foreign key (id_editora) references editora(id_editora)
    
    
);

show tables;