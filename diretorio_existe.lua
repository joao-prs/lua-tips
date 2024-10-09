-- Função para verificar se um diretório existe
function directoryExists(path)
    local f = io.open(path, "r")
    if f then
        f:close()
        return true
    else
        return false
    end
end

-- Função para criar um diretório
function createDirectory(path)
    local command = "mkdir " .. path
    local status, result, code = os.execute(command)
    if status then
        print("Diretório criado com sucesso!")
    else
        print("Erro ao criar diretório: " .. result)
    end
end

-- Pergunta pelo nome do diretório
print("Digite o nome do diretório:")
local directoryName = io.read()

-- Verifica se o diretório existe
if directoryExists(directoryName) then
    print("O diretório já existe.")
else
    print("O diretório não existe. Deseja criar? (sim/não)")
    local answer = io.read()
    if answer == "sim" then
        createDirectory(directoryName)
    else
        print("Operação cancelada.")
    end
end
