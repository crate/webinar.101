CREATE TABLE IF NOT EXISTS "logs"."apache" (
   "agent" STRING INDEX USING FULLTEXT WITH (
      analyzer = 'standard'
   ),
   "code" STRING,
   "host" ip,
   "path" STRING,
   "referer" STRING INDEX USING FULLTEXT WITH (
      analyzer = 'standard'
   ),
   "size" LONG,
   "time" TIMESTAMP,
   "user" STRING INDEX USING FULLTEXT WITH (
      analyzer = 'standard'
   ),
   "month" TIMESTAMP GENERATED ALWAYS AS date_trunc('month', "time"),
   "referer_domain" as coalesce(regexp_matches("referer", ':\/\/www\.?([^\/]+)[\/]?')[1], null),
   "app_id" as coalesce(regexp_matches("referer", ':\/\/[w\.]*([^\/]+)[\/]?')[1], null)
)
CLUSTERED INTO 6 SHARDS
PARTITIONED BY ("month")
