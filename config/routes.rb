Rails.application.routes.draw do
get "/fortune_url" => 'pages#method_fortune'
get "/numbers_url" => 'pages#method_numbers'
get "/refresh_url" => 'pages#method_refresh'
end
