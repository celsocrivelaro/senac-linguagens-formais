# ============================================================
# 1. MATCH DE VALOR DE UMA STRING
# ============================================================

# =~ retorna o índice onde o padrão foi encontrado, ou nil
email = "usuario@email.com"
if email =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  puts "Email válido: #{email}"
else
  puts "Email inválido"
end
# => Email válido: usuario@email.com

# .match? retorna true/false sem criar objetos de captura (mais eficiente)
cep = "01310-100"
puts cep.match?(/\A\d{5}-\d{3}\z/) # => true

cep_invalido = "1234-56"
puts cep_invalido.match?(/\A\d{5}-\d{3}\z/) # => false

# .match retorna um MatchData com grupos de captura
data = "2024-03-15"
if m = data.match(/\A(\d{4})-(\d{2})-(\d{2})\z/)
  puts "Ano: #{m[1]}, Mês: #{m[2]}, Dia: #{m[3]}"
end
# => Ano: 2024, Mês: 03, Dia: 15

# Grupos de captura nomeados
telefone = "(11) 98765-4321"
if m = telefone.match(/\((?<ddd>\d{2})\) (?<numero>[\d-]+)/)
  puts "DDD: #{m[:ddd]}, Número: #{m[:numero]}"
end
# => DDD: 11, Número: 98765-4321


# ============================================================
# 2. BUSCA DE SUBSTRING
# ============================================================

texto = "O Ruby foi criado por Matz em 1995 no Japão."

# .scan retorna todas as ocorrências como array
numeros = texto.scan(/\d+/)
puts numeros.inspect # => ["1995"]

palavras_maiusculas = texto.scan(/[A-ZÁÀÃÂÉÊÍÓÕÔÚÜ][a-záàãâéêíóõôúü]+/)
puts palavras_maiusculas.inspect # => ["Ruby", "Matz", "Japão"]

# .sub substitui apenas a primeira ocorrência
puts texto.sub(/\d+/, "XXXX")
# => O Ruby foi criado por Matz em XXXX no Japão.

# .gsub substitui todas as ocorrências
frase = "gato e cachorro e peixe"
puts frase.gsub(/e/, "&") # => gato & cachorro & p&ix&

# .gsub com bloco para transformações dinâmicas
puts frase.gsub(/\b\w+\b/) { |palavra| palavra.upcase }
# => GATO E CACHORRO E PEIXE

# .split com regex como separador
csv = "maçã, banana,  laranja ,uva"
frutas = csv.split(/\s*,\s*/)
puts frutas.inspect # => ["maçã", "banana", "laranja", "uva"]

# Verificar se substring existe com include? vs regex
log = "ERROR: conexão recusada pelo servidor"
puts log.include?("ERROR")          # => true  (busca literal)
puts log.match?(/error/i)           # => true  (busca case-insensitive)
