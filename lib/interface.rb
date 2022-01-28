# frozen_string_literal: false

require_relative './controller/sequencer_controller'

running = true

while running
  puts `clear`
  puts 'Enter a sequence of integers separated by space, then a comma, and the order n.'
  puts 'Please input between 1 to 20 integers (inclusive)'
  puts 'Please enter integer that are between -200 and 200, inclusive.'
  puts 'Please enter n such that it is no larger than the number of integers entered'
  puts 'eg: 5 6 3 9 -1,2 '
  print "\nYour sequence :"
  user_input = gets.chomp
  number_sequencer = SequencerController.new(user_input)
  answer = number_sequencer.sequencer
  if answer.nil?
    puts 'Your input sequence is incorrect'
  else
    print 'sequenced number :'
    answer.each do |number|
      print " #{number} "
    end
  end
  running = false
end
