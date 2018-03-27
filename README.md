# The RPTF Database

This is the repository for the Radio Preservation Task Force/Association for Recorded Sound Collections Database.

## Dependencies

* Ruby 2.2 or higher
* Solr 5.3.0 or higher
* MySQL

Install the Rubygems needed by the application using `bundle`.

## Deployment

Production secrets (e.g. MySQL database credentials) are defined using environment variables:

* `DATABASE_URL` (see [config/database.yml](`config/database.yml`) for the format)
* `SECRET_KEY_BASE` (see [config/secrets.yml](`config/secrets.yml`))
