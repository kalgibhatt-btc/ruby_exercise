class TwoBucket
  def initialize(b1,b2,goal,start)
    @b1 = b1
    @b2 = b2
    @goal = goal
    @start = start
  end
  def moves
    if @start == 'one'
      count = 0
      bucket1 = @b1
      bucket2 = 0
      count += 1
      while 1
        if bucket1 > 0
            bucket2 = bucket2 + bucket1
            bucket1 = 0
            count += 1
        end
        if bucket1 == 0
          bucket1 = @b1
          count += 1
        end
        if bucket1 + bucket2 > @b2
          count += 1
           n = bucket1 + bucket2 - @b2
           bucket2 = @b2
           bucket1 = n
           break if bucket1 == @goal
        else
          count += 1
          bucket2 = bucket2 + bucket1
          bucket1 = 0
        end
        if bucket2 == @b2
          count += 1
          bucket2 = 0
        end
      end
    @goal_bucket = 'one'
    @other_bucket = bucket2
    count
  elsif @start ='two'
    count = 0
    bucket2 = @b2
    bucket1 = 0
    count += 1
    while 1
      if bucket2 > 0
        if bucket1 + bucket2 > @b1
          count += 1
           n = bucket1 + bucket2 - @b1
           bucket1 = @b1
           bucket2 = n
           break if bucket2 == @goal
        else
          bucket1 = bucket1 + bucket2
          bucket2 = 0
          count += 1
        end
      end
      if bucket2 == 0
        bucket2 = @b2
        count += 1
      end
      if bucket1 == @b1
        count += 1
        bucket1 = 0
      end
    end
  @goal_bucket = 'two'
  @other_bucket = bucket1
  count
  end
  end
  
  def goal_bucket
    @goal_bucket
  end
  def other_bucket
    @other_bucket
  end
end
