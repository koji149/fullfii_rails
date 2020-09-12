module ApplicationHelper
  def default_meta_tags
    {
      site: 'Fullfii',
      title: '知らない相手だからこそ、気楽に悩みを話せる',
      reverse: true,
      charset: 'utf-8',
      description: '～悩みを共感してほしいけど友達に話しても分かってもらえない方へ～同じ悩みを持つ方同士を結ぶ相談アプリ',
      keywords: '相談,共感,悩み',
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
