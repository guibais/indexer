require 'Extractor'


class Api::V1::ContentResource < JSONAPI::Resource
    include Extractor
    attributes :url, :h1, :h2, :h3, :links

    before_save do
        doc = getDoc(@model.url)
        @model.h1 = getTag(doc,"h1")
        @model.h2 = getTag(doc,"h2")
        @model.h3 = getTag(doc,"h3")
        @model.links = getTag(doc, "href")
    end

    def self.updatable_fields(context)
        super - [:h1,:h2,:h3,:links]
    end

    def self.creatable_fields(context)
        super - [:h1,:h2,:h3,:links]
    end
end