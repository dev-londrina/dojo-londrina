using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Dojo_Juntus
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void pedra_com_pedra_dah_empate()
        {
            var jokenpo = new Jokenpo();
            var resultado = jokenpo.Jogar("pedra", "pedra");

            Assert.AreEqual(0, resultado);
        }

        [TestMethod]
        public void pedra_com_tesoura_dah_jogador_1()
        {
            var jokenpo = new Jokenpo();
            var resultado = jokenpo.Jogar("pedra", "tesoura");

            Assert.AreEqual(1, resultado);
        }

        [TestMethod]
        public void pedra_com_papel_dah_jogador_2()
        {
            var jokenpo = new Jokenpo();
            var resultado = jokenpo.Jogar("pedra", "papel");

            Assert.AreEqual(2, resultado);
        }

        [TestMethod]
        public void tesoura_com_papel_dah_jogador_1()
        {
            var jokenpo = new Jokenpo();
            var resultado = jokenpo.Jogar("tesoura", "papel");

            Assert.AreEqual(1, resultado);
        }

        [TestMethod]
        public void tesoura_com_tesoura_dah_empate()
        {
            var jokenpo = new Jokenpo();
            var resultado = jokenpo.Jogar("tesoura", "tesoura");

            Assert.AreEqual(0, resultado);
        }

        [TestMethod]
        public void tesoura_com_pedra_dah_jogador_2()
        {
            var jokenpo = new Jokenpo();
            var resultado = jokenpo.Jogar("tesoura", "pedra");

            Assert.AreEqual(2, resultado);
        }

        [TestMethod]
        public void papel_com_pedra_dah_jogador_1()
        {
            var jokenpo = new Jokenpo();
            var resultado = jokenpo.Jogar("papel", "pedra");

            Assert.AreEqual(1, resultado);
        }

        [TestMethod]
        public void papel_com_tesoura_dah_jogador_2()
        {
            var jokenpo = new Jokenpo();
            var resultado = jokenpo.Jogar("papel", "tesoura");

            Assert.AreEqual(2, resultado);
        }


        [TestMethod]
        public void papel_com_papel_dah_empate()
        {
            var jokenpo = new Jokenpo();
            var resultado = jokenpo.Jogar("papel", "papel");

            Assert.AreEqual(0, resultado);
        }

        [TestMethod]
        [ExpectedException(typeof(ArgumentException))]
        public void agua_com_vinagre_dah_merda()
        {
            var jokenpo = new Jokenpo();
            var resultado = jokenpo.Jogar("agua", "vinagre");
        }

        [TestMethod]
        [ExpectedException(typeof(ArgumentException))]
        public void agua_com_agua_dah_merda()
        {
            var jokenpo = new Jokenpo();
            var resultado = jokenpo.Jogar("agua", "agua");
        }
    }
}
