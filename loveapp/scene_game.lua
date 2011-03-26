-- 
--  scene_game.lua
--  desert
--  
--  Created by Jay Roberts on 2011-01-06.
--  Copyright 2011 GloryFish.org. All rights reserved.
-- 

require 'logger'
require 'vector'
require 'level'

game = Gamestate.new()
game.level = ''

function game.enter(self, pre)
  self.log = Logger(vector(10, 10))
  
  self.level = Level()
end

function game.keypressed(self, key, unicode)
  if key == 'escape' then
    self:quit()
  end
end

function game.mousepressed(self, x, y, button)
end

function game.mousereleased(self, x, y, button)
end

function game.update(self, dt)
  self.level:update(dt)
end

function game.draw(self)
  self.level:draw()
  
  game.log:draw()
end


function game.quit(self)
  love.audio.stop(music.game)
  
  Gamestate.switch(intro)
end

function game.leave(self)
end