import unittest
from URL import URLParser

class TestSequenceFunctions(unittest.TestCase):
    
    def setUp(self):
        """docstring for setUp"""
        pass
    
    def test_http(self):
        parser = URLParser('http://www.google.com')
        self.assertEqual("http", parser.protocol)
    
    def test_https(self):
        parser = URLParser('https://www.google.com')
        self.assertEqual("https", parser.protocol)
    
    def test_ssh(self):
        parser = URLParser('ssh://fulano:senha@git.com/')
        self.assertEqual('ssh', parser.protocol)

    def test_username(self):
        parser = URLParser('ssh://fulano:senha@git.com/')
        self.assertEqual('fulano', parser.username)
        
    def test_password(self):
        parser = URLParser('ssh://fulano:senha@git.com/')
        self.assertEqual('senha', parser.password)
        
    def test_host_www(self):
        parser = URLParser('https://www.google.com')
        self.assertEqual("www", parser.host)
        
    def test_host_www1(self):
        parser = URLParser('https://www1.google.com')
        self.assertEqual("www1", parser.host)
        
    def test_host_without_www(self):
        parser = URLParser('https://google.com')
        self.assertEqual("", parser.host)
        
    def test_host_without_www2(self):
        parser = URLParser('https://google.com.br')
        self.assertEqual("", parser.host)
        
    def test_domain_google_com(self):
        parser = URLParser('https://google.com')
        self.assertEqual("google.com", parser.domain)
    
    def test_domain_google_com_br(self):
        parser = URLParser('https://google.com.br')
        self.assertEqual("google.com.br", parser.domain)
        
    def test_path(self):
        parser = URLParser('https://www.google.com/mail')
        self.assertEqual("mail", parser.path)
        
    def test_only_path(self):
        parser = URLParser('https://www.google.com/mail/')
        self.assertEqual("mail/", parser.path)
        
    def test_path_with_params(self):
        parser = URLParser('https://www.google.com/mail?user=fulano')
        self.assertEqual("mail", parser.path)
    
    def test_long_path(self):
        parser = URLParser('https://www.google.com/mail/user/important')
        self.assertEqual("mail/user/important", parser.path)
        
    def test_params(self):
        parser = URLParser('http://www.google.com/mail?user=fulano')
        self.assertEqual("user=fulano", parser.params)
    
    def test_print_analisys1(self):
        parser = URLParser('http://www.google.com/mail?user=fulano')
        self.assertEqual('Entrada: http://www.google.com/mail?user=fulano \
Saida: \
protocolo: http \
host: www \
dominio: google.com \
path: mail \
parametros: user=fulano', parser.print_analisys())

    def test_print_analisys1(self):
        parser = URLParser('https://www2.uol.com.br/admin?loko=detudo')
        self.assertEqual('Entrada: https://www2.uol.com.br/admin?loko=detudo \
Saida: \
protocolo: https \
host: www2 \
dominio: uol.com.br \
path: admin \
parametros: loko=detudo', parser.print_analisys())
        

if __name__ == '__main__':
    unittest.main()