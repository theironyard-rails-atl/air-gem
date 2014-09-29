module Air
  class Topic
    def self.all
      data = Air::Api.list
      data.map do |result|
        Topic.new result
      end
    end

    def self.find id
      data = Air::Api.fetch id
      Topic.new data
    end

    attr_reader :id, :title

    def initialize data
      #@data = data is also a possibility ...
      @id          = data['id']
      @title       = data['title']
      @description = data['description']
      @score       = data['score']
    end

    # Customize `pry` display
    def inspect
      "Air::Topic(#{id} - #{title})"
    end

    def description
      fetch_data! unless @description
      @description
    end

    def score
      fetch_data! unless @score
      @score
    end

    def fetch_data!
      full_data = Air::Api.fetch @id
      @description = full_data['description']
      @score       = full_data['score']
    end

    # Clever ...
    # %w( id title description ).each do |name|
    #   define_method name do
    #     ...
    #   end
    # end
  end
end
