module Air
  class Topic
    def self.all
    end

    def self.find id
      data = Air::Api.fetch id
      # { id: 2, title: 'title' }
      Topic.new data
    end

    def initialize data
      @id = data['id']
      #@data = data
    end

    def id
      @id
    end

    def title
    end

    def description
    end
  end
end
