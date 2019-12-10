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

    newArr = []
    self.my_each { |item| newArr << item if yield item }
    newArr
  end
end
