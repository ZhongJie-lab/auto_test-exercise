require_relative './book'

describe "Book Price" do
  it [1, 0, 0, 0, 0] do
    result = book_price([1,0,0,0,0])
    expect(result).to eq(100)
  end

  it [1,1,0,0,0] do
    result = book_price([1,1,0,0,0])
    expect(result).to eq(190)
  end

  it [1,1,1,0,0] do
    result = book_price([1,1,1,0,0])
    expect(result).to eq(270)
  end

  it [1,1,1,1,0] do
    result = book_price([1,1,1,1,0])
    expect(result).to eq(320)
  end

  it [1,1,1,1,1] do
    result = book_price([1,1,1,1,1])
    expect(result).to eq(375)
  end

  it [2,1,1,1,1] do
    result = book_price([2,1,1,1,1])
    expect(result).to eq(475)
  end

  it [3,1,1,1,1] do
    result = book_price([3,1,1,1,1])
    expect(result).to eq(575)
  end

  it [2,2,1,1,1] do
    result = book_price([2,2,1,1,1])
    expect(result).to eq(565)
  end

  it [3,2,1,1,1] do
    result = book_price([3,2,1,1,1])
    expect(result).to eq(665)
  end

  it [2,2,2,1,1] do
    result = book_price([2,2,2,1,1])
    expect(result).to eq(645)
  end

  it [2,2,2,2,1] do
    result = book_price([2,2,2,2,1])
    expect(result).to eq(695)
  end

  it [2,2,2,2,2] do
    result = book_price([2,2,2,2,2])
    expect(result).to eq(750)
  end

  it [3,2,2,2,2] do
    result = book_price([3,2,2,2,2])
    expect(result).to eq(850)
  end
end
