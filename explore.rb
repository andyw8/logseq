path = "/Users/andy/Library/Mobile Documents/iCloud~com~logseq~logseq/Documents/Default"

module Logseq
  class Client
    def initialize(path)
      @path = path
    end

    attr_reader :path

    def journals
      Dir.glob(path + "/journals/*.md").map { |filename| Journal.new(filename) }
    end

  end
  class Journal
    def initialize(filename)
      @filename = filename
    end

    attr_reader :filename
  end
end

client = Logseq::Client.new(path)
journals = client.journals
puts journals.first.filename

# use https://github.com/ioquatix/markly ?
