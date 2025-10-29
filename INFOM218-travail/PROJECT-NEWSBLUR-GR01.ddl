-- *********************************************
-- * SQL SQLite generation                     
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.2              
-- * Generator date: Sep 14 2021              
-- * Generation date: Wed Oct 29 09:46:13 2025 
-- * LUN file: C:\Users\Laffineur\Documents\GitHub\NewsBlur\INFOM218-travail\PROJECT-NEWSBLUR-GR01.lun 
-- * Schema: PS-SCH/1 
-- ********************************************* 


-- Database Section
-- ________________ 


-- Tables Section
-- _____________ 

create table classifiers (
     _id TEXT not null,
     key TEXT not null,
     type TEXT not null,
     value TEXT not null);

create table comment_replies (
     reply_date TEXT not null,
     reply_shortdate TEXT not null,
     _id TEXT not null,
     comment_id TEXT not null,
     reply_text TEXT not null,
     reply_userid TEXT not null,
     reply_isplaceholder TEXT not null,
     constraint IDcomment_replies primary key (_id));

create table comments (
     comment_date TEXT not null,
     comment_shareddate TEXT not null,
     comment_source_user TEXT not null,
     _id TEXT not null,
     comment_liking_users TEXT not null,
     comment_byfriend TEXT not null,
     comment_storyid TEXT not null,
     comment_text TEXT not null,
     comment_userid TEXT not null,
     comment_ispseudo TEXT not null,
     comment_isplaceholder TEXT not null,
     constraint IDcomments primary key (_id));

create table feed_authors (
     feed_id TEXT not null,
     author TEXT not null);

create table feed_tags (
     feed_id TEXT not null,
     tag TEXT not null);

create table feeds (
     _id INT not null,
     active TEXT not null,
     address TEXT not null,
     favicon_color TEXT not null,
     favicon_url TEXT not null,
     ps INT not null,
     ng INT not null,
     nt INT not null,
     favicon_fade TEXT not null,
     favicon_text_color TEXT not null,
     favicon_border TEXT not null,
     link TEXT not null,
     subscribers TEXT not null,
     feed_name TEXT not null,
     open INT not null,
     average_stories_per_month INT not null,
     last_story_date TEXT not null,
     updated_seconds INT not null,
     notification_types TEXT not null,
     notification_filter TEXT not null,
     fetch_pending TEXT not null,
     constraint IDfeeds primary key (_id));

create table folders (
     folder_name TEXT not null,
     folder_parent_names TEXT not null,
     folder_children_names TEXT not null,
     folder_feedids TEXT not null,
     constraint IDfolders primary key (folder_name));

create table notify_dimiss (
     story_hash TEXT not null,
     time INT not null,
     constraint IDnotify_dimiss primary key (story_hash));

create table reading_session (
     session_story_hash TEXT not null);

create table saved_search (
     saved_search_title TEXT not null,
     saved_search_favicon TEXT not null,
     saved_search_address TEXT not null,
     saved_search_query TEXT not null,
     saved_search_feed_id char(1) not null);

create table social_feeds (
     _id INT not null,
     ps INT not null,
     ng INT not null,
     nt INT not null,
     social_feed_icon TEXT not null,
     social_feed_title TEXT not null,
     social_feed_name TEXT not null,
     constraint IDsocial_feeds primary key (_id));

create table socialfeed_story_map (
     socialfeed_story_storyid TEXT not null,
     socialfeed_story_user_id INT not null,
     constraint IDsocialfeed_story_map primary key (socialfeed_story_storyid, socialfeed_story_user_id));

create table starred_counts (
     count INT not null,
     tag TEXT not null,
     feed_id TEXT not null);

create table stories (
     story_hash TEXT not null,
     authors TEXT not null,
     content TEXT not null,
     short_content TEXT not null,
     timestamp INT not null,
     sharedDate INT not null,
     feed_id INT not null,
     _id TEXT not null,
     intelligence_authors INT not null,
     intelligence_feed INT not null,
     intelligence_tags INT not null,
     intelligence_title INT not null,
     intelligence_total INT not null,
     socialUserId TEXT not null,
     sourceUserId TEXT not null,
     shared_user_ids TEXT not null,
     comment_user_ids TEXT not null,
     tags TEXT not null,
     user_tags TEXT not null,
     permalink TEXT not null,
     read INT not null,
     starred INT not null,
     starred_date INT not null,
     infrequent INT not null,
     title TEXT not null,
     image_urls TEXT not null,
     last_read_date INT not null,
     search_hit TEXT not null,
     thumbnail_url TEXT not null,
     has_modifications INT not null,
     constraint IDstories primary key (story_hash),
     constraint IDstories_1 unique (_id));

create table story_actions (
     _id INT not null,
     time INT not null,
     tried INT not null,
     action_params TEXT not null,
     constraint IDstory_actions primary key (_id));

create table storytext (
     story_hash TEXT not null,
     story_text TEXT not null);

create table sync_metadata (
     key TEXT not null,
     value TEXT not null,
     constraint IDsync_metadata primary key (key));

create table user_table (
     photo_url TEXT not null,
     _id INT not null,
     username TEXT not null,
     location TEXT not null,
     constraint IDuser_table primary key (_id));


-- Index Section
-- _____________ 

