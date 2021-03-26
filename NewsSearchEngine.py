import bs4 as bs
import urllib.request

source = urllib.request.urlopen('https://munfinder.com/mun/india-model-united-nations-aimun/').read()
search_ls = ["https://munfinder.com/mun/india-model-united-nations-aimun/", "summer programs - university"]
soup = bs.BeautifulSoup(source,'lxml')