json.array! @guests do |guest|
    json.partial! 'api/guests/guest', guest: guest
    # render partial for each |guest|

    # json.name guest.name
    # json.age guest.age
    # json.favorite_color guest.favorite_color
    # similar to extract technique
end