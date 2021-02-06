# https://cookpad-mart-careers.studio.site/engineer の Q2

# Part1
# use the theory of quicksort
def strength_sort(array)
  return array if array.length <= 1

  dup_array = array.dup # pop すると引数に破壊的変更が起こるので dup している
  pivot = dup_array.pop # pivot は何を選んでも良い
  stronger, weaker = dup_array.partition do |e|
    res = server(e, pivot)
    res[:winner] == e
  end
  strength_sort(stronger) + [pivot] + strength_sort(weaker) # 要素数が 1 以下になるまで再帰的に呼び出す
end

# server simulation
$receive_count = 0
def server(a, b)
  $receive_count += 1
  puts "Request received! #{$receive_count}"

  strength_rank = %w[griffin vampire dragon troll medusa]
  a_index = strength_rank.find_index(a)
  b_index = strength_rank.find_index(b)
  return 'Invalid Argument' unless a_index && b_index

  return { winner: a, loser: b } if a_index < b_index

  { winner: b, loser: a }
end

monsters = %w[griffin vampire dragon troll medusa].shuffle
puts "Shuffled monsters: #{monsters}"
puts "Sorted monsters: #{strength_sort(monsters)}"

# ---------------------------------------------------------------------
# Part2
require 'json'

# use the theory of quicksort
def strength_sort(array)
  return array if array.length <= 1

  dup_array = array.dup # pop すると引数に破壊的変更が起こるので dup している
  pivot = dup_array.pop # pivot は何を選んでも良い
  stronger, weaker = dup_array.partition do |e|
    res = `curl https://ob6la3c120.execute-api.ap-northeast-1.amazonaws.com/Prod/battle/#{e}+#{pivot}`
    JSON.parse(res)['winner'] == e
  end
  strength_sort(stronger) + [pivot] + strength_sort(weaker) # 要素数が 1 以下になるまで再帰的に呼び出す
end

monsters = %w[griffin vampire dragon troll medusa].shuffle
puts "Shuffled monsters: #{monsters}"
puts "Sorted monsters: #{strength_sort(monsters)}"
