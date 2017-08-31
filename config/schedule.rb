# frozen_string_literal: true

set :output, '/log/whenever.log'

every :day, at: '06:00am', roles: [:app] do
  runner 'Currency.update_currencies'
end
