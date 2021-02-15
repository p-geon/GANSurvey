from scholarly import scholarly

print(next(scholarly.search_author('Ian Goodfellow')))

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