#encoding:utf-8
import unittest
from NumerosRomanos import NumerosRomanos, LetraInvalidaException, PalavraInvalidaException, RepeticaoInvalidaException, RepeticaoMaximaAtingidaException

class TestSequenceFunctions(unittest.TestCase):
    
    def setUp(self):
        self.numeros_romanos = NumerosRomanos()
        
    def test_recebe_I_retorna_1(self):
        self.assertEqual(1, self.numeros_romanos.converte_para_arabico("I"))

    def test_recebe_V_retorna_5(self):
        self.assertEqual(5, self.numeros_romanos.converte_para_arabico("V"))

    def test_recebe_X_retorna_10(self):
        self.assertEqual(10, self.numeros_romanos.converte_para_arabico("X"))

    def test_recebe_A_retorna_Erro(self):
        self.assertRaises(LetraInvalidaException, self.numeros_romanos.converte_para_arabico, "A")
        
    def test_recebe_L_retorna_50(self):
        self.assertEqual(50, self.numeros_romanos.converte_para_arabico("L"))
        
    def test_recebe_C_retorna_100(self):
        self.assertEqual(100, self.numeros_romanos.converte_para_arabico("C"))
        
    def test_recebe_D_retorna_500(self):
        self.assertEqual(500, self.numeros_romanos.converte_para_arabico("D"))
        
    def test_recebe_M_retorna_1000(self):
        self.assertEqual(1000, self.numeros_romanos.converte_para_arabico("M"))
        
    def test_recebe_III_retorna_3(self):
        self.assertEqual(3, self.numeros_romanos.converte_para_arabico("III"))

    def test_recebe_XXX_retorna_30(self):
        self.assertEqual(30, self.numeros_romanos.converte_para_arabico("XXX"))
        
    def test_recebe_VV_retorna_invalido(self):
        self.assertRaises(RepeticaoInvalidaException, self.numeros_romanos.converte_para_arabico, "VV")
        
    def test_recebe_LL_retorna_invalido(self):
        self.assertRaises(RepeticaoInvalidaException, self.numeros_romanos.converte_para_arabico, "LL")
        
    def test_recebe_VVV_retorna_invalido(self):
        self.assertRaises(RepeticaoInvalidaException, self.numeros_romanos.converte_para_arabico, "VVV")
        
    def test_recebe_IIII_retorna_invalido(self):
        self.assertRaises(RepeticaoMaximaAtingidaException, self.numeros_romanos.converte_para_arabico, "IIII")  
        
    def test_recebe_VIII_retorna_8(self):
        self.assertEqual(8, self.numeros_romanos.converte_para_arabico("VIII"))

    def test_recebe_XIII_retorna_13(self):
        self.assertEqual(13, self.numeros_romanos.converte_para_arabico("XIII"))
        
    def test_recebe_MCXX_retorna_1120(self):
        self.assertEqual(1120, self.numeros_romanos.converte_para_arabico("MCXX"))
        
    def test_recebe_IV_retorna_4(self):
        self.assertEqual(4, self.numeros_romanos.converte_para_arabico("IV"))

    def test_recebe_XC_retorna_90(self):
        self.assertEqual(90, self.numeros_romanos.converte_para_arabico("XC"))
        
    def test_recebe_CM_retorna_900(self):
        self.assertEqual(900, self.numeros_romanos.converte_para_arabico("CM"))

    def test_recebe_CMIX_retorna_909(self):
        self.assertEqual(909, self.numeros_romanos.converte_para_arabico("CMIX"))
        
    def test_recebe_CMXCIX_retorna_999(self):
        self.assertEqual(999, self.numeros_romanos.converte_para_arabico("CMXCIX"))
        

if __name__ == '__main__':
    unittest.main()