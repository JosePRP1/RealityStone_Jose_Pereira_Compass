require 'rspec'
require '../logica/imc'

describe('IMC') do
    it('Deve calcular o peso e altura corretos') do
        peso = 60
        altura = 1.70
        expect(imc(peso, altura)). to eq 20.8
    end    
    it('Não deve calular para altura igual a 0') do
        peso = 60
        altura = 0
        expect(imc(peso, altura)). to include "Não é possível calcular o IMC com altura igual a 0"
    end    
end