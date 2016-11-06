#spec file for stock_picker

require_relative 'stock_picker'

describe "stock_picker" do
    @prices = [17,3,6,9,15,8,6,1,10]
    it "should return two numbers" do
        expect(stock_picker(@prices)).to eq([1,4])
    end
end