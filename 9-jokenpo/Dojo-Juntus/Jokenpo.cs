using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Dojo_Juntus
{
    class Jokenpo
    {
        public Dictionary<string, string> Regras
        {
            get
            {
                var ganha = new Dictionary<string, string>();
                ganha.Add("pedra", "tesoura");
                ganha.Add("papel", "pedra");
                ganha.Add("tesoura", "papel");
                return ganha;
            }
        }

        public int Jogar(string jogada1, string jogada2)
        {

            verificarJogadasValidas(jogada1, jogada2);

            if (jogada1 == jogada2) return 0;

            return JogadaUmGanha(jogada1, jogada2) ? 1 : 2;
        }

        private bool JogadaUmGanha(string jogada1, string jogada2)
        {
            return Regras[jogada1] == jogada2;
        }

        private void verificarJogadasValidas(string jogada1, string jogada2)
        {
            if (!Regras.ContainsKey(jogada1) || !Regras.ContainsKey(jogada2))
                throw new ArgumentException();
        }
    }
}
