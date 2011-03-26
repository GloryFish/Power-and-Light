-- 
--  level.lua
--  powerandlight
--  
--  Created by Jay Roberts on 2011-03-25.
--  Copyright 2011 GloryFish.org. All rights reserved.
-- 

require 'vector'
require 'middleclass'
require 'colors'
require 'levels'

Level = class('Level')

function Level:initialize()
  self.dwellingImage = love.graphics.newImage('resources/images/house.png')
  self:load(1)
end

function Level:load(num)
  self.currentLevel = levels[num]
end


function Level:update(dt)
end

function Level:draw()
  colors.orange:set()
  love.graphics.rectangle('fill', 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
  
  colors.black:set()
  love.graphics.draw(self.dwellingImage, love.graphics.getWidth() / 2, love.graphics.getHeight() / 2, 0, 0.5, 0.5, 32, 32)
end