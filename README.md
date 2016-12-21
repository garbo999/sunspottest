# My personal Rails Sunspot test

## Goals
- Create Rake task to input data from Leipzig Corpora Collection
- Build basic search engine with highlighting and pagination
- Explore how Solr handles indexing of different languages (e.g. English, German, French, Russian)

## Rake task
`rake read_corpus` reads a specified file (`txt` format) and saves it to the Rails database.
