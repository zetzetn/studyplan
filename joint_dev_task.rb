# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names << "斎藤"

  p names

  # answer
  # ["田中", "佐藤", "佐々木", "高橋", "斎藤"]
end

def q2
  # array1 = %w(dog cat fish)
  # array2 = %w(bird bat tiger)
  array1 = ["dog", "cat", "fish"]
  array2 = ["bird", "bat", "tiger"]


  
  # 以下に回答を記載
  array = array1 + array2
  puts array

 # answer
#  dog
#  cat
#  fish
#  bird
#  bat
#  tiger

end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  p numbers.count(3)
  # count = numbers.count(3)
  # puts count

end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載

  p sports.compact!
  # sports.compact!
  # # 以下は変更しないで下さい
  # p sports
  # answer
  # ["サッカー", "フットサル", "野球", "バスケ", "バレー"]
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
 p array1.empty?
 p array2.empty?

  # answer
 #  true
 # false
end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  numbers2 = numbers1.map{|n|n*10}
  p numbers2

  # answer
  # [10, 20, 30, 40, 50]
  
end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  # 間違いを修正済み
  p array.map!(&:to_i)

  # answer
  # [1, 2, 3, 4, 5]
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載
  p programming_languages.map!(&:capitalize)
  p upper_case_programming_languages = programming_languages.map(&:upcase)
  # answer
  # ["Ruby", "Php", "Python", "Javascript"]
  # ["RUBY", "PHP", "PYTHON", "JAVASCRIPT"]
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  puts names
  # 以下に回答を記載
  names.each.with_index(1) do |name, i|
    puts "会員No.#{i}\s#{name}さん"
  end
  # answer
# 田中
# 佐藤
# 佐々木
# 高橋
# 会員No.1 田中さん
# 会員No.2 佐藤さん
# 会員No.3 佐々木さん
# 会員No.4 高橋さん
end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |food|
    if food.include?("うに")
      puts "好物です"
    else
      puts "まぁまぁ好きです"
    end
  end
  # answer
  # まぁまぁ好きです
  # まぁまぁ好きです
  # 好物です
  # まぁまぁ好きです
  # 好物です
  # 好物です
  # 好物です
end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載

  sports.flatten.uniq.each.with_index(1) do |sport,n|
    puts "No#{n} #{sport}"
  end

end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  p data[:user][:name]
end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  p user_data = user_data.merge(update_data)
end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  p data.keys
end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  p (data1.has_key?(:age) ? "OK" : "NG")
  p (data2.has_key?(:age) ? "OK" : "NG")

end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。"
  end
end

class UserQ17
  # 以下に回答を記載
  def initialize(**user)
    @name = user[:name]
    @age = user[:age]
    @gender = user[:gender]
    @admin = user[:admin]
  end
  def info
    puts <<~TEXT
    "名前 : #{@name}"
    "年齢 : #{@age}"
    "性別 : #{@gender}"
    "管理者権限 : #{@admin ? "有り" : "無し"}"
    TEXT
  end
end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男", admin: true)
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男", admin: false)

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載
   def initialize(**user)
     @name = user[:name]
     @age = user[:age]
   end

   def introduce
     if @age == 10
       puts "はいさいまいど〜、#{@name}です！！！"
     else
       puts "こんにちは、#{@name}と申します。宜しくお願いいたします。"
     end
    end
end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい

  def initialize(name:)
    @name = name
  end
  attr_reader :name
end



def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載
  def initialize(**user)
     @name = user[:name]
     @age = user[:age]
   end

   attr_reader :name, :age

end

class Zoo
  # 以下に回答を記載

  def initialize(name:, entry_fee:)
    @name = name
    @entry_fee = entry_fee
  end

  def info_entry_fee(user)

    fee_divisions =  [[0, 5], [6, 12], [13, 64], [65, 120]]

    fee_divisions.each_with_index do |division, i|

        if user.age >= division[0] && user.age <= division[1]
            puts "#{user.name}さんの入場料金は\s#{@entry_fee.values[i]}\s円です。"
        end

    end

  end
end


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
end