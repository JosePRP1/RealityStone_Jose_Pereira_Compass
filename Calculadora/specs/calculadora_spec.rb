require 'rspec'
require '../logica/calculadora'

describe('Calculadora') do
    calculadora = Calculadora.new

#adição  
    it('Deve somar dois inteiros positivos') do
        expect(calculadora.somar(2, 5)). to eq 7
    end    
    it('Deve somar um inteiro positivo com um negativo') do
        expect(calculadora.somar(5, -2)). to eq 3
    end     
    it('Deve somar um inteiro com 0') do
        expect(calculadora.somar(5, 0)). to eq 5
    end     
    it('Deve somar um inteiro negativo com 0') do
        expect(calculadora.somar(-2, 0)). to eq -2
    end     
    it('Deve somar dois inteiros negativos') do
        expect(calculadora.somar(-2, -5)). to eq -7
    end    

#subtração
    it('Deve subtrair dois inteiros positivos') do
        expect(calculadora.subtrair(2, 5)). to eq -3
    end    
    it('Deve subtrair um inteiro positivo com um negativo') do
        expect(calculadora.subtrair(5, -2)). to eq 7
    end     
    it('Deve subtrair um inteiro com 0') do
        expect(calculadora.subtrair(5, 0)). to eq 5
    end     
    it('Deve subtrair um inteiro negativo com 0') do
        expect(calculadora.subtrair(-2, 0)). to eq -2
    end
    it('Deve subtrair dois inteiros negativos') do
        expect(calculadora.subtrair(-2, -5)). to eq 3
    end

#multiplicação
    it('Deve multiplicar dois inteiros positivos') do
        expect(calculadora.multiplicar(2, 5)). to eq 10
    end    
    it('Deve multiplicar um inteiro positivo com um negativo') do
        expect(calculadora.multiplicar(5, -2)). to eq -10
    end     
    it('Deve multiplicar um inteiro com 0') do
        expect(calculadora.multiplicar(5, 0)). to eq 0
    end     
    it('Deve multiplicar um inteiro negativo com 0') do
        expect(calculadora.multiplicar(-2, 0)). to eq 0
    end
    it('Deve multiplicar dois inteiros negativos') do
        expect(calculadora.multiplicar(-2, -5)). to eq 10
    end

#divisão
    it('Deve dividir dois inteiros positivos, com resultado exato') do
        expect(calculadora.dividir(5, 5)). to eq 1
    end   
    it('Deve dividir dois inteiros positivos, com resto') do
        expect(calculadora.dividir(5, 2)). to eq 2.5
    end  
    it('Deve dividir um inteiro positivo com um negativo, sem sobrar resto') do
        expect(calculadora.dividir(5, -1)). to eq -5
    end      
    it('Deve dividir um inteiro positivo com um negativo, sobrando resto') do
        expect(calculadora.dividir(5, -2)). to eq -2.5
    end     
    it('Não deve dividir um inteiro com 0') do
        expect(calculadora.dividir(5, 0)). to include "Impossível realizar divisão por 0"
    end     
    it('Não deve dividir um inteiro negativo com 0') do
        expect(calculadora.dividir(-2, 0)). to include "Impossível realizar divisão por 0"
    end
    it('Deve dividir dois inteiros negativos') do
        expect(calculadora.dividir(-5, -2)). to eq 2.5
    end

#potenciação
    it('Deve elevar dois inteiros positivos') do
        expect(calculadora.elevar(2, 3)). to eq 8
    end    
    it('Deve elevar um inteiro positivo com um negativo') do
        expect(calculadora.elevar(5, -2)). to eq 0.04
    end     
    it('Deve elevar um inteiro com 0') do
        expect(calculadora.elevar(5, 0)). to eq 1
    end
    it('Deve elevar um inteiro com 1') do
        expect(calculadora.elevar(5, 1)). to eq 5
    end     
    it('Deve elevar um inteiro negativo com 0') do
        expect(calculadora.elevar(-5, 0)). to eq 1
    end
    it('Deve elevar um inteiro negativo com um inteiro negativo ímpar') do
        expect(calculadora.elevar(-5, -3)). to eq -0.008
    end
    it('Deve elevar um inteiro negativo com um inteiro negativo par') do
        expect(calculadora.elevar(-5, -2)). to eq 0.04
    end
    it('Deve elevar um inteiro negativo com um inteiro positivo par') do
        expect(calculadora.elevar(-5, 2)). to eq 25
    end

#radiciação
    it('Deve dar a raíz de um inteiro positivo, que possua raíz exata') do
        expect(calculadora.raiz(4)). to eq 2
    end
    it('Deve dar a raíz de um inteiro positivo, que não possua raíz exata') do
        expect(calculadora.raiz(5)). to eq 2.23606797749979
    end
    it('Não deve dar a raíz de um inteiro negativo') do
        expect(calculadora.raiz(-5)). to include "Não é possível calcular a raiz de número negativo"
    end
end