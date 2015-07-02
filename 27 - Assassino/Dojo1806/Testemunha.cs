using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dojo1806
{
    public class Testemunha
    {
        private int assassino;
        private int local;
        private int arma;

        public Testemunha(int p1, int p2, int p3)
        {
            // TODO: Complete member initialization
            this.assassino = p1;
            this.local = p2;
            this.arma = p3;
        }


        public int testaTeoria(int p1, int p2, int p3)
        {
            List<int> list = new List<int>();
            if (p1 != assassino)
                list.Add(1);
            if (p2 != local)
                list.Add(2);
            if (p3 != arma)
                list.Add(3);

            if (list.Count() == 0)
                return 0;
            else
                return list[new Random().Next(0, list.Count())];
        }
    }
}
