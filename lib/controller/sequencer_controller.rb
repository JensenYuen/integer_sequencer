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
    return false if user_input_order.nil?

    return false if user_input_order.zero?

    return false if user_input_order > @sequence.size

    true
  end
end
