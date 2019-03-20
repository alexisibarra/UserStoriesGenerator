class MainStoriesTexFile
  @@filenames = []
  @@USER_STORIES_MAIN_FILE = './out/userStories.tex'

  def addFilename(filename)
    @@filenames << filename
  end

  def create
    File.open(@@USER_STORIES_MAIN_FILE, "w") do |f|
      f.puts("\\section{User Stories}")
      @@filenames.each do | userFile |
        f.puts("\s\\input{#{userFile}}")
      end
    end
  end
end