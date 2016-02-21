set :application, "Testing"
set :domain,      "digoneiojc@ftp.cluster005.ovh.net"
set :deploy_to,   "/homez.2193/digoneiojc/www/test"
set :app_path,    "app"

set :repository,  "git@github.com:ZeratSadar/testing-prod.git"
set :scm,         :git
set :deploy_via,  :copy
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, or `none`

set :model_manager, "doctrine"
# Or: `propel`

role :web,        domain                         # Your HTTP server, Apache/etc
role :app,        domain # This may be the same as your `Web` server
role :db,         domain, :primary => true

set :use_sudo, false
set :use_composer, true
set  :keep_releases,  3

## Symfony2
set :shared_files, ["app/config/parameters.yml"]
set :shared_children, [app_path + "/logs", web_path + "/uploads", "vendor"]
set :use_composer, true
set :update_vendors, true

logger.level = Logger::MAX_LEVEL
# Be more verbose by uncommenting the following line
# logger.level = Logger::MAX_LEVEL