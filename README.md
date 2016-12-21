# Rails Sunspot test project

This is my personal test of Sunspot to get familiar with SOLR. I have previously used `pg_search`, a Rails Gem that provides full-text search with PostgreSQL.

The project currently runs on the developement server.

## Goals
- Create Rake task to input data from Leipzig Corpora Collection
- Build basic search engine with highlighting and pagination
- Explore how Solr handles indexing of different languages (e.g. English, German, French, Russian)

## Rake task
`rake read_corpus` reads a specified file (`txt` format) and saves it to the Rails database.

## TO DO
- Deploy SOLR on a production server 
