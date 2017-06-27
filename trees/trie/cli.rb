require 'pry'
require_relative 'node.rb'
require_relative 'build.rb'
require_relative 'match.rb'

puts "Trie Demo"

patterns = ["ABC", "ABD", "BAC"]
trie = build_trie(patterns)

puts trieMatching("ABCDABDBAC", trie).inspect

puts
binding.pry