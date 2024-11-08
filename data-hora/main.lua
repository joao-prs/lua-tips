-- Script para exibir data e hora atuais em Lua

local current_time = os.date("*t")  -- Obtem a data e hora atual

local dia = current_time.day
local mes = current_time.month
local ano = current_time.year

local hora = current_time.hour
local minuto = current_time.min
local segundo = current_time.sec

print("------------------\n")
print(string.format(" Data: %02d/%02d/%04d", dia, mes, ano))
print(string.format(" Hora:  %02d:%02d:%02d", hora, minuto, segundo))
print("\n------------------")