require("vector")
require("particle")
require("particle_system")

function love.load()
  width = love.graphics.getWidth()
  height = love.graphics.getHeight()
  textures = {}
  textures.heart = love.graphics.newImage("heart.png")
  textures.fusion = love.graphics.newImage("texture.png")
  system = ParticleSystem:create(width/2,height/2, 200)
  wind = Vector:create(0, 0)
  
  gravity = Vector:create(0, -0.05)
end

function love.draw()
  system:draw()
  
  end

function love.update(dt)
  wind = Vector:create(math.random(-0.005, 0.005), 0)
  system:applyForce(wind)
  system:applyForce(gravity)
  system:update()
end


function love.keypressed(key) 
end
