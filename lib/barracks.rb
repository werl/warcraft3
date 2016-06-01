class Barracks

  attr_reader :gold, :food

  def initialize
    @gold = 1000
    @food = 80
    
    @footman_gold_cost = 135
    @footman_food_cost = 2
    
    @peasant_gold_cost = 90
    @peasant_food_cost = 5
  end

  def train_footman
    if can_train_footman?
      @gold -= @footman_gold_cost
      @food -= @footman_food_cost
      return Footman.new
    end
    return nil
  end

  def can_train_footman?
    if food >= @footman_food_cost && gold >= @footman_gold_cost
      return true
    else
      return false
    end
  end

  def train_peasant
    if can_train_peasant?
      @gold -= @peasant_gold_cost
      @food -= @peasant_food_cost
      return Peasant.new
    else
      return nil
    end
  end

  def can_train_peasant?
    if food >= @peasant_food_cost && gold >= @peasant_gold_cost
      return true
    else
      return false
    end
  end

end
