#!/usr/bin/env ruby

if ARGV.empty?
  warn "usage: ruby main.rb <path> [--top N]"
  exit 1
end

top = 10
path = nil
i = 0
while i < ARGV.length
  if ARGV[i] == "--top" && i + 1 < ARGV.length
    top = ARGV[i + 1].to_i
    i += 2
  elsif path.nil?
    path = ARGV[i]
    i += 1
  else
    i += 1
  end
end

text = File.read(path, encoding: "UTF-8")
lines = text.empty? ? 0 : text.count("\n") + 1
words = text.downcase.scan(/[A-Za-z0-9]+/)
counts = Hash.new(0)
words.each { |w| counts[w] += 1 }

sorted = counts.sort_by { |k, v| [-v, k] }.first(top)

puts "lines: #{lines}"
puts "words: #{words.length}"
puts "chars: #{text.length}"
puts "top words:"
sorted.each { |k, v| puts "  #{k}: #{v}" }
