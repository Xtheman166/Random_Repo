require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'TOKEN HERE', client_id: CLIENT ID HERE, prefix: 'x'

#Commands

#To make sure the bot is online,

bot.command(:ping) do |event|
  event << 'pong!'
end


bot.command(:game, description: 'what do you think') do |event, *game|
    unless event.user.id == ID_here
           event.respond("wew lad")
                break
              end
            event.bot.game = game.join(' ')
            event.respond("Game set to `#{game.join(' ')}`")
end
