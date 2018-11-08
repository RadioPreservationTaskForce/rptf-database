# The RPTF Database

This is the repository for the Radio Preservation Task Force/Association for Recorded Sound Collections Database.

## Dependencies

* Ruby 2.2 or higher
* Solr 5.3.0 or higher
* MySQL

Install the Rubygems needed by the application using `bundle`.

## Indexing test data

The repository ships with 100 records for testing.

* Start `solr_wrapper` (e.g. `bundle exec solr_wrapper`)
* Run the following (which finds Solr's `post` script from the temp directory where `solr_wrapper` installs Solr):

```bash
bash `bundle exec solr_wrapper dir`/bin/post -c blacklight-core test/sample-data.json
```

## Deployment

Production secrets (e.g. MySQL database credentials) are defined using environment variables:

* `DATABASE_URL` (see [config/database.yml](`config/database.yml`) for the format)
* `SECRET_KEY_BASE` (see [config/secrets.yml](`config/secrets.yml`))
