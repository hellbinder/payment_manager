FactoryGirl.define do

  factory :payment_source_type do
    name 'Loan'
    description 'Testing'
  end

  factory :payment_source do
    name 'Best Buy'
    description 'Where we buy all our electronics'
    before(:create) do |ps|
      pst = create(:payment_source_type)
      ps.payment_source_type_id = pst.id
    end
  end

  factory :transaction do
    memo Faker::Lorem.sentence

    factory :empty_transaction do
      amount BigDecimal.new(0,16)
    end

    factory :filled_transaction do
      memo 'Some transaction example'
      amount BigDecimal.new(150.43,16)
    end
    before(:build) do |trans|
      ps = create(:payment_source)
      trans.payment_source_id = ps.id
    end
  end

end