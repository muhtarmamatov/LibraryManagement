create table books (
       book_id int4 not null,
        book_author varchar(255),
        book_genre varchar(255),
        book_name varchar(255),
        no_of_copies int4,
        primary key (book_id)
);

create table borrow (
       borrow_id  serial not null,
        book_id int4,
        due_date timestamp,
        issue_date timestamp,
        return_date timestamp,
        user_id int4,
        primary key (borrow_id)
);

create table role (
       role_id  serial not null,
        role_name varchar(255),
        primary key (role_id)
);

create table user_role (
       user_id int4 not null,
        role_id int4 not null,
        primary key (user_id, role_id)
);

create table users (
       user_id int4 not null,
        name varchar(255),
        password varchar(255),
        username varchar(255),
        primary key (user_id)
);

alter table user_role
   add constraint FK_role_user
   foreign key (role_id)
   references role;

alter table user_role
   add constraint FK_user_role
   foreign key (user_id)
   references users;