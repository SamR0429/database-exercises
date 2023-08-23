create database practice_adlister;


use practice_adlister;
create table users
(
    id            int unsigned not null auto_increment,
    user_email    varchar(80)  not null,
    user_password varchar(50)  not null,
    PRIMARY KEY (id),
    unique (user_email)

);

create table posts
(
    id               int unsigned not null auto_increment,
    post_title       varchar(40)  not null,
    post_description text,
    user_id          int unsigned not null,
    primary key (id),
    constraint users_posts_id foreign key (user_id) references users (id)
);



create table categories
(
    id            int unsigned not null auto_increment,
    category_name varchar(20)  not null,
    unique (category_name),
    primary key (id)
);



create table post_categories
(
    post_id     int unsigned not null,
    constraint post_categories_post_id_fk foreign key (post_id) references posts (id),
    category_id int unsigned not null,
    constraint post_categories_category_id_fk foreign key (category_id) references categories (id)
);


