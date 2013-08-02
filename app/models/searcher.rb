class Searcher

  def self.create_url(search_hash)
    "http://en.wikiquote.org/w/api.php?action=query&titles=#{search_hash[:titles]}&prop=#{search_hash[:property]}&imlimit=#{search_hash[:limit]}&format=json"


  end

end
