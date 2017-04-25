
-- Response codes other than 200
select count(*), code from logs.apache where code not in ('200') group by code order by 1 desc;

-- Popular paths that work
select count(*),  "path" from logs.apache where code = '200' group by 2 order by 1 desc;

-- Popular appIDs
select count(*),  "app_id" from logs.apache where app_id is not null group by 2 order by 1 desc;

-- Response sizes
select count(*), avg(size), path from logs.apache  where code = '200' group by 3 order by 1 desc;

-- User agents
select count(*) from logs.apache where match(agent, 'chrome');
select count(*) from logs.apache where match(agent, 'firefox');
select count(*) from logs.apache where match(agent, 'edge');
select count(*) from logs.apache where match(agent, 'opera');
