describe 'RakutenIchiba::Item' do
  before do
    @name = "【中古】afb【ニンテンドー3DS】ドラゴンクエスト7　エデンの戦士たち【4988601007795】【RPG】"
    @image_url = "http://thumbnail.image.rakuten.co.jp/@0_mall/wondergoo/cabinet/03459389/4988601007795.jpg?_ex=64x64"
    @item = RakutenIchiba::Item.new(@name, @image_url)
  end

  it 'should be created' do
    @item.name.should.equal @name
    @item.image_url.should.equal @image_url
  end
end
