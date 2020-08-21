# frozen_string_literal: true

# rubocop:disable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity
# rubocop:disable Style/CaseEquality
module Enumerable
  def my_each
    return to_enum(:my_each) unless block_given?

    arr = to_a
    size.times { |pos| yield arr[pos] }
    self
  end

  def my_each_with_index
    return to_enum(:my_each) unless block_given?

    arr = to_a
    size.times { |pos| yield arr[pos], pos }
    self
  end

  def my_select
    return to_enum(:my_each) unless block_given?

    new_arr = []
    my_each { |item| new_arr << item if yield item }
    new_arr
  end

  def my_all?(arg = nil)
    if block_given?
      false_counter = 0
      my_each { |item| false_counter += 1 unless yield item }
      false_counter.zero?
    elsif arg.nil?
      my_all? { |item| item }
    else
      my_all? { |item| arg === item }
    end
  end

  def my_any?(arg = nil)
    if block_given?
      true_counter = 0
      my_each { |item| true_counter += 1 if yield item }
      true_counter.positive?
    elsif arg.nil?
      my_any? { |item| item }
    else
      my_any? { |item| arg === item }
    end
  end

  def my_none?(arg = nil)
    if block_given?
      true_counter = 0
      my_each { |item| true_counter += 1 if yield item }
      true_counter.zero?
    elsif arg.nil?
      my_none? { |item| item }
    else
      my_none? { |item| arg === item }
    end
  end

  def my_count(arg = nil)
    if block_given?
      elem_counter = 0
      my_each { |item| elem_counter += 1 if yield item }
      elem_counter
    elsif arg.nil?
      my_count { |item| item }
    else
      my_count { |item| arg === item }
    end
  end

  def my_map(*block)
    return to_enum(:my_map) unless block_given?

    new_arr = []
    if !block[0].nil?
      size.times { |pos| new_arr << (block[0].call to_a[pos]) }
    else
      size.times { |pos| new_arr << (yield to_a[pos]) }
    end
    new_arr
  end

  def my_inject(first_arg = nil, second_arg = nil)
    arr = to_a
    if block_given?
      if first_arg.nil?
        acc = arr[0]
        arr.my_each_with_index { |item, index| acc = yield(acc, item) if index.positive? }
      else
        return to_enum(:my_inject) unless (first_arg.is_a? Integer) || (first_arg.is_a? String)

        acc = first_arg
        arr.my_each { |item| acc = yield(acc, item) }
      end
    elsif second_arg.nil?
      unless first_arg.is_a? Symbol
        raise LocalJumpError.new("no block given")
      end

      acc = arr[0]
      arr.my_each_with_index { |item, index| acc = acc.send first_arg, item if index.positive? }
    else
      unless ((first_arg.is_a? Integer) || (first_arg.is_a? String)) && (second_arg.is_a? Symbol)
        return to_enum(:my_inject)
      end

      acc = first_arg
      arr.my_each { |item| acc = acc.send second_arg, item }
    end
    acc
  end
end

def multiply_els(arr)
  arr.my_inject(:*)
end

puts "result of multiply_els: #{multiply_els([2, 4, 5])}"

my_proc = proc { |arg1| "#{arg1}! " }
print "only proc: #{[1, 2, 3].my_map(&my_proc)}\n"
print "ignore block and use proc: #{[1, 2, 3].my_map(my_proc) { |x| x + 1 }}\n"
print "only block: #{[1, 2, 3].my_map { |x| x + 1 }}\n"

# rubocop:enable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity
# rubocop:enable Style/CaseEquality
