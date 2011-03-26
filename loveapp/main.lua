-- 
--  main.lua
--  xenofarm
--  
--  Created by Jay Roberts on 2011-01-20.
--  Copyright 2011 GloryFish.org. All rights reserved.
-- 

require 'middleclass'
require 'middleclass-extras'

require 'gamestate'
require 'scene_game'
require 'logger'

function love.load()
  love.graphics.setCaption('Department of Power and Light')

  -- Seed random
  local seed = os.time()
  math.randomseed(seed);
  math.random(); math.random(); math.random()  

  fonts = {
    small  = love.graphics.newFont('resources/fonts/expressway.ttf', 20),
    medium = love.graphics.newFont('resources/fonts/expressway.ttf', 24),
    large  = love.graphics.newFont('resources/fonts/expressway.ttf', 48)
  }

  music = {
    title = love.audio.newSource(love.sound.newDecoder('resources/music/mektaba.mp3', 512), 'stream'),
    game = love.audio.newSource(love.sound.newDecoder('resources/music/nomads.mp3', 512), 'stream'),
  }
  
  music.title:setLooping(true)
  music.game:setLooping(true)

  sounds = {
    -- drop = love.audio.newSource('resources/sounds/drop.mp3', 'static'),
  }
  
  Gamestate.registerEvents()
  Gamestate.switch(game)
end

function love.update(dt)
end
