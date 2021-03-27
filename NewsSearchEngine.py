import bs4 as bs
import urllib.request
import itertools

search_ls = ["https://munfinder.com", "https://internshala.com/internships"]
nameSearch = ['munfinder']
tempL = []
for Ind, each in enumerate(search_ls):
    source = urllib.request.urlopen(each).read()
    soup = bs.BeautifulSoup(source,'lxml')
    for url in soup.find_all('a'):
        tempurl = url.get('href')
        try: 
            if Ind == 0:
                if nameSearch[Ind] in tempurl:
                    if 'https://munfinder.com/mun/' in tempurl:
                        tempL.append(tempurl.split('/')[4])
            elif Ind == 1:
                if len(url.get_text()) > 13:
                    pass
                else:
                    tempL.append(url.get_text())
        except:
            pass
for each in tempL:
    if each == '':
        tempL.remove(each)
    else:
        pass
file = open("./Data.txt", "w") #[username_info].txt - > youngho.txt, file의 권한 = w -> Write
file.write(str(set(tempL))) #new line
file.write("\n")
file.close()