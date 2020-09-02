require_relative './video.rb'
require_relative './channel.rb'

class Viewer

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def videos
        Video.all.select do |video|
            video.viewer == self
        end
    end

    def channels
        self.videos.map do |video|
            video.channel
        end
    end

    def video_count
        self.videos.count
    end

    def self.find_viewer_by_name(name)
        Viewer.all.select do |viewer|
            viewer.name == name
        end
    end

end