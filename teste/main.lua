function love.load()
    love.window.setTitle("Pixels Interativos")
    love.window.setMode(800, 600)

    pixels = {} -- Tabela para armazenar os pixels

    for i = 1, 1000 do -- Gerar 1000 pixels aleatórios
        local pixel = {
            x = love.math.random(0, love.graphics.getWidth()), -- Posição x aleatória dentro da janela
            y = love.math.random(0, love.graphics.getHeight()), -- Posição y aleatória dentro da janela
            color = { -- Cor aleatória em RGB
                love.math.random(0, 10),
                love.math.random(0, 10),
                love.math.random(0, 10)
            },
            size = 1, -- Tamanho inicial
            max_size = 5 -- Tamanho máximo
        }
        table.insert(pixels, pixel) -- Adicionar o pixel à tabela
    end
end

function love.update(dt)
    local mouseX, mouseY = love.mouse.getPosition()

    for _, pixel in ipairs(pixels) do
        local distX = mouseX - pixel.x
        local distY = mouseY - pixel.y
        local distance = math.sqrt(distX * distX + distY * distY)

        if distance < 100 then -- Se o cursor estiver próximo
            -- Aumentar o tamanho do pixel até o tamanho máximo
            pixel.size = math.min(pixel.size + dt * 25, pixel.max_size)
        else
            -- Reduzir o tamanho do pixel de volta ao tamanho inicial
            pixel.size = math.max(pixel.size - dt * 25, 1)
        end

        -- Atualizar a posição
        pixel.x = pixel.x + love.math.random(-50, 50) * dt
        pixel.y = pixel.y + love.math.random(-50, 50) * dt

        -- Verificar limites da janela e rebater
        if pixel.x < 0 or pixel.x > love.graphics.getWidth() then
            pixel.x = love.math.random(0, love.graphics.getWidth())
        end
        if pixel.y < 0 or pixel.y > love.graphics.getHeight() then
            pixel.y = love.math.random(0, love.graphics.getHeight())
        end
    end
end

function love.draw()
    for _, pixel in ipairs(pixels) do
        love.graphics.setColor(pixel.color)
        love.graphics.rectangle("fill", pixel.x, pixel.y, pixel.size, pixel.size) -- Desenhar o pixel
    end
end
