require 'spec_helper'

describe Administrate::Field::SimpleMarkdown do
  subject { Administrate::Field::SimpleMarkdown.new(:simple_markdown, data, :show) }

  let(:md) { '**foo** is the new _bar_' }
  let(:text) { 'foo is the new bar' }
  let(:html) { '<p><strong>foo</strong> is the new <em>bar</em></p>' }

  describe '#data' do
    let(:output) { subject.data }

    context 'with nil' do
      let(:data) { nil }

      it 'returns an empty string' do
        expect(output).to eq ''
      end
    end

    context 'with data' do
      let(:data) { text }

      it 'returns the data' do
        expect(output).to eq text
      end
    end
  end

  describe '#to_s' do
    let(:output) { subject.to_s }

    context 'with nil' do
      let(:data) { nil }

      it 'returns an empty string' do
        expect(output).to eq ''
      end
    end

    context 'with a string' do
      let(:data) { text }

      it 'returns the same string' do
        expect(output).to eq "#{text}\n"
      end
    end

    context 'with Markdown' do
      let(:data) { md }

      it 'strips out the formatting' do
        expect(output).to eq "#{text}\n"
      end
    end
  end

  describe '#to_html' do
    let(:output) { subject.to_html }

    context 'with nil' do
      let(:data) { nil }

      it 'returns an empty string' do
        expect(output).to eq ''
      end
    end

    context 'with a string' do
      let(:data) { text }

      it 'wraps it in a paragraph' do
        expect(output).to eq "<p>#{text}</p>\n"
      end
    end

    context 'with Markdown' do
      let(:data) { md }

      it 'converts it to HTML' do
        expect(output).to eq "#{html}\n"
      end
    end
  end
end
