def rps
  puts "じゃんけん..."
  puts "0（グー） 1（チョキ） 2（パー） 3（戦わない）"

  number = gets.chomp.to_i
  comp = rand(3)

  rps_cmd = ["グー", "チョキ", "パー"]

  if number == 0 && comp == 1 || number == 1 && comp == 2 || 
    number == 2 && comp == 0
    puts "ホイ！"
    puts "----------------------"
    puts "あなた：「#{rps_cmd[number]}」を出しました。"
    puts "相手：「#{rps_cmd[comp]}」を出しました。"
    puts "あなたが指を指します。"
    puts "----------------------"
    win_route
  elsif number == 0 && comp == 2 || number == 1 && comp == 0 ||
    number == 2 && comp == 1
    puts "ホイ！"
    puts "----------------------"
    puts "あなた：「#{rps_cmd[number]}」を出しました。"
    puts "相手：「#{rps_cmd[comp]}」を出しました。"
    puts "相手が指を指します。"
    puts "----------------------"
    lose_route
  elsif number == 3
    return false
  else
    puts "あいこ"
    return true
  end
end

def win_route
  puts "あっちむいて"
  puts "0（上） 1（下） 2（右） 3（左）"

  number_hand = gets.chomp.to_i
  comp_face = rand(4)

  fot_cmd = ["上", "下", "右", "左"]

  if number_hand == comp_face
    puts "ホイ！"
    puts "----------------------"
    puts "あなた：「#{fot_cmd[number_hand]}」を出しました。"
    puts "相手：「#{fot_cmd[comp_face]}」を出しました。"
    puts "あなたの勝ちです。"
    puts "----------------------"
    return false
  elsif number_hand == 0 && comp_face != 0 || number_hand == 1 && comp_face != 1
    number_hand == 2 && comp_face != 2 || number_hand == 3 && comp_face != 3
    puts "ホイ！"
    puts "----------------------"
    puts "あなた：「#{fot_cmd[number_hand]}」を出しました。"
    puts "相手：「#{fot_cmd[comp_face]}」を出しました。"
    puts "もう一度！"
    puts "----------------------"
    return true
  else
    puts "じゃんけんに戻ります。"
    return true
  end
end

def lose_route
  puts "あっちむいて"
  puts "0（上） 1（下） 2（右） 3（左）"

  number_face = gets.chomp.to_i
  comp_hand = rand(4)

  fot_cmd = ["上", "下", "右", "左"]

  if number_face == comp_hand
    puts "ホイ！"
    puts "----------------------"
    puts "あなた：「#{fot_cmd[number_face]}」を出しました。"
    puts "相手：「#{fot_cmd[comp_hand]}」を出しました。"
    puts "あなたの負けです。"
    puts "----------------------"
    return false
  elsif number_face == 0 && comp_hand != 0 || number_face == 1 && comp_hand != 1
    number_face == 2 && comp_hand != 2 || number_face == 3 && comp_hand != 3
    puts "ホイ！"
    puts "----------------------"
    puts "あなた：「#{fot_cmd[number_face]}」を出しました。"
    puts "相手：「#{fot_cmd[comp_hand]}」を出しました。"
    puts "もう一度！"
    puts "----------------------"
    return true
  else
    puts "じゃんけんに戻ります。"
    return true
  end
end

next_rps = true
while next_rps
  next_rps = rps  
end
