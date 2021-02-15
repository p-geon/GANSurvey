from scholarly import scholarly

def search_author(author='Ian Goodfellow'):
    print(next(scholarly.search_author(author)))

def _():
    print(0)
    query = scholarly.search_pubs("A density-based algorithm for discovering clusters in large spatial databases with noise")
    print(1)
    pub = next(query)
    print(2)
    bib = scholarly.bibtex(pub)
    print(3)
    print(bib)
    print(4)