using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Dojo1806
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void Testar()
        {
            var testemunha = new Testemunha(1, 1, 1);
            var detetive = new DetetiveSimples(testemunha, 6, 10, 6);

            Assert.AreEqual(new Solucao(1, 1, 1), detetive.pergunta());
        }

        [TestMethod]
        public void TestarPossibilidade2()
        {
            var testemunha = new Testemunha(1, 2, 5);
            var detetive = new DetetiveSimples(testemunha, 6, 10, 6);

            Assert.AreEqual(new Solucao(1, 2, 5), detetive.pergunta());
        }

        [TestMethod]
        public void TestarPossibilidade3()
        {
            var testemunha = new Testemunha(3, 5, 3);
            var detetive = new DetetiveSimples(testemunha, 6, 10, 6);

            var solucao = detetive.pergunta();
            Assert.AreEqual(new Solucao(3, 5, 3), solucao);
        }

        [TestMethod]
        public void TestarOrganizado()
        {
            var testemunha = new Testemunha(1, 1, 1);
            var detetive = new DetetiveOtimizado(testemunha, 6, 10, 6);

            Assert.AreEqual(new Solucao(1, 1, 1), detetive.pergunta());
        }

        [TestMethod]
        public void TestarPossibilidade2Organizado()
        {
            var testemunha = new Testemunha(1, 2, 5);
            var detetive = new DetetiveOtimizado(testemunha, 6, 10, 6);

            Assert.AreEqual(new Solucao(1, 2, 5), detetive.pergunta());
        }

        [TestMethod]
        public void TestarPossibilidade3Organizado()
        {
            var testemunha = new Testemunha(3, 5, 3);
            var detetive = new DetetiveOtimizado(testemunha, 6, 10, 6);

            var solucao = detetive.pergunta();
            Assert.AreEqual(new Solucao(3, 5, 3), solucao);
        }
    }
}
