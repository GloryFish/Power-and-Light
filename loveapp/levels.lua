-- 
--  levels.lua
--  powerandlight
--  
--  Created by Jay Roberts on 2011-03-25.
--  Copyright 2011 GloryFish.org. All rights reserved.
-- 

require 'vector'

levels = {}

levels[1] = {}
levels[1].name = 'Test Level'
levels[1].dwellings = {}

levels[1].dwellings[1] = {
  position = vector(100, 100)
}

levels[1].dwellings[2] = {
  position = vector(300, 200)
}

levels[1].dwellings[3] = {
  position = vector(500, 150)
}