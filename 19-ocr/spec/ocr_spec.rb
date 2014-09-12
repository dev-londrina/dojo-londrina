require "ocr"

RSpec.describe OCR do

  before do
    @ocr = OCR.new
  end

  it "reconhece o numero 1" do
    result = @ocr.parse_number <<-END
      
     |
     |
    END

    expect(result).to eql 1
  end

  it "reconhece o numero 2" do
    result = @ocr.parse_number <<-END
     _ 
     _|
    |_ 
    END

    expect(result).to eql 2
  end

  it "reconhece o numero 3" do
    result = @ocr.parse_number <<-END
    _ 
    _|
    _|
    END

    expect(result).to eql 3
  end

  it "reconhece o numero 4" do
    result = @ocr.parse_number <<-END
    
    |_|
      |
    END

    expect(result).to eql 4
  end

  it "reconhece o numero 5" do
    result = @ocr.parse_number <<-END
     _ 
    |_ 
     _|
    END

    expect(result).to eql 5
  end

  it "reconhece o numero 6" do
    result = @ocr.parse_number <<-END
     _ 
    |_ 
    |_|
    END

    expect(result).to eql 6
  end

  it "reconhece o numero 7" do
    result = @ocr.parse_number <<-END
    _ 
     |
     |
    END

    expect(result).to eql 7
  end

  it "reconhece o numero 8" do
    result = @ocr.parse_number <<-END
     _ 
    |_|
    |_|
    END

    expect(result).to eql 8
  end

  it "reconhece o numero 9" do
    result = @ocr.parse_number <<-END
     _ 
    |_|
     _|
    END

    expect(result).to eql 9
  end

  it "reconhece o numero 0" do
    result = @ocr.parse_number <<-END
     _ 
    | |
    |_|
    END

    expect(result).to eql 0
  end
end