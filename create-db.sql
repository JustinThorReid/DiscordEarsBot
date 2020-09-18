CREATE TABLE person (
    idPerson integer not null primary key AUTOINCREMENT, 
    name text not null
);
create unique index unique_name on person (name);

create table message (
    idMessage integer not null primary key autoincrement, 
    idPerson integer not null, 
    date datetime DEFAULT CURRENT_TIMESTAMP,
    msg text not null,
    FOREIGN KEY(idPerson) REFERENCES person(idPerson)
);
create index message_date on message (date);