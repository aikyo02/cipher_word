require "cipher_word/version"

module CipherWord
  def self.cipher(word)
    cipher = ""
    word.each_codepoint do |code|
      code += 1
      cipher += code.chr Encoding::UTF_8
    end
    cipher
  end

  def self.decoding(word)
    decoding = ""
    word.each_codepoint do |code|
      code -= 1
      decoding += code.chr Encoding::UTF_8
    end
    decoding
  end
end
