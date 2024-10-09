-- variavel global nao declarada
print(b)
b = 10
print(b)
print()

print(type("Hello world"))  --> string
print(type(10.4*3))         --> number
print(type(print))          --> function
print(type(type))           --> function
print(type(true))           --> boolean
print(type(nil))            --> nil
print(type(type(X)))        --> string

-- inicie numeros hexadecimais com '0x'
rr = 0x10 + 0xf
print(rr)

hello = "hello!"
print(#hello)

-- printa valores na mesma linha
for i = 1, 10 do
    io.write(i .. " ")
end

for i = 1, 10 do
    io.write("s" .. "")
end

-- end
io.write("\n")


a = {} -- cria uma tabela e armazena sua referência em 'a'
k = "x"
a[k] = 10 -- nova entrada, com chave="x" e valor=10
a[20] = "great" -- nova entrada, com chave=20 e valor="great"
print(a["x"]) --> 10
k = 20
print(a[k]) --> "great"
a["x"] = a["x"] + 1 -- incrementa entrada "x"
print(a["x"]) --> 11


--p50