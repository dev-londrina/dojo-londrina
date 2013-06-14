import re

class URLParser:
    
    def __init__(self, url):
        self.url = url
        self.protocol = re.match(r'(.*)://.*', url).group(1)
        
        self.host = ''
        if len(url.split('.')) > 2:
            self.host = url.split('://')[1].split('.')[0]
        if not re.match(r'www.*', self.host):
            self.host = ""
        
        _url = url.replace(self.protocol+"://", "")
        if self.host != "":
            _url = _url.replace(self.host+".", "")
            
        self.domain = _url
        
        _domain = _url.split('/')[0]
        self.path = _url.replace(_domain + '/', '')
    
    
