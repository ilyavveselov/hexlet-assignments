# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def setup
    @test_array = [0,1,2]
  end

  def test_initialize
    stack = Stack.new
    refute(stack.nil?)
  end

  def test_pop!
    stack = Stack.new(@test_array)
    stack_size_after_pop = stack.size - 1
    stack.pop!
    assert(stack.size == stack_size_after_pop)

  end

  def test_push!
    element = 3
    stack = Stack.new(@test_array)
    stack_size_after_push = stack.size + 1
    assert(stack.push!(3).size == stack_size_after_push)
  end

  def test_empty?
    stack = Stack.new
    assert (stack.size == 0 && stack.empty?)
  end

  def test_to_a
    stack = Stack.new(@test_array)
    test_array = @test_array
    assert(stack.to_a == test_array)
  end

  def test_clear!
    stack = Stack.new(@test_array)
    assert(stack.clear!.size == 0)
  end

  def test_get_size
    test_array_size = @test_array.size
    stack = Stack.new(@test_array)
    assert(test_array_size == stack.size)
  end

  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
