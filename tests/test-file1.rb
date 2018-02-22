require './test_helper.rb'

run do
  @appName = 'MyApp'
  @appLink = 'https://myapp.com'

  begin
    @driver.get @appLink
    @driver.find_element(cssSelectorOfChoice: 'example')
    puts 'Congrats! Your app is up!'
  rescue
    puts 'Whoops! Something went wrong here :('
    load './slackbot.rb'
  end
end
