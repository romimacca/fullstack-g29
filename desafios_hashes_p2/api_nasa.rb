require 'json'
require 'uri'
require 'net/http'

def request(url, api)
    url = URI("#{url}&api_key=#{api}")

    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)
   
    response = https.request(request)
    JSON.parse(response.read_body)
end

def build_web_page(photos)
    html = "<!DOCTYPE html>\n<html>\n<head>\n\t<title>Mars Rover Photos</title>\n</head>\n<body style='background-color:black;'>\n\t<ul>\n"
    photos.each do |photo|
        html += "\t\t<li style='width:33%; display: inline-block; vertical-align: middle;'>\n\t\t\t<img src='#{photo}' alt='' style='width:100%;padding:5px;'>\n\t\t</li>\n"
    end
    html += "\t</ul>\n</body>\n</html>\n"

    File.write('output.html', html)
end

def photos_count(photos)
    counter = {}
    photos.each do |photo|
        full_name = photo['camera']['full_name']
        if counter.keys.include?(full_name)
            counter[full_name] += 1
        else
            counter[full_name] = 1
        end
    end
   counter
end

api_key = "milLdKdi6cHXjHxO20VEH63RlxG35QpOvCcrc3Sq"
data = request('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10', api_key)

photos = data['photos']
url_photos = photos.map {|photo| photo['img_src']}


build_web_page(url_photos)
puts photos_count(photos)