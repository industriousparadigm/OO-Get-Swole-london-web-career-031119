# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
virgin = Gym.new("Virgin Active")
rize = Gym.new("Rize Balham")
hp = Gym.new("Holmes Place")

arnold = Lifter.new("Arnold", 240)
brad = Lifter.new("Bradley Cooper", 160)
djq = Lifter.new("DJ Qualls", 45)
manon = Lifter.new("Manon Jack", 175)
alicia = Lifter.new("Alicia Vikander", 200)
diogo = Lifter.new("Diogo", 100)

arnold.sign_up(virgin, 120)
arnold.sign_up(rize, 80)
arnold.sign_up(hp, 150)
brad.sign_up(rize, 100)
manon.sign_up(virgin, 90)
alicia.sign_up(rize, 100)
diogo.sign_up(hp, 85)
diogo.sign_up(virgin, 75)


binding.pry

puts "Gains!"
