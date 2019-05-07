require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:comment) { build :comment }
  subject { comment }

  context 'attributes' do
    it { is_expected.to respond_to :body }
    it { is_expected.to respond_to :post }
  end

  context 'associations' do
    it { is_expected.to belong_to(:post) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:body) }
  end
  
end
