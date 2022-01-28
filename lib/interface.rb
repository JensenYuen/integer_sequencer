# frozen_string_literal: false

require_relative './controller/sequencer_controller'

number_sequencer = SequencerController.new
running = true

while running
  puts 'Enter a sequence of integers separated by space, then a comma, and the order n.'
  puts 'eg: 5 6 3 9 -1,2 '
  print "\nYour sequence :"
  user_input = gets.chomp
  answer = number_sequencer.sequencer(user_input)
  puts 'sequenced number '
  puts answer
  running = false
end
