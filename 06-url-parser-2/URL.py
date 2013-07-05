import re

class URLParser:
    
    def __init__(self, url):
        self.url = url

        
    @property
    def path(self):
        fulldomain = self.protocol + '://' + self.host + '.' + self.domain + '/'
        # return self.url.replace(fulldomain, '')
        path_with_params = self.url.replace(fulldomain, "")
        
        return re.match(r'(.*)\?.*', path_with_params).group(1) if "?" in path_with_params else path_with_params
        
    @property
    def domain(self):
        _url = self.url.replace(self.protocol + "://", "")
        if self.host != "":
            _url = _url.replace(self.host + ".", "")
        return _url.split('/')[0]
    
    @property
    def protocol(self):
        return re.match(r'(.*)://.*', self.url).group(1)
    
    @property
    def host(self):
        _host = ''
        if len(self.url.split('.')) > 2:
            _host = self.url.split('://')[1].split('.')[0]
        if not re.match(r'www.*', _host):
            _host = ""
        
        return _host
        
    @property
    def params(self):
        return re.match(r'.*\?(.*)', self.url).group(1)

    @property
    def username(self):
        return self.credentials.group(1)
    
    @property
    def password(self):
        return self.credentials.group(2)
        
    @property
    def credentials(self):
        return re.match(r'.*\://(.*)\:(.*)@.*', self.url)
        
    def print_analisys(self):
        return 'Entrada: ' + self.url +  ' \
Saida: \
protocolo: ' + self.protocol +  ' \
host: ' + self.host +  ' \
dominio: ' + self.domain +  ' \
path: ' + self.path +  ' \
parametros: ' + self.params