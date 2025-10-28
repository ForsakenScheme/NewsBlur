-- feeds
CREATE TABLE feeds (
    _id INTEGER PRIMARY KEY,
    active TEXT,
    address TEXT,
    favicon_color TEXT,
    favicon_url TEXT,
    ps INTEGER,
    ng INTEGER,
    nt INTEGER,
    favicon_fade TEXT,
    favicon_text_color TEXT,
    favicon_border TEXT,
    link TEXT,
    subscribers TEXT,
    feed_name TEXT,
    opens INTEGER,
    average_stories_per_month INTEGER,
    last_story_date TEXT,
    updated_seconds INTEGER,
    notification_types TEXT,
    notification_filter TEXT,
    fetch_pending TEXT
);

-- social_feeds
CREATE TABLE social_feeds (
    _id INTEGER PRIMARY KEY,
    ps INTEGER,
    ng INTEGER,
    nt INTEGER,
    social_feed_icon TEXT,
    social_feed_title TEXT,
    social_feed_name TEXT
);

-- folders
CREATE TABLE folders (
    folder_name TEXT PRIMARY KEY,
    folder_parent_names TEXT,
    folder_children_names TEXT,
    folder_feedids TEXT
);

-- user_table
CREATE TABLE user_table (
    photo_url TEXT,
    _id INTEGER PRIMARY KEY,
    username TEXT,
    location TEXT
);

-- stories
CREATE TABLE stories (
    story_hash TEXT PRIMARY KEY,
    authors TEXT,
    content TEXT,
    short_content TEXT,
    timestamp INTEGER,
    sharedDate INTEGER,
    feed_id INTEGER,
    _id TEXT,
    intelligence_authors INTEGER,
    intelligence_feed INTEGER,
    intelligence_tags INTEGER,
    intelligence_title INTEGER,
    intelligence_total INTEGER,
    socialUserId TEXT,
    sourceUserId TEXT,
    shared_user_ids TEXT,
    comment_user_ids TEXT,
    tags TEXT,
    user_tags TEXT,
    permalink TEXT,
    read INTEGER,
    starred INTEGER,
    starred_date INTEGER,
    infrequent INTEGER,
    title TEXT,
    image_urls TEXT,
    last_read_date INTEGER,
    search_hit TEXT,
    thumbnail_url TEXT,
    has_modifications INTEGER
);

-- reading_session
CREATE TABLE reading_session (
    session_story_hash TEXT
);

-- storytext
CREATE TABLE storytext (
    story_hash TEXT,
    story_text TEXT
);

-- comments
CREATE TABLE comments (
    comment_date TEXT,
    comment_shareddate TEXT,
    comment_source_user TEXT,
    _id TEXT PRIMARY KEY,
    comment_liking_users TEXT,
    comment_byfriend TEXT,
    comment_storyid TEXT,
    comment_text TEXT,
    comment_userid TEXT,
    comment_ispseudo TEXT,
    comment_isplaceholder TEXT
);

-- comment_replies
CREATE TABLE comment_replies (
    reply_date TEXT,
    reply_shortdate TEXT,
    _id TEXT PRIMARY KEY,
    comment_id TEXT,
    reply_text TEXT,
    reply_userid TEXT,
    reply_isplaceholder TEXT
);

-- classifiers
CREATE TABLE classifiers (
    _id TEXT,
    key TEXT,
    type TEXT,
    value TEXT
);

-- socialfeed_story_map
CREATE TABLE socialfeed_story_map (
    socialfeed_story_storyid TEXT NOT NULL,
    socialfeed_story_user_id INTEGER NOT NULL,
    PRIMARY KEY (socialfeed_story_storyid, socialfeed_story_user_id)
);

-- starred_counts
CREATE TABLE starred_counts (
    count INTEGER NOT NULL,
    tag TEXT,
    feed_id TEXT
);

-- saved_search
CREATE TABLE saved_search (
    saved_search_title TEXT,
    saved_search_favicon TEXT,
    saved_search_address TEXT,
    saved_search_query TEXT,
    saved_search_feed_id
);

-- story_actions
CREATE TABLE story_actions (
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    time INTEGER NOT NULL,
    tried INTEGER,
    action_params TEXT
);

-- notify_dimiss (name as defined in code)
CREATE TABLE notify_dimiss (
    story_hash TEXT,
    time INTEGER NOT NULL
);

-- feed_tags
CREATE TABLE feed_tags (
    feed_id TEXT,
    tag TEXT
);

-- feed_authors
CREATE TABLE feed_authors (
    feed_id TEXT,
    author TEXT
);

-- sync_metadata
CREATE TABLE sync_metadata (
    key TEXT PRIMARY KEY,
    value TEXT
);