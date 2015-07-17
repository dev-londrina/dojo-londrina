using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dojo1806
{
    public class Solucao
    {
        public int assasino;
        public int local;
        public int arma;

        public Solucao(int assasino, int local, int arma)
        {
            this.assasino = assasino;
            this.local = local;
            this.arma = arma;
        }

        public override bool Equals(object obj)
        {

            var that = obj as Solucao;
            if (obj == null)
            {
                return false;
            }
            return this.arma == that.arma && this.assasino == that.assasino && this.local == that.local;
        }
    }
}
