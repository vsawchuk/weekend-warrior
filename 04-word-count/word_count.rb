def words(string)
  keys = string.split(" ")
  arr = keys.uniq.map { |word| [word, keys.count(word)]}
  return arr.to_h
end
