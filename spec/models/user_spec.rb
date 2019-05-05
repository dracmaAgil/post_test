require 'rails_helper'

RSpec.describe User, type: :model do
  
  let(:user) { build :user }
  subject { user }

  context 'attributes' do
    it { is_expected.to respond_to :name }
    it { is_expected.to respond_to :last_name }
    it { is_expected.to respond_to :user_name }
    it { is_expected.to respond_to :email }
  end

  context 'associations' do
    it { is_expected.to have_many(:posts) }
    it { is_expected.to have_many(:comments) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:user_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity }
  end

  context 'user with invalid and valid email ' do
    
    it 'email with invalid format is invalid' do
      user1 = User.new(name: 'alejandro', last_name: 'villa', user_name: 'a.villa', email: 'alex')
      user1.valid?
      expect(user1.errors[:email]).to include('write a valid email format')
    end

    it 'email with valid format' do
      user.valid?
      expect(user).to be_valid
    end

  end

  context 'user with many posts' do

    def create_post(user)
      create :post, user: user
    end

    it 'user have many posts' do
      3.times{ create_post(user) } 
      expect(user.posts.count).to be 3
    end
  end

  context 'user with many comments' do

    def create_comment(user, post)
      create :comment, user: user, post: post
    end

    it 'user have many comments' do
      post = create :post, user: user
      3.times{ create_comment(user, post) } 
      expect(user.comments.count).to be 3
    end
  end

end
