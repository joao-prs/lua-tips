-- Configurações
local database = "nome_do_banco"
local username = "usuario"
local password = "senha"
local output_dir = "/caminho/para/o/diretorio/de/backup"

-- verifica se um diretório existe
function directory_exists(path)
    local f = io.open(path, "r")
    if f ~= nil then
        io.close(f)
        return true
    else
        return false
    end
end

-- cria um diretório se ele não existir
function create_directory_if_not_exists(directory)
    if not directory_exists(directory) then
        os.execute("mkdir -p " .. directory)
        print("Diretório criado: " .. directory)
    else
        print("Diretório já existe: " .. directory)
    end
end

-- executar o comando mysqldump
function execute_mysqldump(database, username, password, output_dir)
    local command = string.format("mysqldump -u %s -p%s %s > %s/%s.sql",
                                   username, password, database, output_dir, database)
    print("Executando mysqldump: " .. command)
    os.execute(command)
end

create_directory_if_not_exists(output_dir)
execute_mysqldump(database, username, password, output_dir)