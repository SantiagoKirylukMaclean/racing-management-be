create table teams_management.teams
(
    id         bigint auto_increment
        primary key,
    created_at datetime(6)  not null,
    updated_at datetime(6)  not null,
    name       varchar(255) not null
);

create table teams_management.drivers
(
    id         bigint auto_increment
        primary key,
    created_at datetime(6)  not null,
    updated_at datetime(6)  not null,
    first_name varchar(255) not null,
    last_name  varchar(255) not null,
    team_id    bigint       null,
    constraint FKcay8hmpefrncg4apmusc0mkth
        foreign key (team_id) references teams_management.teams (id)
);

create table teams_management.championships
(
    id         bigint auto_increment
        primary key,
    created_at datetime(6) not null,
    updated_at datetime(6) not null,
    year       int         not null
);

create table teams_management.circuits
(
    id         bigint auto_increment
        primary key,
    created_at datetime(6)  not null,
    updated_at datetime(6)  not null,
    length     double       not null,
    location   varchar(255) not null,
    name       varchar(255) not null
);

create table teams_management.races
(
    id              bigint auto_increment
        primary key,
    created_at      datetime(6)  not null,
    updated_at      datetime(6)  not null,
    date            varchar(255) not null,
    championship_id bigint       null,
    circuit_id      bigint       null,
    constraint FKdb6gpekdtu4b1bthppiwm2kme
        foreign key (championship_id) references teams_management.championships (id),
    constraint FKsmryk5wkwqwa2wukhuv7amoab
        foreign key (circuit_id) references teams_management.circuits (id)
);

create table teams_management.race_results
(
    id           bigint auto_increment
        primary key,
    created_at   datetime(6)                      not null,
    updated_at   datetime(6)                      not null,
    is_dnf       bit                              not null,
    points       int                              not null,
    position     int                              not null,
    driver_id    bigint                           null,
    session_type varchar(50) default 'QUALIFYING' not null,
    race_id      bigint                           not null,
    constraint FKe9qpq6a12gf5uj6fkhyxi3lej
        foreign key (driver_id) references teams_management.drivers (id),
    constraint fk_race_results_race_id
        foreign key (race_id) references teams_management.races (id)
);



