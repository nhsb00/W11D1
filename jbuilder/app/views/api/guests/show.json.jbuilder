json.extract! @guest, :name, :age, :favorite_color

json.gifts do
    # gifts will be nested key
    json.array! @guest.gifts do |gift|
        # for each gift, call our partial which renders title and description
        # all three methods below are valid
        
        json.partial! 'api/gifts/gift', gift: gift
        
        # json.extract! gift, :title, :description
        
        # json.title gift.title
        # json.description gift.description
    end
end
# extract name, age, favorite color for specified @guest