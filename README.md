# govuk-dfe-prototype

A prototype containing DfE's Early Career Framework (ECF) using the GOV.UK design system for user research purposes.

## Technical documentation

### Running the application locally

First clone the repository:

```bash
git clone git@github.com:RobertM905/dfe-govuk-prototype.git
cd dfe-govuk-prototype
```

Run the application in docker using:

```bash
docker-compose run --rm --service-ports web
```

This will start the application on <http://localhost:3000> which roots to the ECF page.

### Files related to ECF content

- `config/routes.rb` - Contains all the routes for the ECF content.
- `app/controllers/dfe_controller.rb` - Defines what `layout` view is used for ECF pages and processes requests.
- `app/views/layouts/government-frontend.html.erb` - Defines the basic layout of an ECF page such as the `head` and `main` section of the HTML page.
- `app/views/dfe/*` - Contains the HTML pages for ECF content. As each view has been named like so `page_<NUMBER>_<NUMBER>` it is suggested to check out the `routes` file to help figure out which view corresponds to which page.
- `app/assets/stylesheets/application.scss` - Imports styles from modules and contains some custom styling as well.
- `app/assets/stylesheets/government-frontend/*` - Contains custom styling for ECF content.
- `app/assets/stylesheets/modules/_publisher-metadata.scss` - Contains custom styling for ECF content.


### Deploying to Heroku

[TODO: Add deployment steps]

## Licence

[MIT License](LICENCE)
