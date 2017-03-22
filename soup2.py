from bs4 import BeautifulSoup
from urllib.request import urlopen
import sys 

page = urlopen(sys.argv[1])

html = "<html><p>Para 1<p>Para 2<blockquote>Quote 1<blockquote>Quote 2"
soup = BeautifulSoup(page.read(), 'html.parser')
#print(soup.prettify())
for link in soup.find_all('a'):
    print(link.get('href'))
