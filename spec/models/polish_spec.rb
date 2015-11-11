require 'rails_helper'

RSpec.describe Polish, type: :model do
  #brand
  it { is_expected.to respond_to :brand}
  describe '#brand' do
    subject(:invalid_brand) {Polish.create(brand:"")}
    it { is_expected.to_not be_valid}
  end
  #collection
  it { is_expected.to respond_to :collection}
  describe '#collection' do
    subject(:invalid_collection) {Polish.create(collection:"")}
    it { is_expected.to_not be_valid}
  end
  #release year
  it { is_expected.to respond_to :releaseYear}
  #name
  it { is_expected.to respond_to :name}
  describe '#name' do
    subject(:invalid_name) {Polish.create(name:"")}
    it { is_expected.to_not be_valid}
  end
  #id code
  it { is_expected.to respond_to :code}
  #finish
  it { is_expected.to respond_to :finish}
  describe '#finish' do
    subject(:invalid_finish) {Polish.create(finish:"")}
    it { is_expected.to_not be_valid}
  end
  #color
  it { is_expected.to respond_to :color}
  describe '#color' do
    subject(:invalid_color) {Polish.create(color:"")}
    it { is_expected.to_not be_valid}
  end
end
