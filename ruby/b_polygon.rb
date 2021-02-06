# https://atcoder.jp/contests/abc117/tasks/abc117_b
def main
  _n = gets.to_i # unused
  l = gets.split.map(&:to_i)

  max = l.max

  rem = l.dup
  rem.delete_at(l.index(max))
  rem_sum = rem.sum

  result = drawable?(max, rem_sum) ? 'Yes' : 'No'
  puts result
end

# @param max [Integer] 一番長い辺
# @param rem_sum [Integer] 残りの辺の合計
# @return [Boolean]
def drawable?(max, rem_sum)
  max < rem_sum
end

main
