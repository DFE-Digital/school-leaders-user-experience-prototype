# govuk-services-prototype

[TODO: Add description]


## Technical documentation

This is a Ruby on Rails application that displays the following:

### New navigation pages (.e.g. /education)

We have copied the code for the new navigation pages currently being rendered
by `collections` in production into this repository. This will make it easy to
both update and understand.

### Guidance content items (e.g. /government/publications/governance-handbook)

We fetch the production version of the content item's HTML, parse it and extract
the `main` tag. We then insert that within the navigation elements we want to
use, such as breadcrumbs and related links.

### GOV.UK home page (and other non-guidance pages)

We display the GOV.UK homepage, currently being rendered by `frontend`, by also
fetching its HTML. In this case, we show it as-is from production without
parsing the HTML.


### Running the application locally

First clone the repository:

```
$ git clone git@github.com:RobertM905/dfe-govuk-prototype.git
$ cd dfe-govuk-prototype
```

Run the application in docker using:

```
docker-compose run --rm --service-ports web
```

This will start the application on `http://localhost:3000`.

### Deploy to Heroku

[TODO: Add deployment steps]


## Licence

[MIT License](LICENCE)
