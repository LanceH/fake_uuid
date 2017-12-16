require "fake_uuid/version"

class FakeUuid
  def self.create
    w4 ||= self.load(4)
    w8 ||= self.load(8)
    w12 ||= self.load(12)
    "#{w8.sample}-#{w4.sample}-#{w4.sample}-#{w4.sample}-#{w12.sample}"
  end

  def self.load(num)
    words = []
    file = File.join( File.dirname(__FILE__), "../data/w#{num}.txt")
    File.readlines(file).each do |word|
      words << word.chomp
    end
    words
  end
end
