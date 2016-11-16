# Administrate::Field::SimpleMarkdown

[![Code Climate](https://codeclimate.com/github/z-productions/administrate-field-simple_markdown/badges/gpa.svg)](https://codeclimate.com/github/z-productions/administrate-field-simple_markdown)

A plugin to edit Markdown text in [Administrate] using [SimpleMDE] v1.11.2.

![Demo](https://raw.githubusercontent.com/z-productions/administrate-field-simple_markdown/master/demo.gif)

## Usage

Add it to your `Gemfile`:

```ruby
gem 'administrate-field-simple_markdown', '~> 0.0.1'
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
The field will figure out the appropriate thousand separator and decimal delimiter for the unit.

## About

Administrate::Field::SimpleMarkdown is maintained by [z.productions].

[Administrate]: https://github.com/thoughtbot/administrate
[SimpleMDE]: https://github.com/NextStepWebs/simplemde-markdown-editor
[z.productions]: https://www.z.productions/
