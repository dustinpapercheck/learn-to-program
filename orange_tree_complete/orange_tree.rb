class OrangeTree < ActiveRecord::Base



  def one_year_passes
    self.age = age + 1
    self.height = height + 1 unless mature?
    self.fruit = 0
    fruit_increase
  end

  def fruit_increase
    self.fruit = fruit + 5 unless age < 5
  end

  def mature?
    age > 10
  end

  def alive?
    age <= 30
  end

  def pick_orange
    return "the%20tree%20is%20dead" if not alive?
    if self.fruit != 0
     self.fruit -= 1
      taste = ["Mmmmm...that%20was%20delicious", "Tastes%20like%20orange", "Pucka...yuck.%20There%20is%20an%20ant%20in%20my%20orange"]
      taste[rand(3)]
    else
      "No%20fruit"
    end
  end
  



  private
  def fruit_increase
    self.fruit = (age - 4) * 5 unless age < 5
  end


end
