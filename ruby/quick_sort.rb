# See. https://morizyun.github.io/blog/quick-sort-merge-sort-algorithm-aoj-10029/
class Array
  def quick_sort
    return self if length <= 1

    pivot = pop # shift でも可（その場合あとの push は unshift になる）
    smaller, bigger = partition { |e| e < pivot }
    push pivot # pop によって起きたレシーバへの破壊的変更を元に戻す
    smaller.quick_sort + [pivot] + bigger.quick_sort
  end
end

gets.chomp.split(' ').map(&:to_i).quick_sort
