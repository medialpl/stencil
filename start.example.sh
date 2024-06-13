# <theme_name> - string containing your theme name
# <theme_version_name> - string containing your theme variation name
# <channel_id> - number representing sales channel id to use (usually the default channel is 1)
# EXAMPLE: export THEME="cornerstone" STENCIL="start -v Bold -c 1"
export THEME="<theme_name>" STENCIL="start -v <theme_variation_name> -c <channel_id>"
docker-compose up
