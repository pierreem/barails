xml.instruct! :xml, :encoding=>"UTF-8"
xml.command do
  xml.id(@beer.id)
  xml.name(@beer.name)
  xml.description(@beer.description)
  xml.notes do
    @beer.notes.each do |note|
      xml.note do
        xml.value(note.value)
        xml.beer_geek_id(note.beer_geek.id)
        xml.beer_geek_name(note.beer_geek.to_s)
      end
    end
  end
end
