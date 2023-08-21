class Calculadora
    def somar(num1, num2)
        num1 + num2
    end
  
    def subtrair(num1, num2)
        num1 - num2
    end
  
    def multiplicar(num1, num2)
        num1 * num2
    end
  
    def dividir(num1, num2)
        if num2 == 0
            return "Impossível realizar divisão por 0"
        end
        num1 / num2.to_f
    end

    def elevar(num1, num2)
        num1 ** num2
    end

    def raiz(num1)
        if num1 < 0 
            return"Não é possível calcular a raiz de número negativo"
        end
        Math.sqrt(num1)
    end 

end
  