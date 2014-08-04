# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    encodings = Encoding.list.reject do |enc|
      enc == Encoding::ISO_2022_JP_2 ||
      enc == Encoding::UTF_7
    end
    encodings.each do |enc|
      assert(RegexpM17N.non_empty?('.'.encode(enc)))
    end
  end
end
