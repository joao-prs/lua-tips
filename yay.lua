-- instalar pacote
local function instalarPacote(pacote)
    local comando = string.format("yay -S --noconfirm %s", pacote)
    local resultado = os.execute(comando)
    if resultado == 0 then
        print(string.format("Pacote %s instalado com sucesso.", pacote))
    else
        print(string.format("Erro ao instalar o pacote %s.", pacote))
    end
end

instalarPacote("ncdu")
