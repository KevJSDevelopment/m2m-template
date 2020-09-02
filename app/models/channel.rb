require_relative './video.rb'
require_relative './viewer.rb'
require 'pry'

class Channel

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def viewer_count
        self.viewers.length
    end

    def viewers
        self.videos.map do |video|
            video.viewer
        end
    end

    def videos
        Video.all.select do |video|
            video.channel == self
        end
    end

    def self.find_channel_by_name(channel_name)
        Channel.all.find do |channel|
            channel.name == channel_name
        end
    end

    def self.average_views_per_channel
        viewer_count = Video.all.map do |video|
            video.viewer
        end.count
        average = viewer_count.to_f / Channel.all.length
    end
    
end