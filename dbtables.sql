CREATE DATABASE associapress;

CREATE USER 'associapress'@'localhost' IDENTIFIED BY 'zu9ao2Ae';
GRANT ALL ON associapress.* TO 'associapress'@'localhost';
grant SELECT on associapress.* to 'associapressro'@'%' identified by 'associapressro';

use associapress;

CREATE TABLE SYNC
(
 network           VARCHAR(15) PRIMARY KEY,
 block_num         BIGINT NOT NULL
) ENGINE=InnoDB;


CREATE TABLE ELECTION
(
 seq         BIGINT UNSIGNED PRIMARY KEY,
 block_num   BIGINT NOT NULL,
 block_time  DATETIME NOT NULL,
 trx_id      VARCHAR(64) NOT NULL,
 user        VARCHAR(13) NOT NULL,
 data        TEXT
)  ENGINE=InnoDB;

CREATE INDEX ELECTION_I01 ON ELECTION (block_num);
CREATE INDEX ELECTION_I02 ON ELECTION (block_time);
CREATE INDEX ELECTION_I06 ON ELECTION (user, block_num);

