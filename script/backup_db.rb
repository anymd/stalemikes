# backup production db and import locally

heroku pgbackups:capture
$ curl -o latest.dump `heroku pgbackups:url`
pg_restore --verbose --clean --no-acl --no-owner -h localhost -U Ben -d stagetime_development latest.dump