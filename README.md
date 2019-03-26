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

## Indexing production data

Production data is managed in the
[rptf-index-data](https://github.com/RadioPreservationTaskForce/rptf-index-data)
repository. Indexing updates should be incremental based on the date of the files. For example:

```bash
/opt/solr/bin/post -c blacklight-core test/collections_2019-03-26.json
```

You can delete records using [JSON update commands](https://lucene.apache.org/solr/guide/7_5/uploading-data-with-index-handlers.html#sending-json-update-commands). For example, create a new JSON file that contains the IDs of the records you want to delete.

```json
{"delete": ["collection_1204", "collection_1214", "collection_1215"]}
```

Then run the following command specifying your file like the following (note: this is different from the above command):

```bash
/opt/solr/bin/post -c blacklight-core -format solr delete-these.json
```

## Deployment

Production secrets (e.g. MySQL database credentials) are defined using environment variables:

* `DATABASE_URL` (see [config/database.yml](`config/database.yml`) for the format)
* `SECRET_KEY_BASE` (see [config/secrets.yml](`config/secrets.yml`))
