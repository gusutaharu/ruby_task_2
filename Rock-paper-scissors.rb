
puts "じゃんけん..."
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
$aiko = 0

def janken_game


    user_hand = gets.to_i
    cpu_hand = rand(2)
    
    
    
    jankens = ["グー","チョキ","パー"]

  if user_hand == 3 
    puts "じゃんけんを終了します"

  elsif (user_hand == 0)||(user_hand == 1)||(user_hand == 2)



   if $aiko > 0
    puts "ショ！"
   else
    puts "ホイ!"
   end

    puts "----------------"

    puts "あなた:#{jankens[user_hand]}を出しました"
    puts "相手:#{jankens[cpu_hand]}を出しました"
  
      if user_hand == cpu_hand #あいこ処理
  
        puts "あいこで..."
        $aiko = 1
    
        return true
    
      elsif (user_hand == 0 && cpu_hand == 1)||(user_hand == 1 && cpu_hand == 2)||(user_hand == 2 && cpu_hand == 0)
    
     #あなたがかった時の処理
      
        puts "----------------"
        puts "あっち向いて〜"
        puts "0(上)1(下)2(左)3(右)"

         while user_direction = gets.to_i
          break if (user_direction >= 0 )&&( user_direction <= 3)
          puts "0~3の数字で入力してください"
         end
        
        
        
        cpu_direction = rand(3)

        directions = ["上","下","左","右"]

        puts "ホイ"
        puts "----------------"
        puts "あなた:#{directions[user_direction]}"
        puts "相手:#{directions[cpu_direction]}"
        $aiko = 0
          if user_direction == cpu_direction
            
            puts "あなたの勝ちです"

            return false
            
          else 
            puts "じゃんけん..."
            puts "0(グー)1(チョキ)2(パー)3(戦わない)"
            return true
          
          end
  

    else
    
    #あなたが負けた時の処理
    
        puts "----------------"
        puts "あっち向いて〜"
        puts "0(上)1(下)2(左)3(右)"

         while user_direction = gets.to_i
         break if (user_direction >= 0 )&&( user_direction <= 3)
         puts "0~3の数字で入力してください"
         end
        
        
        cpu_direction = rand(3)

        directions = ["上","下","左","右"]

        puts "ホイ"
        puts "----------------"
        puts "あなた:#{directions[user_direction]}"
        puts "相手:#{directions[cpu_direction]}"
        $aiko = 0
       
        if user_direction == cpu_direction
            
            puts "あなたの負けです"

            return false
            
          else 
            puts "じゃんけん..."
            puts "0(グー)1(チョキ)2(パー)3(戦わない)"
            return true
        
          end
      end
      
 else
      puts "0〜2の数字を入力してください"
      return true
      
 end

end

next_game = true


while next_game
  next_game = janken_game
end
