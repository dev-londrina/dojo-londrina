using System;
using System.Text;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Dojo1806
{
    /// <summary>
    /// Summary description for TestemunhaTest
    /// </summary>
    [TestClass]
    public class TestemunhaTest
    {
        private Testemunha testemunha;
        private Testemunha testemunha2;
        [TestInitialize]
        public void setup()
        {
            testemunha = new Testemunha(1, 1, 1);
            testemunha2 = new Testemunha(2, 2, 2);
        }
        [TestMethod]
        public void testTeoriaCorreta()
        {
            Assert.AreEqual(0, testemunha.testaTeoria(1, 1, 1));
            Assert.AreEqual(0, testemunha2.testaTeoria(2, 2, 2));
        }

        [TestMethod]
        public void testAssassinoIncorreto()
        {
            Assert.AreEqual(1, testemunha.testaTeoria(2, 1, 1));
            Assert.AreEqual(1, testemunha2.testaTeoria(1, 2, 2));
        }

        [TestMethod]
        public void testLugarIncorreto()
        {
            Assert.AreEqual(2, testemunha.testaTeoria(1, 2, 1));
            Assert.AreEqual(2, testemunha2.testaTeoria(2, 1, 2));

        }

        [TestMethod]
        public void testArmaIncorreta()
        {
            Assert.AreEqual(3, testemunha.testaTeoria(1, 1, 2));
            Assert.AreEqual(3, testemunha2.testaTeoria(2, 2, 1));

        }

        [TestMethod]
        public void testAssassinoELugarIncorreto()
        {
            int result = testemunha.testaTeoria(2, 2, 1);
            Assert.IsTrue(result == 1 || result == 2);
            int result2 = testemunha2.testaTeoria(1, 1, 2);
            Assert.IsTrue(result2 == 1 || result2 == 2);
        }

        [TestMethod]
        public void testLugarEArmaIncorreto()
        {
            int result = testemunha.testaTeoria(1, 2, 3);
            Assert.IsTrue(result == 2 || result == 3);
            int result2 = testemunha2.testaTeoria(2, 1, 1);
            Assert.IsTrue(result2 == 2 || result2 == 3);
        }

        [TestMethod]
        public void testAssassinoEArmaIncorreto()
        {
            int result = testemunha.testaTeoria(2, 1, 3);
            Assert.IsTrue(result == 1 || result == 3);
            int result2 = testemunha2.testaTeoria(1, 2, 1);
            Assert.IsTrue(result2 == 1 || result2 == 3);
        }

        [TestMethod]
        public void testTodosIncorretos()
        {
            int result = testemunha.testaTeoria(2, 4, 3);
            Assert.IsTrue(result == 1 || result == 2 || result == 3);
            int result2 = testemunha2.testaTeoria(1, 4, 3);
            Assert.IsTrue(result2 == 1 || result2 == 2 || result2 == 3);
        }
    }
}
