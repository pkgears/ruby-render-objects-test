require "solution"

RSpec.describe "solution" do
  describe "#render" do
    let(:distance) { [] }
    let(:cost) { [] }
    let(:power) { 0 }

    subject { Solution.new(distance, cost, power).render } 

    context "when input is valid" do
      context "example 1" do
        let(:distance) { [5,11,1,3] }
        let(:cost) { [6,1,3,2] }
        let(:power) { 7 } 
  
        it "returns 2" do
          expect(subject).to eq(2)
        end
      end

      context "example 2" do
        let(:distance) { [10,15,1] }
        let(:cost) { [10,1,2] }
        let(:power) { 3 } 

        it "returns 1" do
          expect(subject).to eq(1)
        end
      end

      context "example 3" do
        let(:distance) { [5,5,5,5] }
        let(:cost) { [8,3,3,4] }
        let(:power) { 6 } 

        it "returns 2" do
          expect(subject).to eq(2)
        end
      end

      context "example 4" do
        let(:distance) { [11,18,1] }
        let(:cost) { [9,18,8] }
        let(:power) { 7 } 

        it "returns 0" do
          expect(subject).to eq(0)
        end
      end      
    end

    context "when input is not valid" do
      let(:distance) { [1,2] }
      let(:cost) { [1] }

      it "raises an error" do
        expect { subject }.to raise_error(ArgumentError)
      end
    end
  end
end