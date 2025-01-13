# frozen_string_literal: true

require_relative "ppp_coloring/version"

module PppColoring
  TYPES = {
    'info'      => '36',
    'warn'      => '35',
    'error'     => '41',
    'success'   => '42',
  }.freeze

  def self.ppp(arg, type = :info)
    puts coloring(arg, type.to_s)
  end

  def self.coloring(text, *a_types)
    types_codes = a_types.map { |s| TYPES.fetch(s, s) }
    "\e[#{types_codes.join(';')}m#{text}\e[0m"
  end
end
