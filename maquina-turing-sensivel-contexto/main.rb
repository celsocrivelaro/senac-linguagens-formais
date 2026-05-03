class TuringMachine
  attr_accessor :tape, :state, :head

  def initialize
    @estado = :q0
    @cursor = 0
  end

  def processar(entrada)
    @fita = "#" + entrada + "$"
    @estado = :q0
    @cursor = 0

    while true
      case [@estado, @fita[@cursor]]
      in [:q0, "#"] 
        operar("#", :q1, :D)
      in [:q1, "a"] 
        operar("x", :q2, :D)
      in [:q2, "a"] 
        operar("a", :q2, :D)
      in [:q2, "y"] 
        operar("y", :q2, :D)
      in [:q2, "b"] 
        operar("y", :q3, :D)
      in [:q3, "b"] 
        operar("b", :q3, :D)
      in [:q3, "z"] 
        operar("z", :q3, :D)
      in [:q3, "c"] 
        operar("z", :q4, :D)
      in [:q4, s] if not ["x", "$"].include?(s)
        operar(s, :q4, :E)
      in [:q4, "x"]
        operar("x", :q1, :D)
      in [:q4, "$"]
        operar("$", :q5, :E)
      in [:q5, s] if ["x", "y", "z"].include?(s)
        operar(s, :q5, :E)
      in [:q5, "#"]
        return true
      else
        return false
      end
    end
  end

  def operar(escrever, estado, movimento = :D)
    @fita[@cursor] = escrever
    @estado = estado
    if movimento == :D 
      @cursor += 1
    else
      @cursor -= 1
    end
  end

  def fita
    @fita
  end

  def cursor
    @cursor
  end

  def estado
    @estado
  end
end

input = "aaabbbccc"
tm = TuringMachine.new
puts "Entrada: #{input}"
puts "Aceito? #{tm.processar(input)}"
puts "Fita #{tm.fita}"
puts "Cursor #{tm.cursor}"
puts "Estado #{tm.estado}"