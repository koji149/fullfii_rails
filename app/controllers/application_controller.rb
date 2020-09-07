class ApplicationController < ActionController::Base
  before_action :redirect_root_domain
  before_action :ensure_domain

  private

  def redirect_root_domain
    return unless request.host === 'fullfii.com'
    redirect_to("#{request.protocol}www.fullfii.com#{request.fullpath}", status: 301)
  end

  FQDN = 'www.fullfii.com'

  # redirect correct server from herokuapp domain for SEO
  def ensure_domain
  return unless /\.herokuapp.com/ =~ request.host

  # 主にlocalテスト用の対策80と443以外でアクセスされた場合ポート番号をURLに含める 
  port = ":#{request.port}" unless [80, 443].include?(request.port)
  redirect_to "#{request.protocol}#{FQDN}#{port}#{request.path}", status: :moved_permanently
  end


end
