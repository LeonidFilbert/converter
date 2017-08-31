# frozen_string_literal: true

Currency.update_currencies

return unless Currency.last.nil?

[
  { cc: 'dollar', rate: 2.4 },
  { cc: 'test',   rate: 3.3 },
  { cc: 'test2',  rate: 3.2 },
  { cc: 'test23', rate: 3.5 },
  { cc: 'test4',  rate: 3.6 },
  { cc: 'test5',  rate: 5 },
  { cc: 'final',  rate: 111 }
].each do |currency|
  Currency.create(
    name: currency[:cc],
    rate: currency[:rate]
  )
end
