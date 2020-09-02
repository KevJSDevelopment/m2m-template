require_relative '../config/environment.rb'

# create test data/variables here

channel1 = Channel.new("channel_1")
channel2 = Channel.new("channel_2")

viewer1 = Viewer.new("viewer_1")
viewer2 = Viewer.new("viewer_2")
viewer3 = Viewer.new("viewer_3")
viewer4 = Viewer.new("viewer_4")

video1 = Video.new(channel1, viewer2)
video2 = Video.new(channel2, viewer1)
video3 = Video.new(channel1, viewer1)
# video4 = Video.new(channel1, viewer4)
# video5 = Video.new(channel1, viewer3)

p video1
p video3

puts "channel.videos works?"
puts channel1.videos.include?(video3)

puts "channel.viewers works?"
puts channel2.viewers.include?(viewer1)

puts "channel.viewer_count"
puts channel1.viewer_count

puts "Does channel2 exist"
p Channel.find_channel_by_name("channel_2")
p channel2

puts "Average view per channel"
p Channel.average_views_per_channel

puts "Does viewer1.videos work?"
puts viewer1.videos.include?(video3)

puts "channel video 1 is watching"
p viewer1.channels.include?(channel1)

puts "viewer1.video_count works?"
p viewer1.video_count == 2

puts "can find viewer by name"
p Viewer.find_viewer_by_name("viewer_2") == [viewer2]
