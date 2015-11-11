require 'rails_helper'

RSpec.describe State, type: :model do
  #condition
  it { is_expected.to respond_to :condition}
  describe '#condition' do
    subject(:invalid_condition) {State.create(condition:"")}
    it { is_expected.to_not be_valid}
  end
  #swatched
  it { is_expected.to respond_to :swatched}
  describe '#swatched' do
    subject(:invalid_swatched) {State.create(swatched:"")}
    it { is_expected.to_not be_valid}
  end
  #blog
  it { is_expected.to respond_to :blog}
  #fill
  it { is_expected.to respond_to :fill}
  describe '#fill' do
    subject(:invalid_fill) {State.create(fill:"")}
    it { is_expected.to_not be_valid}
  end
  #thinned
  it { is_expected.to respond_to :thinned}
  describe '#thinned' do
    subject(:invalid_thinned) {State.create(thinned:"")}
    it { is_expected.to_not be_valid}
  end
  #box
  it { is_expected.to respond_to :box}
  describe '#box' do
    subject(:invalid_box) {State.create(box:"")}
    it { is_expected.to_not be_valid}
  end
  #notes
  it { is_expected.to respond_to :notes }
  #bottle_shot
  it { is_expected.to respond_to :bottle_shot }
  #mani_shot
  it { is_expected.to respond_to :mani_shot}
  #original_owner
  it { is_expected.to respond_to :original_owner}
  describe '#original_owner' do
    subject(:invalid_original_owner) {State.create(original_owner:"")}
    it { is_expected.to_not be_valid}
  end
end
