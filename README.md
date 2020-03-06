# Administrate::Field::SimpleMarkdown

[![Build Status](https://travis-ci.com/zooppa/administrate-field-simple_markdown.svg?branch=master)](https://travis-ci.com/zooppa/administrate-field-simple_markdown)
[![Code Climate](https://codeclimate.com/github/zooppa/administrate-field-simple_markdown/badges/gpa.svg)](https://codeclimate.com/github/zooppa/administrate-field-simple_markdown)

A plugin to edit Markdown text in [Administrate](https://github.com/thoughtbot/administrate) using [SimpleMDE](https://github.com/sparksuite/simplemde-markdown-editor) v1.11.2.

![Demo](https://raw.githubusercontent.com/zooppa/administrate-field-simple_markdown/master/demo.gif)

## Usage

Add it to your `Gemfile`:

```ruby
gem 'administrate-field-simple_markdown', '~> 0.2.1'
```

Run:

```bash
$ bundle install
```

Add to your `FooDashboard`:

```ruby
ATTRIBUTE_TYPES = {
  bar: Field::SimpleMarkdown
}.freeze
```

## About

Administrate::Field::SimpleMarkdown is maintained by [Zooppa].

See also the list of [contributors](https://github.com/zooppa/administrate-field-simple_markdown/contributors) who participated in this project.

[administrate]: https://github.com/thoughtbot/administrate
[simplemde]: https://github.com/NextStepWebs/simplemde-markdown-editor
[zooppa]: https://www.zooppa.com/
