require 'colorize'
class Ball

ANSWER = [
'answer: blue 1',
'answer: blue 2',
'answer: blue 3',
'answer: blue 4',
'answer: blue 5',

'answer: green 1',
'answer: green 2',
'answer: green 3',
'answer: green 4',
'answer: green 5',

'answer: yellow 1',
'answer: yellow 2',
'answer: yellow 3',
'answer: yellow 4',
'answer: yellow 5',

'answer: red 1',
'answer: red 2',
'answer: red 3',
'answer: red 4',
'answer: red 5'
]

def shake
  case keyboard_text = rand(20)
  when 0..4
    then puts ANSWER[rand(6)].to_s.colorize(:blue)
  when 5..9
    then puts ANSWER[rand(6..11)].to_s.colorize(:green)
  when 10..14
    then puts ANSWER[rand(11..16)].to_s.colorize(:yellow)
  when 15..20
    then puts ANSWER[rand(16..21)].to_s.colorize(:red)
  end
end

end

magic_ball = Ball.new
magic_ball.shake
