require_relative './channel.rb'
require_relative './viewer.rb'

class Video

    attr_reader :channel, :viewer

    @@all = []

    def initialize(channel, viewer)
        @channel = channel
        @viewer = viewer
        @@all << self
    end

    def self.all
        @@all
    end

end