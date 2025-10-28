-- *********************************************
-- * SQL SQLite generation                     
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.2              
-- * Generator date: Sep 14 2021              
-- * Generation date: Tue Oct 28 12:13:35 2025 
-- * LUN file: C:\Users\Laffineur\Documents\school\m2\INFOM218 - Évolution de systèmes logiciels\NewsBlur\PROJECT-NEWSBLUR-GR01.lun 
-- * Schema: PS-SCH/1 
-- ********************************************* 


-- Database Section
-- ________________ 


-- Tables Section
-- _____________ 

create table classifiers (
     _id varchar(255) not null,
     key varchar(255) not null,
     type varchar(255) not null,
     value varchar(255) not null);

create table comment_replies (
     reply_date varchar(255) not null,
     reply_shortdate varchar(255) not null,
     _id varchar(255) not null,
     comment_id varchar(255) not null,
     reply_text varchar(255) not null,
     reply_userid varchar(255) not null,
     reply_isplaceholder varchar(255) not null);

create table comments (
     comment_date varchar(255) not null,
     comment_shareddate varchar(255) not null,
     comment_source_user varchar(255) not null,
     _id varchar(255) not null,
     comment_liking_users varchar(255) not null,
     comment_byfriend varchar(255) not null,
     comment_storyid varchar(255) not null,
     comment_text varchar(255) not null,
     comment_userid varchar(255) not null,
     comment_ispseudo varchar(255) not null,
     comment_isplaceholder varchar(255) not null);

create table feed_authors (
     feed_id varchar(255) not null,
     author varchar(255) not null);

create table feed_tags (
     feed_id varchar(255) not null,
     tag varchar(255) not null);

create table feeds (
     _id numeric(255) not null,
     active varchar(255) not null,
     address varchar(255) not null,
     favicon_color varchar(255) not null,
     favicon_url varchar(255) not null,
     ps numeric(255) not null,
     ng numeric(255) not null,
     nt numeric(255) not null,
     favicon_fade varchar(255) not null,
     favicon_text_color varchar(255) not null,
     favicon_border varchar(255) not null,
     link varchar(255) not null,
     subscribers varchar(255) not null,
     feed_name varchar(255) not null,
     open numeric(255) not null,
     average_stories_per_month numeric(255) not null,
     last_story_date varchar(255) not null,
     updated_seconds numeric(255) not null,
     notification_types varchar(255) not null,
     notification_filter varchar(255) not null,
     fetch_pending varchar(255) not null);

create table folders (
     folder_name varchar(255) not null,
     folder_parent_names varchar(255) not null,
     folder_children_names varchar(255) not null,
     folder_feedids varchar(255) not null);

create table user_table (
     photo_url varchar(255) not null,
     _id numeric(255) not null,
     username varchar(255) not null,
     location varchar(255) not null);

create table reading_session (
     session_story_hash varchar(255) not null);

create table saved_search (
     saved_search_title varchar(255) not null,
     saved_search_favicon varchar(255) not null,
     saved_search_address varchar(255) not null,
     saved_search_query varchar(255) not null,
     saved_search_feed_id char(1) not null);

create table social_feeds (
     _id numeric(255) not null,
     ps numeric(255) not null,
     ng numeric(255) not null,
     nt numeric(255) not null,
     social_feed_icon varchar(255) not null,
     social_feed_title varchar(255) not null,
     social_feed_name varchar(255) not null);

create table socialfeed_story_map (
     socialfeed_story_storyid varchar(255) not null,
     socialfeed_story_user_id numeric(255) not null);

create table starred_counts (
     count numeric(255) not null,
     tag varchar(255) not null,
     feed_id varchar(255) not null);

create table stories (
     story_hash varchar(255) not null,
     authors varchar(255) not null,
     content varchar(255) not null,
     short_content varchar(255) not null,
     timestamp numeric(255) not null,
     sharedDate numeric(255) not null,
     feed_id numeric(255) not null,
     _id varchar(255) not null,
     intelligence_authors numeric(255) not null,
     intelligence_feed numeric(255) not null,
     intelligence_tags numeric(255) not null,
     intelligence_title numeric(255) not null,
     intelligence_total numeric(255) not null,
     socialUserId varchar(255) not null,
     sourceUserId varchar(255) not null,
     shared_user_ids varchar(255) not null,
     comment_user_ids varchar(255) not null,
     tags varchar(255) not null,
     user_tags varchar(255) not null,
     permalink varchar(255) not null,
     read numeric(255) not null,
     starred numeric(255) not null,
     starred_date numeric(255) not null,
     infrequent numeric(255) not null,
     title varchar(255) not null,
     image_urls varchar(255) not null,
     last_read_date numeric(255) not null,
     search_hit varchar(255) not null,
     thumbnail_url varchar(255) not null,
     has_modifications numeric(255) not null);

create table story_actions (
     _id numeric(255) not null,
     time numeric(255) not null,
     tried numeric(255) not null,
     action_params varchar(255) not null);

create table storytext (
     story_hash varchar(255) not null,
     story_text varchar(255) not null);

create table sync_metadata (
     key varchar(255) not null,
     value varchar(255) not null);

create table notify_dimiss (
     story_hash varchar(255) not null,
     time numeric(255) not null);


-- Index Section
-- _____________ 

