set :output, '/log/whenever.log'

every :day, at: '04:00am', roles: [:app] do
  runner 'Currency.update_currencies'
end
