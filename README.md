# Rails Sunspot test project

This is my personal test of Sunspot to get familiar with SOLR. I have previously used `pg_search`, a Rails Gem that provides full-text search with PostgreSQL.

The project currently runs on a development server.

## Goals
- Create Rake task to input data from Leipzig Corpora Collection
- Build basic search engine with highlighting and pagination
- Explore how Solr handles indexing of different languages (e.g. English, German, French, Russian)

## Rake task
`rake read_corpus` reads a specified file (`txt` format) and saves it to the Rails database.

## Linguistic search

It is interesting to do a search for `help` and see that Solr also finds results such as `helped`, `helps` and `helping`. In the default (simplest) configuration of SOLR, apparently no stemming is used to achieve this result.

The next step is to explore the advanced configuration as described [here][Link 1].

## TO DO
- Deploy SOLR on a production server 
- Benchmark indexing by SOLR with a larger data set, e.g. 1M sentences

## SOLR server
- Start with `bundle exec rake sunspot:solr:start`
- Access at `http://localhost:8982/`

[Link 1]: https://github.com/sunspot/sunspot/wiki/Advanced-Fulltext-Search-Configuration
