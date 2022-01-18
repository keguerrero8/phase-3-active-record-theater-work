class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map {|a| a.actor}
  end

  def locations
    self.auditions.map {|a| a.location}
  end

#   def lead #check back with this to see if we can do it with build in methods
#     if self.auditions.find {|a| a.hired == true} == nil
#       "no actor has been hired for this role"
#     else
#       self.auditions.find {|a| a.hired == true}
#     end
#   end

  def lead #check back with this to see if we can do it with build in methods
    all_hires = self.auditions.filter {|a| a.hired == true} 
    if all_hires[0] == nil
        "no actor has been hired for this role"
    else
        all_hires[0]
    end
  end

#   def understudy
#     if self.auditions.second == nil
#         "no actor has been hired for understudy for this role"
#     else
#         self.auditions.second
#     end
#   end

  def understudy
    all_hires = self.auditions.filter {|a| a.hired == true} 
    if all_hires[1] == nil
        "no actor has been hired for understudy for this role"
    else
        all_hires[1]
    end
  end

end