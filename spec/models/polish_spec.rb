require 'rails_helper'

RSpec.describe Polish, type: :model do
  it 'responds to brand' do
    polish = Polish.create
    expect(polish).to respond_to :brand
  end
  describe '#brand' do
    it 'can not be blank' do
      invalid_brand = Polish.create(brand:"")
      expect(invalid_brand).to_not be_valid
    end
  end

  it 'responds to collection' do
    polish = Polish.create
    expect(polish).to respond_to :collection
  end
  describe '#collection' do
    it 'can not be blank' do
      invalid_collection = Polish.create(collection:"")
      expect(invalid_collection).to_not be_valid
    end
  end

  it 'responds to release year' do
    polish = Polish.create
    expect(polish).to respond_to :releaseYear
  end

  it 'responds to name' do
    polish = Polish.create
    expect(polish).to respond_to :name
  end
  describe '#name' do
    it 'can not be blank' do
      invalid_name = Polish.create(name:"")
      expect(invalid_name).to_not be_valid
    end
  end

  it 'responds to code' do
    polish = Polish.create
    expect(polish).to respond_to :code
  end

  it 'responds to finish' do
    polish = Polish.create
    expect(polish).to respond_to :finish
  end
  describe '#finish' do
    it 'can not be blank' do
      invalid_finish = Polish.create(finish:"")
      expect(invalid_finish).to_not be_valid
    end
  end

  it 'responds to color' do
    polish = Polish.create
    expect(polish).to respond_to :color
  end
  describe '#color' do
    it 'can not be blank' do
      invalid_color = Polish.create(color:"")
      expect(invalid_color).to_not be_valid
    end
  end
end
