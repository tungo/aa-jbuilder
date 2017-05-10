json.name party.name
json.location party.location
# json.guests party.guests

json.guests do
  json.array! party.guests do |guest|
    json.partial! 'api/guests/guest', guest: guest

    json.gifts do
      json.array! guest.gifts do |gift|
        json.partial! 'api/gifts/gift', gift: gift
      end
    end

  end
end
