create table library_book_quantity
(
    id       bigint generated by default as identity
        primary key,
    book_id  bigint,
    quantity bigint not null
);

alter table library_book_quantity
    owner to postgres;

create table loan_book_quantity
(
    id       bigint generated by default as identity
        primary key,
    book_id  bigint,
    quantity bigint not null
);

alter table loan_book_quantity
    owner to postgres;

create table users
(
    id      bigint generated by default as identity
        primary key,
    subject varchar(255)
);

alter table users
    owner to postgres;

create table book_loan_entity
(
    id                    bigint generated by default as identity
        primary key,
    loan_date             timestamp(6),
    return_date           timestamp(6),
    loan_book_quantity_id bigint
        constraint ukci0oxx7106lkabfrgh7e3u700
            unique
        constraint fkb6x65ogsg8rmpofp9bwd1x116
            references loan_book_quantity,
    user_id               bigint not null
        constraint fkjj72tmj73va9675w0ufrhybk5
            references users
);

alter table book_loan_entity
    owner to postgres;