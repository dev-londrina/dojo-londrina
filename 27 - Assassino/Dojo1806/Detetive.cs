using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dojo1806
{
    public abstract class Detetive
    {
        protected int qtdAssassinos;
        protected int qtdLocais;
        protected int qtdArmas;
        protected Testemunha testemunha;
        
        public Detetive(Testemunha testemunha, int qtdAssassinos, int qtdLocais, int qtdArmas)
        {
            this.testemunha = testemunha;
            this.qtdAssassinos = qtdAssassinos;
            this.qtdLocais = qtdLocais;
            this.qtdArmas = qtdArmas; 
        }

        public abstract Solucao pergunta();
    }

    public class DetetiveSimples : Detetive
    {

        public DetetiveSimples(Testemunha testemunha, int qtdAssassinos, int qtdLocais, int qtdArmas) : base(testemunha, qtdAssassinos, qtdLocais, qtdArmas) {

        }

        public override Solucao pergunta()
        {
            int tentativas = 0;
            for (int i = 1; i <= qtdAssassinos; i++)
            {
                for (int j = 1; j <= qtdLocais; j++)
                {
                    for (int k = 1; k <= qtdArmas; k++)
                    {
                        tentativas++;
                        if (testemunha.testaTeoria(i, j, k) == 0)
                        {
                            Console.WriteLine("tentativas: " + tentativas);
                            return new Solucao(i, j, k);
                        }
                    }
                }
            }
            return null;
        }
    }

    public class DetetiveOtimizado : Detetive
    {
        public DetetiveOtimizado(Testemunha testemunha, int qtdAssassinos, int qtdLocais, int qtdArmas)
            : base(testemunha, qtdAssassinos, qtdLocais, qtdArmas)
        {

        }

        public override Solucao pergunta()
        {
            int tentativas = 1;
            var solucao = new Solucao(1, 1, 1);
            int resposta;
            while ((resposta = testemunha.testaTeoria(solucao.assasino, solucao.local, solucao.arma)) != 0)
            {
                if (resposta == 1)
                {
                    solucao.assasino++;
                }
                else if (resposta == 2)
                {
                    solucao.local++;
                }
                else if (resposta == 3)
                {
                    solucao.arma++;
                }
                tentativas++;
            }
            Console.WriteLine("tentativas: " + tentativas);
            return solucao;
        }
    }
}
