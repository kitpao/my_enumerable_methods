# frozen_string_literal: true

module Enumerable
  def my_each
    return to_enum(:my_each) unless block_given?

    size.times { |pos| yield self[pos] }
    self
  end

  def my_each_with_index
    return to_enum(:my_each) unless block_given?

    size.times { |pos| yield self[pos], pos }
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
      # rubocop:disable Style/CaseEquality
      my_all? { |item| arg === item }
      # rubocop:enable Style/CaseEquality
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
      # rubocop:disable Style/CaseEquality
      my_any? { |item| arg === item }
      # rubocop:enable Style/CaseEquality
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
      # rubocop:disable Style/CaseEquality
      my_none? { |item| arg === item }
      # rubocop:enable Style/CaseEquality
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
      # rubocop:disable Style/CaseEquality
      my_count { |item| arg === item }
      # rubocop:enable Style/CaseEquality
    end
  end

  def my_map
    return to_enum(:my_map) unless block_given?

    new_arr = []
    size.times { |pos| new_arr << (yield to_a[pos]) }
    new_arr
  end
end
