# Write your code here.

def badge_maker name
    "Hello, my name is #{name}."
end


def batch_badge_creator attendees
    attendees.map { |attendee| badge_maker attendee }
end


def assign_rooms attendees
    attendees.map.with_index do |attendee, i|
        "Hello, #{attendee}! You'll be assigned to room #{i + 1}!"
    end
end


def printer attendees 
    batch_badge_creator(attendees).each do |output| 
        puts output
    end
    assign_rooms(attendees).each do |output|
        puts output
    end
end
