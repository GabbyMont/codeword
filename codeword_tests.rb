require "minitest/autorun"
require_relative "codeword_function.rb"

class Method_tests < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_class_array
		code = code_word(1292)
		assert_equal(String,code.class)
	end

	def test_404_error
		code = code_word(404)
		assert_equal("Page not found.", code)
	end

	def test_402_error
		code = code_word(402)
		assert_equal("Page almost found.", code)
	end

	def test_1292_error
		code = code_word(1292)
		assert_equal("Not even close.", code)
	end
end