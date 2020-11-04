require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    it "nicknamaが空だと登録できない" do
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
    it "emailが空だと登録できない" do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    it "passwordが空だと登録できない" do
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    it "password_confirmationが空だと登録できない" do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it "last_nameが空だと登録できない" do
      @user.last_name = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name can't be blank")
    end
    it "first_nameが空だと登録できない" do
      @user.first_name = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("First name can't be blank")
    end
    it "last_name_furiganaが空だと登録できない" do
      @user.last_name_furigana = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name furigana can't be blank")
    end
    it "first_name_furiganaが空だと登録できない" do
      @user.first_name_furigana = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("First name furigana can't be blank")
    end
    it "birthdayが空だと登録できない" do
      @user.birthday = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthday can't be blank")
    end
    it "passwordに英数字がないと登録できない" do
      @user.password = "あああああああ"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password Include both letters and numbers")
    end
    it "last_nameが英数字だと登録できない" do
      @user.last_name = "abc123"
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name Full-width characters")
    end
    it "first_nameが英数字だと登録できない" do
      @user.first_name = "abc123"
      @user.valid?
      expect(@user.errors.full_messages).to include("First name Full-width characters")
    end
    it "last_name_furiganaがカナ以外だと登録できない" do
      @user.last_name_furigana = "あ亜a"
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name furigana Full-width katakana characters")
    end
    it "first_name_furiganaがカナ以外だと登録できない" do
      @user.first_name_furigana = "あ亜a"
      @user.valid?
      expect(@user.errors.full_messages).to include("First name furigana Full-width katakana characters")
    end
  end
end