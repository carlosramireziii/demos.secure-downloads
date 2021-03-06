# Secure Downloads Demo

## About

This demo application accompanies the blog post titled "Secure File
Downloads in Rails" and can be [read
here](https://medium.com/@carlosramireziii/secure-file-download-urls-in-rails-d52128b24311#.odjzdh806).

You can learn more about the author
[here](http://www.carlosramireziii.com?utm_source=github&utm_campaign=demo-secure_downloads)

## Setup

1. Clone the repository

        git clone git@github.com:carlosramireziii/demos.secure-downloads.git

1. Run the setup command

        bin/setup

  This will install dependencies, create and seed the database, copy environment-specific files, etc.

1. Update environment-specific files (`database.yml`, `.env`)

1. Run the Rails server

        bin/rails s

From here you are all set. Demo users have been created from the seed
file. The credentials are `user1@demo.com:password` and
`user2@demo.com:password`.

## Examples

Examples are included for three of the most popular file upload
providers: `carrierwave`, `paperclip`, and `refile`. Each has its own
separate branch.

*NOTE*: When switching to a new branch, be sure to do the following

1. Run the database migrations

1. Update the environment-specific files (e.g. `.env`)

  You may want to delete the `.env` file entirely and re-run the
  `bin/setup` script to generate a new version from the sample file with
  the required environment variables.
