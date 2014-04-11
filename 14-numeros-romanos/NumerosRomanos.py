class NumerosRomanos(object):
    
    def __init__(self):
        self.dicionario = {'I': 1,'V': 5,'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}
        self.lista_unica = ['V', 'L', 'D']
        self.lista_redutores = ['I', 'X', 'C']
        
    def valida_palavra(self, letra, anteriores):
        if letra in self.lista_unica:
            self.valida_letra_unica(letra, anteriores)
        else:
            self.valida_letras_repetidas(letra, anteriores)

    def valida_letra_unica(self, letra, anteriores):
        if len(anteriores) > 0 and letra == anteriores[-1]:
            raise RepeticaoInvalidaException
        
    def valida_letras_repetidas(self, letra, anteriores):
        if len(anteriores) > 2 and letra * 3 == anteriores[-3:]:
            raise RepeticaoMaximaAtingidaException
    
    def calculador(self, indice, letra, valor_da_letra, valores):
        if letra in self.lista_redutores and indice + 1 < len(valores) and \
                    valor_da_letra < valores[indice + 1]:
            return -valor_da_letra
        else:
            return valor_da_letra

    def converte_para_arabico(self, palavra):
        soma = 0
        valores = [self.converte_letra_para_arabico(letra) for letra in palavra]
        for indice, letra in enumerate(palavra):
            self.valida_palavra(letra, palavra[0:indice])
            soma += self.calculador(indice, letra, valores[indice], valores)
        return soma

    def converte_letra_para_arabico(self, letra):
        try:
            return self.dicionario[letra]
        except KeyError:
            raise LetraInvalidaException("letra {} invalida".format(letra))
            
class LetraInvalidaException(Exception):
    pass
    
class PalavraInvalidaException(Exception):
    pass

class RepeticaoInvalidaException(PalavraInvalidaException):
    pass

class RepeticaoMaximaAtingidaException(PalavraInvalidaException):
    pass
            