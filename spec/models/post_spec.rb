require 'rails_helper'

RSpec.describe Post, type: :model do
  
  let(:post) { build :post }
  subject { post }

  context 'factories' do
    it 'has a valid factory' do
      expect(post).to be_valid
    end
  end

  context 'attributes' do
    it { is_expected.to respond_to :title }
    it { is_expected.to respond_to :body }
  end

  context 'associations' do
    it { is_expected.to have_many(:comments) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:body) }
  end

  context 'post with many comments' do

    def create_comment(post)
      create :comment, post: post
    end

    it 'post have many comments' do
      3.times{ create_comment(post) } 
      expect(post.comments.count).to be 3
    end
  end

end
