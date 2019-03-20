# -*- encoding : utf-8 -*-
require 'json'
require_relative 'TexFile'
require_relative 'MainStoriesTexFile'

JSON_FILE_NAME = './userStoriesSpec.json'

mainStoriesTexFile = MainStoriesTexFile.new

# Read and parse JSON file
jsonFile = File.read(JSON_FILE_NAME)
jsonSpecs = JSON.parse(jsonFile)

# Go through hash and generate tex files
jsonSpecs['modules'].each do | modul |
  file = TexFile.new(modul['name'])
  file.writeHistories(modul)

  mainStoriesTexFile.addFilename(file.filename)
end

mainStoriesTexFile.create()

