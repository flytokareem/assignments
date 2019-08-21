class Change
    def change(amount)
      available_coins = [100,50,25,10,5,1] 
      coins = []
      index = 0
      coin = available_coins[index]
      remaining_amount = amount
      until remaining_amount == 0
        until remaining_amount >= coin
           index = index + 1
           coin = available_coins[index]
        end
        puts "Coin: #{coin}"
        coins << coin
        remaining_amount = remaining_amount - coin
      end
    
      puts coins.count
    end
  end
  puts "enter any number"
  Change.new.change(gets.to_i)