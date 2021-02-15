from scholarly import scholarly

def search_author(author: str) -> None:
    print(next(scholarly.search_author(author)))

def search_keyword(query: str) -> None:
    search_query = scholarly.search_keyword(query)
    paper = next(search_query)
    print(paper)

def search_title(query: str) -> None:
    search_query = scholarly.search_pubs(query)
    scholarly.pprint(next(search_query))

from scholarly import ProxyGenerator
pg = ProxyGenerator()
pg.SingleProxy(http = <your http proxy>, https = <your https proxy>)
#scholarly.use_proxy(None)

def test():

    papers = [a for a in scholarly.search_pubs('Sentiment Analysis Survey')]
    for i in papers:
        print(i)

if(__name__=="__main__"):
    test()
    #search_title('Perception of physical stability and center of mass of 3D objects')