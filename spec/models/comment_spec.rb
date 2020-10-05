require 'rails_helper'
describe Comment do
  context 'comment can save' do
    it "comment can be created" do
      comment = build(:comment)
      expect(comment).to be_valid
    end
      
    it "comment can be created with 140 characters" do
      comment = build(:comment, text: "ああ" * 70)
      expect(comment).to be_valid
    end

  end

  context 'can not save' do
    it "can not create without test" do
      comment = build(:comment, text: nil)
      expect(comment).not_to be_valid
      expect(comment.errors[:text]).to include("を入力してください")
    end

    it "failed to comment with over 140 characters" do
      comment = build(:comment, text: "あ" * 141)
      expect(comment).not_to be_valid
      expect(comment.errors[:text]).to include("は140文字以内で入力してください")
    end
  end
end
