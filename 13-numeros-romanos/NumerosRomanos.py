class NumerosRomanos(object):
    
    def __init__(self):
        self.dicionario = {'I': 1,'V': 5,'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}
        self.lista_invalida = ['V', 'L', 'D']
        
    def testando_o_teste(self):
        return "Testando 123"
    
    def valida_palavra(self, letra, anteriores):
        if letra in self.lista_invalida:
            return self.valida_letra_unica(letra, anteriores)
        else:
            return self.valida_letras_repetidas(letra, anteriores)
        
    def valida_letra_unica(self, letra, anteriores):
        return not (len(anteriores) > 0 and letra == anteriores[-1])
        
    def valida_letras_repetidas(self, letra, anteriores):
        return not (len(anteriores) > 2 and letra == anteriores[-1] and letra == anteriores[-2] and letra == anteriores[-3])
    
    def converte_para_arabico(self, palavra):
        soma = 0
        anteriores = []
        for indice, letra in enumerate(palavra):
            resultado = self.converte_letra_para_arabico(letra)
            if isinstance(resultado, str):
                return resultado
            if not self.valida_palavra(letra, anteriores):
                return 'palavra invalida'
            anteriores.append(letra)
            if letra == "I" and (indice + 1) < len(palavra) and palavra[indice + 1] != "I":
                soma -= resultado
            else:
                soma += resultado
        return soma

    def converte_letra_para_arabico(self, letra):
        return self.dicionario.get(letra, "letra invalida")