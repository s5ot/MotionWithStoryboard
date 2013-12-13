module RakutenIchiba

  class Item
    attr_reader :name, :image_url

    def initialize(name, image_url)
      @name = name
      @image_url = image_url
    end
  end

  class ItemFetcher

    def self.fetch(&block)
      items = RakutenIchiba::Items.new

      BW::HTTP.get(RakutenIchiba::FETCH_UNESCAPED_URL) do |response|
        data = []
        json = BW::JSON.parse(response.body.to_str)
        json['Items'].each do |item|
          attributes = item['Item']
          name = attributes['itemName']
          image_urls = attributes['smallImageUrls']
          image_url = (image_urls.size > 0 ? image_urls[0]['imageUrl'] : nil)
          items.add RakutenIchiba::Item.new(name, image_url)
        end

        block.call(items)
      end
    end
  end
end
