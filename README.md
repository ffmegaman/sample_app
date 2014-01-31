# Ruby on Rails Tutorial: sampe application

This is the sample application for rails tutorial by mhartl.

Current Bugs:
1. Drop Down Menu doesnt work sometimes both in prod and dev
	a. Before production push, precompile assets by bundle exec rake assets:precompile
	b. Before starting rails server, rake assets:clean