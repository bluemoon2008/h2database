-- Copyright 2004-2014 H2 Group. Multiple-Licensed under the MPL 2.0,
-- and the EPL 1.0 (http://h2database.com/html/license.html).
-- Initial Developer: H2 Group
--

create memory table test(id int primary key, name varchar(255));
> ok

insert into test values(1, 'Hello');
> update count: 1

select nullif(null, null) xn, nullif('a', 'a') xn, nullif('1', '2') x1 from test;
> XN   XN   X1
> ---- ---- --
> null null 1
> rows: 1
