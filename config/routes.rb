Rails.application.routes.draw do
  root "pages#index"
  get  "pages/privacy" => "pages#privacy"
  get '/sitemap', to: redirect("https://#{ENV['S3_BUCKET_NAME']}.s3-ap-northeast-1.amazonaws.com/sitemap.xml.gz")

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '*path', controller: 'application', action: 'render_404'

end
