#!/usr/bin/env python


class MatrizEspiral:
    """Documentação da Matriz Espiral
    """

    def _muda_direcao(self, linha, coluna):
        """Define quando é hora de mudar de direção
        >>> me = MatrizEspiral()

        >>> me._muda_direcao(1, 1)
        {1: 1}
        >>> me._muda_direcao(1, 2)
        {1: 1}
        >>> me._muda_direcao(2, 1)
        {1: 2}
        >>> me._muda_direcao(2, 2)
        {1: 1, 3: 2, 4: 3}
        """
        muda_direcao = {}
        i = 0
        lc = True
        direcao = 1
        while i < (linha * coluna):
            muda_direcao[i + 1] = direcao
            if lc:
                i += coluna - 1
                linha -= 1
            else:
                i += linha - 1
                coluna -= 1
            direcao += 1
            lc = not lc
        return muda_direcao

    def entrada(self, linha, coluna):
        """A partir da entrada calcula o resultado

        >>> me = MatrizEspiral()

        >>> me.entrada(1, 1)
        [[1]]
        >>> me.entrada(1, 2)
        [[1, 2]]
        """
        #>>> me.entrada(2, 1)
        #[[1], [2]]
        #>>> me.entrada(2, 2)
        #[[1, 2], [4, 3]]
        #>>> me.entrada(3, 3)
        #[[1, 2, 3], [8, 9, 4], [7, 6, 5]]
        #"""

        # inicia matriz zerada
        matriz = [
            [0 for c in range(coluna)]
            for l in range(linha)
        ]

        # variáveis de controle linha / coluna
        l = 0
        c = 0
        direcao = {
            1: [0, 1],
            2: [1, 0],
            3: [0, -1],
            4: [-1, 0]
        }
        muda_direcao = self._muda_direcao(linha, coluna)
        inc_l, inc_c = direcao[1]
        for i in range(1, (linha * coluna) + 1):
            matriz[l][c] = i
            l += inc_l
            c += inc_c

        return matriz

if __name__ == "__main__":
    import doctest
    doctest.testmod(verbose=True)
