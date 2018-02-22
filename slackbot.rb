require 'slack-notifier'

notifier = Slack::Notifier.new ENV['SLACK_URI']
notifier.ping "Something's wrong! Go to <#{@appLink}|#{@appName}> for details! "