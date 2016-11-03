require "string_calculator"

describe StringCalculator do
	context "two numbers" do
      it "given 2,4" do
        expect(StringCalculator.add("2,4")).to eql(6)
      end
    end

    context "given '17,100'" do
      it "returns 17" do
        expect(StringCalculator.add("17,100")).to eql(117)
      end
    end
end