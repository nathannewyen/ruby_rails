RSpec.describe "Buy a soda" do
    context "has money" do
        it "buy the soda" do
            buyer = Buyer.new
            buyer.money = 10
            expect(buyer.buy_soda).to eq(true)
        end
    end

    context "has no money" do
        it "can't buy a soda" do
            buyer = Buyer.new
            buyer.money = 0
            expect(buyer.buy_soda).to eq(false)
        end
    end
end