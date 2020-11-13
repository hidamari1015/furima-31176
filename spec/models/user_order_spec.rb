require 'rails_helper'

RSpec.describe UserOrder, type: :model do
  describe '商品購入' do
    before do
      @order = FactoryBot.build(:user_order)
    end


      it '全ての値が正しく入力されていれば保存ができること' do
        expect(@order).to be_valid
      end

      it 'building_nameが空でも登録できる' do
        @order.building_name = nil 
        expect(@order).to be_valid
      end

      it 'tokenが空だと登録できない' do
        @order.token = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("Token can't be blank")
      end
      it 'postal_codeが空だと登録できない' do
        @order.postal_code = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("Postal code can't be blank")
      end
      it 'postal_codeが文字だと登録できない' do
        @order.postal_code = 'hoge'
        @order.valid?
        expect(@order.errors.full_messages).to include("Postal code is invalid")
      end
      it 'prefecture_idが空だと登録できない' do
        @order.prefecture_id = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("Prefecture can't be blank")
      end
      it 'cityが空だと登録できない' do
        @order.city = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("City can't be blank")
      end
      it 'house_numberが空だと登録できない' do
        @order.house_number = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("House number can't be blank")
      end
      it 'phone_numberが空だと登録できない' do
        @order.phone_number = nil
        @order.valid?
        expect(@order.errors.full_messages).to include("Phone number can't be blank")
      end
      it 'phone_numberにハイフンがあると登録できない' do
        @order.phone_number = '090-1234-5678'
        @order.valid?
        expect(@order.errors.full_messages).to include("Phone number is invalid")
      end
      it 'phone_numberが12桁以上あると登録できない' do
        @order.phone_number = '090123456789'
        @order.valid?
        expect(@order.errors.full_messages).to include("Phone number is invalid")
      end
  end
end