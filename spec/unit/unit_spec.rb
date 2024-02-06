# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', publishedDate: '2024-01-01-00-00-00 UTC', price: 10.2, author: "Darwin Mohajeri")
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
    subject do
        described_class.new( title: 'harry potter', publishedDate: '2024-01-01-00-00-00 UTC', price: 10.2, author: "Darwin Mohajeri")
    end

    it 'is valid with valid price' do
        expect(subject).to be_valid
    end

    it 'is not valid without  price' do
        subject.price = nil
        expect(subject).not_to be_valid
    end
end

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'harry potter', publishedDate: '2024-01-01-00-00-00 UTC', price: 10.2, author: "Darwin Mohajeri")
    end

    it 'is valid with valid publishedDate' do
        expect(subject).to be_valid
    end

    it 'is not valid without  publishedDate' do
        subject.title = nil
        expect(subject).not_to be_valid
    end
end

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'harry potter', publishedDate: '2024-01-01-00-00-00 UTC', price: 10.2, author: "Darwin Mohajeri")
    end

    it 'is valid with valid author' do
        expect(subject).to be_valid
    end

    it 'is not valid without a author' do
        subject.title = nil
        expect(subject).not_to be_valid
    end
end