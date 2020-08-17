module ApplicationHelper
  def default_meta_tags
    {
      site: 'Fullfii',
      title: 'トップページ',
      reverse: true,
      charset: 'utf-8',
      description: '悩みを今すぐ話してスッキリしたい方、聞き上手で人の話を聞くことが好きな方、相談したい人と聞き上手を結ぶ相談アプリ',
      keywords: '相談,聞き上手,アプリ',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('44_44.png') },
        { href: image_url('284_284.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('284_284.png'),
        local: 'ja-JP',
      },
      twitter: {
        card: 'summary',
        site: '@fullfiiOfficial',
        image: image_url('284_284.png'),
        width: 100,
        height: 100
      }
    }
  end
end
