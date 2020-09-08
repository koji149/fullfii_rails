class ApplicationController < ActionController::Base
  before_action :redirect_root_domain
  before_action :ensure_domain

  rescue_from ActiveRecord::RecordNotFound, with: :render_404
  rescue_from ActionController::RoutingError, with: :render_404
  rescue_from Exception, with: :render_500

  def render_404
    render template: 'errors/error_404', status: 404, layout: 'application', content_type: 'text/html'
  end

  def render_500
    render template: 'errors/error_500', status: 500, layout: 'application', content_type: 'text/html'
  end

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
