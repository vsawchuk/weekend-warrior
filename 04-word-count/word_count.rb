def words(word)
  keys = word.split(" ")
  final_hash = Hash.new(0)
  keys.each do |aword|
    final_hash[aword] +=1
  end

  return final_hash
end
