json.array! @guests.select { |guest| guest.age >= 40 && guest.age <= 50 } do |guest|
  json.partial! 'guest', guest: guest
end
