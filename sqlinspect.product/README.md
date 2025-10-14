.\sqlinspect_console.exe -consoleLog `
  -hotspotfinder JDBCHotspotFinder `
  -dialect mysql `
  -schema C:\Coding\Github_Repository\NewsBlur\docker\postgres\init.sql `
  -projectdir C:\Coding\Github_Repository\NewsBlur `
  -outdir C:\Coding\Github_Repository\NewsBlur\SQLInspectOut `
  -projectname NewsBlur

It uses 

MongoDB, Pymongo, & Mongoengine: Non-relational database, used to store stories, read stories, feed/page fetch histories, and proxied sites.
PostgreSQL: Relational database, used to store feeds, subscriptions, and user accounts.