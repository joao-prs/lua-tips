-- QuadradoGirando.lua

-- Configurações iniciais
function love.load()
    love.window.setTitle("Quadrado Girando")
    love.window.setMode(800, 600)
    
    -- Posição e tamanho do quadrado
    squareSize = 100
    squareX = love.graphics.getWidth() / 2
    squareY = love.graphics.getHeight() / 2
    
    -- Ângulo inicial do quadrado
    angle = 0
    
    -- Velocidade de rotação
    rotationSpeed = 2 -- radianos por segundo
end

-- Atualização de estado
function love.update(dt)
    -- Atualizando o ângulo do quadrado para fazer a rotação
    angle = angle + rotationSpeed * dt
end

-- Desenhar na tela
function love.draw()
    love.graphics.setColor(1, 0, 1) -- Cor rosa
    love.graphics.push() -- Salva a matriz de transformação atual
    love.graphics.translate(squareX, squareY) -- Move para a posição do quadrado
    love.graphics.rotate(angle) -- Rotação do quadrado
    love.graphics.rectangle("fill", -squareSize / 2, -squareSize / 2, squareSize, squareSize) -- Desenha o quadrado centralizado
    love.graphics.pop() -- Restaura a matriz de transformação
end