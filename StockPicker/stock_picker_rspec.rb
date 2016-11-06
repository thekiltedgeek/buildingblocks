#spec file for stock_picker

require_relative 'stock_picker'

describe "stock_picker" do
    it "[17,3,6,9,15,8,6,1,10] should return [1,4]" do
        expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
    end
    it "[1,2,3,4,5] should return [1,5]" do
        expect(stock_picker([1,2,3,4,5])).to eq([0,4])
    end
    it "[5,1,2,3,4] should return [2,5]" do
        expect(stock_picker([5,1,2,3,4])).to eq([1,4])
    end
    it "[5,4,3,2,1] should return empty array" do
        expect(stock_picker([5,4,3,2,1])).to eq([])
    end
end