# frozen_string_literal: false

require 'pry-byebug'

# logic of the sequencer is stored here
class SequencerController
  def sequencer(user_input)
    user_input_arr = user_input.split(',')
    sequence = user_input_arr[0]
    num_arr = sequence.split(' ').map(&:to_i)
    order = user_input_arr[1].to_i
    order.times do
      num_arr = subtrator(num_arr)
    end
    num_arr
  end

  def subtrator(num_arr)
    subtrated_arr = []
    index = 0
    loop_num = num_arr.size - 1
    loop_num.times do
      result = num_arr[index] - num_arr[index + 1]
      index += 1
      subtrated_arr << result
    end
    subtrated_arr
  end
end
