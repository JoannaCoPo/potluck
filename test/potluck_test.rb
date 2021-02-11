gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'
require 'pry'

class DishTest < Minitest::Test
  def test_it_exits
    potluck = Potluck.new("7-13-18")
    assert_instance_of Potluck, potluck
  end

  def test_it_has_a_date
    potluck = Potluck.new("7-13-18")
    assert_equal "7-13-18", potluck.date
  end

  def test_it_has_dishes_list
    skip
    potluck = Potluck.new("7-13-18")
    assert_equal [], potluck.dishes
  end

  def test_it_can_add_dishes
    skip
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck = Potluck.new("7-13-18")
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)
    assert_equal [couscous_salad, cocktail_meatballs], potluck.dishes
  end

  def test_it_can_add_appetizers_too
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entre)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    candy_salad = Dish.new("Candy Salad", :dessert)
    potluck = Potluck.new("7-13-18")
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(roast_pork)
    potluck.add_dish(cocktail_meatballs)
    potluck.add_dish(cocktail_meatballs)
  end



end
