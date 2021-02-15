from scholarly import scholarly

# OK
def search_author(author: str) -> None:
    print(next(scholarly.search_author(author)))

# OK
def search_keyword(query: str) -> None:
    search_query = scholarly.search_keyword(query)
    paper = next(search_query)
    print(paper)

# NG
def search_title(query: str) -> None:
    search_query = scholarly.search_pubs(query)
    scholarly.pprint(next(search_query))

#
def main():
    search_title(query="GAN")