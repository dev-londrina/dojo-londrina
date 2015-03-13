#!/usr/bin/env python


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
        >>> me.entrada(2, 2)
        [[1, 2], [4, 3]]
        >>> me.entrada(2, 1)
        [[1], [2]]
        >>> me.entrada(3, 3)
        [[1, 2, 3], [8, 9, 4], [7, 6, 5]]
        >>> me.entrada(3, 4)
        [[1, 2, 3, 4], [10, 11, 12, 5], [9, 8, 7, 6]]
        >>> me.entrada(4, 3)
        [[1, 2, 3], [10, 11, 4], [9, 12, 5], [8, 7, 6]]
        >>> me.entrada(6, 5)
        [[1, 2, 3, 4, 5], [18, 19, 20, 21, 6], [17, 28, 29, 22, 7], [16, 27, 30, 23, 8], [15, 26, 25, 24, 9], [14, 13, 12, 11, 10]]
        """
        matriz = [[ 0 for x in range(coluna) ] for y in range (linha)]
        i = 0
        j = 0

        direcao = 1
        for n in range(linha * coluna):

            matriz[i][j] = n + 1

            muda_direcao = (
                (j == coluna -1 and direcao == 1) or
                (i == linha  -1 and direcao == 2) or
                (j == 0 and direcao == 3) or
                (n > 1 and matriz[i + incremento_linha][j + incremento_coluna] != 0)
            )

            if muda_direcao:
                direcao += 1
                if direcao > 4:
                    direcao = 1

            if direcao == 1:
                incremento_linha = 0
                incremento_coluna = 1
            elif direcao == 2:
                incremento_linha = 1
                incremento_coluna = 0
            elif direcao == 3:
                incremento_linha = 0
                incremento_coluna = -1
            elif direcao == 4:
                incremento_linha = -1
                incremento_coluna = 0

            i+=incremento_linha
            j+=incremento_coluna

        return matriz

if __name__ == "__main__":
    import doctest
    doctest.testmod(verbose=True)
