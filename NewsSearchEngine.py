import bs4 as bs
import urllib.request
import itertools

search_ls = ["https://munfinder.com", "https://internshala.com/internships"]
nameSearch = ['munfinder', 'internshala']
tempL = [[] for _ in search_ls]
for Ind, each in enumerate(search_ls):
    source = urllib.request.urlopen(each).read()
    soup = bs.BeautifulSoup(source,'lxml')
    for url in soup.find_all('a'):
        tempurl = url.get('href')
        try: 
            if Ind == 0:
                if nameSearch[Ind] in tempurl:
                    if 'https://munfinder.com/mun/' in tempurl:
                        tempL[Ind].append(tempurl.split('/')[4])
            elif Ind == 1:
                if '\n' in url.get_text():
                    pass
                else:
                    tempL[Ind].append(url.get_text())
        except:
            pass
file = open("./Data.txt", "w") #[username_info].txt - > youngho.txt, file의 권한 = w -> Write
for each in tempL:
    AL = set(each)
    for event in AL:
        file.write(str(event))
        file.write(", ") #new line
    file.write("\n")
file.close()