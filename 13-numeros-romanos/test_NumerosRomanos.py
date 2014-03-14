import unittest
from NumerosRomanos import NumerosRomanos

class TestSequenceFunctions(unittest.TestCase):
    
    def setUp(self):
        """docstring for setUp"""
        pass
        
    def test_class(self):
        self.assertEqual("Testando 123", NumerosRomanos().testando_o_teste())
        
    def test_recebe_I_retorna_1(self):
        self.assertEqual(1, NumerosRomanos().converte_para_arabico("I"))

    def test_recebe_V_retorna_5(self):
        self.assertEqual(5, NumerosRomanos().converte_para_arabico("V"))

    def test_recebe_X_retorna_10(self):
        self.assertEqual(10, NumerosRomanos().converte_para_arabico("X"))

    def test_recebe_A_retorna_Erro(self):
        self.assertEqual("letra invalida", NumerosRomanos().converte_para_arabico("A"))
        
    def test_recebe_L_retorna_50(self):
        self.assertEqual(50, NumerosRomanos().converte_para_arabico("L"))
        
    def test_recebe_C_retorna_100(self):
        self.assertEqual(100, NumerosRomanos().converte_para_arabico("C"))
        
    def test_recebe_D_retorna_500(self):
        self.assertEqual(500, NumerosRomanos().converte_para_arabico("D"))
        
    def test_recebe_M_retorna_1000(self):
        self.assertEqual(1000, NumerosRomanos().converte_para_arabico("M"))
        
    def test_recebe_III_retorna_3(self):
        self.assertEqual(3, NumerosRomanos().converte_para_arabico("III"))

    def test_recebe_XXX_retorna_30(self):
        self.assertEqual(30, NumerosRomanos().converte_para_arabico("XXX"))
        
    def test_recebe_VV_retorna_invalido(self):
        self.assertEqual("palavra invalida", NumerosRomanos().converte_para_arabico("VV"))
        
    def test_recebe_LL_retorna_invalido(self):
        self.assertEqual("palavra invalida", NumerosRomanos().converte_para_arabico("LL"))
        
    def test_recebe_VVV_retorna_invalido(self):
        self.assertEqual("palavra invalida", NumerosRomanos().converte_para_arabico("VVV"))
        
    def test_recebe_VIII_retorna_8(self):
        self.assertEqual(8, NumerosRomanos().converte_para_arabico("VIII"))

    def test_recebe_XIII_retorna_13(self):
        self.assertEqual(13, NumerosRomanos().converte_para_arabico("XIII"))
        
    def test_recebe_MCXX_retorna_1120(self):
        self.assertEqual(1120, NumerosRomanos().converte_para_arabico("MCXX"))
        
    def test_recebe_IV_retorna_4(self):
        self.assertEqual(4, NumerosRomanos().converte_para_arabico("IV"))

    # Próximo teste a ser resolvido
    # def test_recebe_XC_retorna_90(self):
    #     self.assertEqual(90, NumerosRomanos().converte_para_arabico("XC"))

        
    def test_recebe_IIII_retorna_invalido(self):
        self.assertEqual("palavra invalida", NumerosRomanos().converte_para_arabico("IIII"))
if __name__ == '__main__':
    unittest.main()