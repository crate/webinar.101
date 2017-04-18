CREATE TABLE sensordata (
  "ts" TIMESTAMP,
  "name" STRING,
  INDEX name_ft using fulltext (name),
  "day" AS date_trunc('day', ts)
) CLUSTERED INTO 6 SHARDS PARTITIONED BY ("day");
