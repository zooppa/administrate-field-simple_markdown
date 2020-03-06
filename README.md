# Administrate::Field::SimpleMarkdown

[![Build Status](https://travis-ci.com/zooppa/administrate-field-simple_markdown.svg?branch=master)](https://travis-ci.com/zooppa/administrate-field-simple_markdown)
[![Code Climate](https://codeclimate.com/github/zooppa/administrate-field-simple_markdown/badges/gpa.svg)](https://codeclimate.com/github/zooppa/administrate-field-simple_markdown)

A plugin to edit Markdown text in [Administrate] using [SimpleMDE] v1.11.2.

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
  bar: Field::SimpleMarkdown.with_options({
    safe_links_only: true,
    filter_html: true,
    with_toc_data: true,
    hard_wrap: true,
    link_attributes: { rel: 'follow' },
    autolink: true,
    tables: true,
    no_intra_emphasis: true,
    strikethrough: true,
    highlight: true,
    space_after_headers: true
  })
}.freeze
```

## About

Administrate::Field::SimpleMarkdown is maintained by [Zooppa].

See also the list of [contributors](https://github.com/zooppa/administrate-field-simple_markdown/contributors) who participated in this project.

[administrate]: https://github.com/thoughtbot/administrate
[simplemde]: https://github.com/NextStepWebs/simplemde-markdown-editor
[zooppa]: https://www.zooppa.com/
