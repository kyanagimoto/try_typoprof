# frozen_string_literal: true

require_relative '../lib/fizz_buzz'
require 'date'
require 'retryable'

Retryable.retryable(sleep: 1) do
  results = FizzBuzz.run(Date.today.day)
  puts results
end
