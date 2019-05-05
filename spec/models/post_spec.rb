require 'rails_helper'

RSpec.describe Post, type: :model do
  
  let(:post) { build :post }
  subject { post }

  context 'attributes' do
    it { is_expected.to respond_to :title }
    it { is_expected.to respond_to :body }
    it { is_expected.to respond_to :user }
  end

  context 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:comments) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:body) }
  end

end
