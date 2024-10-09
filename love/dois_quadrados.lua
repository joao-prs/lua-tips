-- Variáveis para a posição dos quadrados
local square1_x, square1_y = 100, 100
local square2_x, square2_y = 300, 100

-- Variáveis para o movimento do quadrado
local moveSpeed = 100 -- pixels por segundo

function love.load()
    love.graphics.setBackgroundColor(255, 255, 255) -- Definir a cor de fundo para branco
end

function love.update(dt)
    -- Movimento do quadrado 2 com as teclas de seta
    if love.keyboard.isDown("up") then
        square2_y = square2_y - moveSpeed * dt
    elseif love.keyboard.isDown("down") then
        square2_y = square2_y + moveSpeed * dt
    elseif love.keyboard.isDown("left") then
        square2_x = square2_x - moveSpeed * dt
    elseif love.keyboard.isDown("right") then
        square2_x = square2_x + moveSpeed * dt
    end
end

function love.draw()
    -- Desenhar o primeiro quadrado
    love.graphics.setColor(255, 0, 0) -- Cor vermelha
    love.graphics.rectangle("fill", square1_x, square1_y, 50, 50)

    -- Desenhar o segundo quadrado
    love.graphics.setColor(0, 0, 255) -- Cor azul
    love.graphics.rectangle("fill", square2_x, square2_y, 50, 50)
end
