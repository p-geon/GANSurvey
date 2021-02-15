import urllib
from urllib.request import urlopen
from bs4 import BeautifulSoup

if(__name__=="__main__"):
    #proxy = urllib.request.ProxyHandler({'http': 'http://xx.xx.xx.xx:8080'})
    #opener = urllib.request.build_opener(proxy)
    url = "https://github.com/p-geon/GANSurvey"
    #urllib.request.install_opener(opener)
    html = urlopen(url)
    soup = BeautifulSoup(html, "html.parser")
    print(soup)