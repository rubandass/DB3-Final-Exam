select
 @@SERVERNAME [server name],
 DB_NAME() [database name],
 SCHEMA_NAME(schema_id) [schema name], 
 name [table name],
 object_id,
 "fully qualified name (FQN)" =
 concat(QUOTENAME(DB_NAME()), '.', QUOTENAME(SCHEMA_NAME(schema_id)),'.', QUOTENAME(name))
from sys.tables
where type = 'U' -- USER_TABLE