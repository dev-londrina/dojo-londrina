#!/usr/bin/env python
# -*- coding: utf-8 -*-


class MatrizEspiral:
    """Documentação da Matriz Espiral
    """
    def entrada(self, linha, coluna):
        """
        >>> me = MatrizEspiral()

        >>> me.entrada(1, 1)
        [[1]]
        >>> me.entrada(1, 2)
        [[1, 2]]
        >>> me.entrada(1, 3)
        [[1, 2, 3]]
        >>> me.entrada(2, 2)
        [[1, 2], [4, 3]]
        >>> me.entrada(2, 1)
        [[1], [2]]
        >>> me.entrada(3, 3)
        [[1, 2, 3], [8, 9, 4], [7, 6, 5]]
        >>> me.entrada(6, 5)
        [[1, 2, 3, 4, 5], [18, 19, 20, 21, 6], [17, 28, 29, 22, 7], [16, 27, 30, 23, 8], [15, 26, 25, 24, 9], [14, 13, 12, 11, 10]]
        """
        matriz = [[ 0 for x in range(coluna) ] for y in range (linha)]
        vetor_linha  = [0, 1,  0, -1]
        vetor_coluna = [1, 0, -1,  0]
        l = 0
        c = 0
        direcao = 0
        for n in range(linha * coluna):
            matriz[l][c] = n + 1
            if ((vetor_coluna[direcao] == 1 and c == coluna - 1) or 
                (vetor_linha[direcao] == 1 and l == linha - 1) or
                (vetor_coluna[direcao] == -1 and c == 0) or
                (matriz[l + vetor_linha[direcao]][c + vetor_coluna[direcao]] != 0)):
                direcao = (direcao + 1) % 4
            l += vetor_linha[direcao]
            c += vetor_coluna[direcao]
        return matriz

if __name__ == "__main__":
    import doctest
    doctest.testmod(verbose=True)
