class MorseCodeDecoder
  MORSE_CODE = {
    '.-'    => 'A',
    '-...'  => 'B',
    '-.-.'  => 'C',
    '-..'   => 'D',
    '.'     => 'E',
    '..-.'  => 'F',
    '--.'   => 'G',
    '....'  => 'H',
    '..'    => 'I',
    '.---'  => 'J',
    '-.-'   => 'K',
    '.-..'  => 'L',
    '--'    => 'M',
    '-.'    => 'N',
    '---'   => 'O',
    '.--.'  => 'P',
    '--.-'  => 'Q',
    '.-.'   => 'R',
    '...'   => 'S',
    '-'     => 'T',
    '..-'   => 'U',
    '...-'  => 'V',
    '.--'   => 'W',
    '-..-'  => 'X',
    '-.--'  => 'Y',
    '--..'  => 'Z'
  }.freeze

  def self.decode_char(morse_code)
    MORSE_CODE[morse_code].upcase
  end

  def self.decode_word(morse_word)
    morse_word.split(' ').map { |char| decode_char(char) }.join
  end

  def self.decode(message)
    message.split('   ').map { |word| decode_word(word) }.join(' ')
  end
end

# Example usage
message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
decoded_message = MorseCodeDecoder.decode(message)
puts decoded_message
