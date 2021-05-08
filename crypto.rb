require 'digest'

puts "Введите фразу для шифрования:"
phrase = gets.chomp

puts "Каким образом зашифровать: \n1. MD5\n2. SHA1"
crypto = gets.to_i

case crypto
when 1
  md5 = Digest::MD5.new
  md5 << phrase
  puts md5.hexdigest
when 2
  sha1 = Digest::SHA1.new
  sha1 << phrase
  puts sha1.hexdigest
end
