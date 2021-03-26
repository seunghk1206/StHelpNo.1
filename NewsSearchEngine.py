import bs4 as bs
import urllib.request

search_ls = ["https://munfinder.com"]
nameSearch = ['munfinder']
tempL = []
for Ind, each in enumerate(search_ls):
    source = urllib.request.urlopen(each).read()
    soup = bs.BeautifulSoup(source,'lxml')
    for url in soup.find_all('a'):
        tempurl = url.get('href')
        try: 
            if nameSearch[Ind] in tempurl:
                if Ind == 0:
                    if 'https://munfinder.com/mun/' in tempurl:
                        tempL.append(tempurl.split('/')[4])
        except:
            pass
print(set(tempL))