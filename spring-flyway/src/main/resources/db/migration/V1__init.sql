CREATE TABLE user_app (
     id serial PRIMARY KEY,
     name varchar(255) NOT NULL,
     age integer NOT NULL,
     user_status int8 NOT NULL
);

CREATE TABLE user_status (
     id serial PRIMARY KEY,
     status varchar(20) NOT NULL
);

alter table user_app
    add constraint user_app_user_status_status_fk
        foreign key (user_status) references user_status (id);
