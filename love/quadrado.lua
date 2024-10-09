-- Quadrado.lua

-- Definindo as dimensões do quadrado
local squareSize = 50
local squareX = 0
local squareY = 0

-- Configurações iniciais
function love.load()
    love.window.setTitle("Quadrado Rosa")
    love.window.setMode(800, 600)
end

-- Atualização de estado
function love.update(dt)
    squareX = squareX + 100 * dt
    squareY = squareY + 200 * dt
    
    if squareX > love.graphics.getWidth() then
        squareX = -squareSize
    end
    if squareY > love.graphics.getHeight() then
        squareY = -squareSize
    end
end

-- Desenhar na tela
function love.draw()
    love.graphics.setColor(1, 0, 1)
    love.graphics.rectangle("fill", squareX, squareY, squareSize, squareSize)
end
