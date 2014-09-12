class OCR
  DIC = [
    " _ | ||_|",
    "     |  |",
    " _  _||_ ",
    " _  _| _|",
    "   |_|  |",
    " _ |_  _|",
    " _ |_ |_|",
    " _   |  |",
    " _ |_||_|",
    " _ |_| _|"
  ]

  def parse_number(input)
    DIC.index(prepare(input))
  end

  def parse_number2 (input)
    linhas = input.split("\n")
    if linhas.first.include? '_'
      if linhas.last.include? '|_|'
        if linhas[1].include? '|_|'
          8
        elsif linhas[1].include? '| |'
          0
        else
          6
        end
      elsif linhas[1].include? '|_|'
          9
      elsif linhas.last.include? '|_'
        2
      else
        if linhas[1].include? '_|'
          3
        elsif linhas[1].include? '|_'
          5
        else
          7
        end
      end
    else
      if linhas[1].include? '_'
        4
      else
        1
      end
    end
  end

  def prepare(input)
    result = input.split("\n").map do |line|
      line[-3..-1]
    end.join
  end

end