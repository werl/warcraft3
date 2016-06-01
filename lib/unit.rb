class Unit
  
  attr_reader :health_points, :attack_power

  def initialize (hp,ap)
    @health_points = hp
    @attack_power = ap
  end

  def attack! (enemy)
    enemy.damage(attack_power)
  end
  
  def damage (amount)
    @health_points -= amount
  end

end
