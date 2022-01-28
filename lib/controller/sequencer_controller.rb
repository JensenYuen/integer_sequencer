# frozen_string_literal: false

require 'pry-byebug'

# logic of the sequencer is stored here
class SequencerController

  def initialize(user_input)
    @order = 0
    @user_input = user_input
    spliter(user_input)
  end

  def sequencer
    return unless valid_arr_size? || valid_integer_range? || valid_order_size?

    @order = 1 unless valid_order?(@order)
    @order.times do
      @sequence = subtrator
    end
    @sequence
  end

  private

  def spliter(user_input)
    user_input_arr = user_input.split(',')
    @sequence = user_input_arr[0].split(' ').map(&:to_i)
    @order = user_input_arr[1].to_i
  end

  def subtrator
    subtrated_arr = []
    index = 0
    loop_num = @sequence.size - 1
    loop_num.times do
      result = @sequence[index] - @sequence[index + 1]
      index += 1
      subtrated_arr << result
    end
    subtrated_arr
  end

  def valid_order?(user_input_order)
    return false if user_input_order.nil? || user_input_order.zero?

    true
  end

  # Extra consideration to prevent user from running the  program if invalid inputs
  # Extra methods below to check for
  # if the input contains between 1 to 20 integers (inclusive)
  def valid_arr_size?
    arr_size = @user_input.size
    arr_size < 1 || arr_size > 20
  end

  # if the integer are between -200 and 200, inclusive.
  def valid_integer_range?
    result = false
    @sequence.each do |number|
      result = true if number < -200 || number > 200
    end
    result
  end

  # if n is between 0 and K-1, inclusive, where K is the number of elements in the input
  def valid_order_size?
    @order.negative? || @order < @sequence.size
  end
end
