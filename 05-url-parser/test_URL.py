import unittest
from URL import URLParser

class TestSequenceFunctions(unittest.TestCase):
    
    def setUp(self):
        """docstring for setUp"""
        pass
    
    def test_http(self):
        parser = URLParser('http://www.google.com')
        self.assertEqual("http", parser.protocol)
        # self.assertEqual("www", parser.host)
        # domain: google.com
    
    def test_https(self):
        parser = URLParser('https://www.google.com')
        self.assertEqual("https", parser.protocol)
        # self.assertEqual("www", parser.host)
        # domain: google.com
        
    def test_host_www(self):
        parser = URLParser('https://www.google.com')
        self.assertEqual("www", parser.host )
        
    def test_host_www1(self):
        parser = URLParser('https://www1.google.com')
        self.assertEqual("www1", parser.host )
        
    def test_host_without_www(self):
        parser = URLParser('https://google.com')
        self.assertEqual("", parser.host )
        
    def test_host_without_www2(self):
        parser = URLParser('https://google.com.br')
        self.assertEqual("", parser.host )
        
    def test_domain_google_com(self):
        parser = URLParser('https://google.com')
        self.assertEqual("google.com", parser.domain)
    
    def test_domain_google_com_br(self):
        parser = URLParser('https://google.com.br')
        self.assertEqual("google.com.br", parser.domain)
        
    def test_path(self):
        parser = URLParser('https://www.google.com/mail')
        self.assertEqual("mail", parser.path)
        
    def test_path_with_params(self):
        parser = URLParser('https://www.google.com/mail/')
        self.assertEqual("mail/", parser.path)
        
    def test_long_path(self):
        parser = URLParser('https://www.google.com/mail/user/important')
        self.assertEqual("mail/user/important", parser.path)
    
if __name__ == '__main__':
    unittest.main()