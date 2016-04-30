require 'minitest/autorun'
require_relative '../warehouse_picker_functions.rb'

class TestWarehouse <Minitest::Test

  #Test for Task 1
  def test_item_at_bay
    item = item_at_bay('b5')
    assert_equal('nail filer', item)  
  end

  #Test for Task 2
  def test_bay_of_item
    bay = bay_of_item('nail filer')
    assert_equal('b5', bay)
  end

  #Test for task 3
  def test_items_at_bays
    items = items_at_bays(['b5', 'b10', 'b6'])
    assert_equal(['nail filer', 'cookie jar', 'tooth paste'], items)
  end

  #Test for task 4
  def test_bays_of_items
    bays = bays_of_items(['rusty nail', 'shoe lace', 'leg warmers'])
    assert_equal(['c1', 'c9', 'c10'], bays)
  end

end 