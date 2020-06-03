require 'json'
require 'uri'
require 'net/http'

def request(url, api)
    url = URI("#{url}&api_key=#{api}")

    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true
    # https.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    # request["cache-control"] = 'no-cache'
   
    response = https.request(request)
    JSON.parse(response.read_body)
end


api_key = "milLdKdi6cHXjHxO20VEH63RlxG35QpOvCcrc3Sq"
data = request('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?earth_date=2015-6-3', api_key)

data.each do |k, v|
    v.each do |k, v|
        puts k
        puts "\n \n \n"
    end
end

# imagen = data.map{|x| x['img_src']}
# puts data

# def build_web_page()

# end

# photos = data.map{|x| x['img_src']} #para buscar imagen