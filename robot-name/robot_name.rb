
class Robot
  @@name = []

   def name
     create_name if @robot_name == nil
     @robot_name
   end

   def create_name
     letter = ('A'..'Z').to_a[rand(0..25)]
     @robot_name = letter + letter + rand(100..999).to_s if @robot_name == nil
     reset if @@name.include?(@robot_name)
     @@name = @robot_name
   end

   def reset
     @robot_name = nil
     name
   end
end
