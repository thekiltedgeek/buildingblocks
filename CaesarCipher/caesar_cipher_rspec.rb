#rspec file for caesar_cipher
#xiwx ixvmrk
require "./caesar_cipher"

describe "CaesarCipher"do
    
    before do
        @instance = CaesarCipher.new("Test string", 5)
    end
    
    it "should initialize an object of class CaesarCipher" do
        expect(@instance).to be_an_instance_of CaesarCipher
    end
    it "should take a string and an integer offset as parameters" do
        expect(@instance.text).to eq("Test string")
        expect(@instance.offset).to eq(5)
    end
    it "should return a modifed string shifted by the offset, retaining case" do
        expect(@instance.result).to eq("Yjxy xywnsl")
    end
end