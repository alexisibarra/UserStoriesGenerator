class TexFile
  attr_accessor :filename

  def initialize (username)
    @filename = "./out/userStories_" + camelcase(username) + ".tex"
    File.delete(@filename) if File.exist?(@filename)

    printLine("\\subsection{#{username}}\n")
  end

  def camelcase(str)
    words = str.downcase.split
    words.shift + words.map(&:capitalize).join
  end

  def writeHistories(modul)
    modul['histories'].each do |history|
      writeHistory(history)
    end
  end

  def writeHistory(historia)
    user = historia['user'].to_s.capitalize
    want = historia['want'].to_s
    so   = historia['so'].to_s
    criterias = historia['Acceptance criteria']

    printLine("\\begin{itemize}")
    printLine("\s\\item As #{user}, I want \\textbf{#{want}} so {#{so}}")
    if !criterias.empty?
      printLine("\s\\newline\\textbf{Acceptance criteria:}")
      printLine("\s\\begin{itemize}")
      criterias.each do |criteria|
        printLine("\s\s\\item{#{criteria}}")
      end
      printLine("\s\\end{itemize}")
    end
    printLine("\\end{itemize}")
  end

  def printLine(content)
    File.open(@filename, "a") do |f|
      f.puts(content)
    end
  end
end