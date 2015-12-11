require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_many :polishes }
  it { is_expected.to have_many :states }
  #username
  it { is_expected.to respond_to :username}
  describe '#username' do
    subject(:invalid_username) {User.create(username:"")}
    it { is_expected.to_not be_valid}
  end
  describe '#username' do
    subject(:invalid_username_too_short) {User.create(username:"jj", password: "password")}
    it { is_expected.to_not be_valid}
  end
  #email
  it { is_expected.to respond_to :email}
  describe '#email' do
    subject(:invalid_email) {User.create(email:"")}
    it { is_expected.to_not be_valid}
  end
  #password
  it { is_expected.to respond_to :password}
  describe '#password' do
    subject(:invalid_password) {User.create(password:"")}
    it { is_expected.to_not be_valid}
  end
  #password_digest
  it { is_expected.to respond_to :password_digest}
  describe '#password_digest' do
    subject(:invalid_password_digest) {User.create(password_digest:"")}
    it { is_expected.to_not be_valid}
  end
  #avatar_url
  it { is_expected.to respond_to :avatar_url}
  #admin
  it { is_expected.to respond_to :admin}
end
