require 'rails'
require 'administrate/field/text'
require 'administrate/engine'
require 'redcarpet'
require 'redcarpet/render_strip'

module Administrate
  module Field
    class SimpleMarkdown < Administrate::Field::Text
      class Engine < ::Rails::Engine
        Administrate::Engine.add_javascript 'administrate-field-simple_markdown/application'
        Administrate::Engine.add_stylesheet 'administrate-field-simple_markdown/application'
      end

      def to_html
        markdown(html_renderer).render(data).html_safe
      end

      def to_s
        markdown(plaintext_renderer).render(data)
      end

      private

      def html_renderer
        @html_renderer ||= Redcarpet::Render::HTML.new({
          safe_links_only: true,
          filter_html: true,
          with_toc_data: true,
          hard_wrap: true,
          link_attributes: { rel: 'nofollow' }
        })
      end

      def plaintext_renderer
        @plaintext_renderer ||= Redcarpet::Render::StripDown
      end

      def markdown(renderer)
        @markdown ||= Redcarpet::Markdown.new(renderer, {
          autolink: true,
          tables: true,
          no_intra_emphasis: true,
          strikethrough: true,
          highlight: true,
          space_after_headers: true
        })
      end
    end
  end
end
