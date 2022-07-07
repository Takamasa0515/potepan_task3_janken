def janken_program
    puts "じゃんけん..."
    puts "0(グー),1(チョキ),2(パー),3(戦わない)"

    player_hand = gets.to_i
    program_hand = rand(3)

    puts "ホイ！"
    puts "-------------------"

    janken = ["グー" , "チョキ" , "パー" , "戦わない"]

    puts "あなた：#{janken[player_hand]}を出しました。"
    puts "相手：#{janken[program_hand]}を出しました。"
   
    if player_hand <0 || 3<player_hand
        puts "正しい数字を入力してください。"
        janken_program
    end
    
    if player_hand == program_hand
        puts "あいこで..."
        puts "-------------------"
        return janken_program
    elsif
        (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
        puts "勝ち"
        @janken_result = 'win'
        return false
    elsif player_hand == 3
        puts "終了"
        @janken_result = 'Abandoned'
        return false
    else 
        puts "負け"
        @janken_result = 'lose'
        return false
    end
end

next_game = true

while next_game
    next_game = janken_program
end

def acchimuite_hoi_program
    puts "-------------------"
    puts "あっちむいて〜"
    puts "0(上)1(下)2(左)3(右)"

    player_choice = gets.to_i
    program_choice = rand(3)

    puts "ホイ！"

    acchimuite_hoi = ["上","下","左","右"]

    puts "あなた：#{acchimuite_hoi[player_choice]}を選びました。"
    puts "相手：#{acchimuite_hoi[program_choice]}を選びました。"

    if player_choice <0 || 3<player_choice
        puts "正しい数字を入力してください。"
        return acchimuite_hoi_program
    end

    case  @janken_result
    when 'Abandoned' then
        puts "じゃんけんが放棄れています。"
        return false
    when 'win' then
        if player_choice == program_choice
            puts "あなたの勝ちです！"
            return false
        else puts "じゃんけんに戻ります"
            puts "-------------------"
            janken_program
            return true
        end
    when 'lose' then
        if player_choice == program_choice
            puts "あなたの負けです。"
            return false
        else puts "じゃんけんに戻ります。"
            puts "-------------------"
            janken_program
            return true
        end
    end
end

while #@janken_result = 'win' || @janken_result = 'lose'
    acchimuite_hoi_program
end