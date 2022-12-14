User.create!([
  [nickname:  "管理者",email: "admin@example.com", password:  "123456", admin: true],
  [nickname: "robot", email: "robot@example.com", password: "342525", profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/app/assets/images/human1.png"), filename:"human1.png")]
  ])

Category.create!([
  [name: "飲料"], [name: "サンタクロース"], [name: "お正月"], [name: "信号"], [name: "集中力"], [name: "プログラミング"], [name: "哲学"], [name: "食べ物"]
  ])
Knowledge.create!([
  [user_id: 2, category_id: 1, title: "牛乳でお腹をこわす。いったいなぜ？", content: "皆さんは、牛乳を飲んだりヨーグルトを食べたりしてお腹がゴロゴロしたり、下痢になったりした経験はありませんか？主な原因の一つに日本人に多い「乳糖不耐症」の影響が挙げられます。牛乳や乳製品に含まれる乳糖(ラクトース)を分解するラクターゼという酵素が欠乏したり、働きが弱まることで、乳糖の消化吸収がうまくできなくなり、下痢や腹痛などの症状がおこります。※ただし、ヨーグルトやチーズに含まれる乳製品に含まれる乳糖は、製造段階である程度分解されるため、牛乳に比べて症状は出にくいと言われています。",
  classification: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/app/assets/images/milk.jpg"), filename:"milk.jpg")],
  [user_id: 2, category_id: 2, title: "サンタクロースが赤い衣装を着ているのはなぜ？", content: "実はサンタクロースの衣装は1931年のクリスマスキャンペーンのイラストが元になっている。サンタクロースのモデルは4世紀頃にトルコで暮らしていた守護聖人、聖ニコラウスで、ある伝説がきっかけでサンタクロースと言われるようになった。貧困で三人の娘を身売りしなければならない家族の存在を知り、その家族の家の窓から金貨を投げ入れ、それが暖炉に吊るしてあった靴下の中に入った。これが「良い子にしていると夜中にサンタクロースが靴下の中にプレゼントを入れてくれる」というお話になったのである。1931年、コカ・コーラ社はクリスマスキャンペーン用に「赤い衣装に白い髭、おなかが出ているおじさん」のサンタクロース(ハッドン・サンドロム作)が描かれた広告を作った。それ以降、コカ・コーラが世界に進出するに伴って、赤い衣装を着たあのサンタクロースの姿が全世界に定着したのである。",
  classification: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/app/assets/images/santa_claus.png"), filename:"santa_claus.png")],
  [user_id: 2, category_id: 3, title: "お正月はお雑煮！！", content: "お正月に出てくるお雑煮、実は全国各地で味が全然違います。ここでは関東と関西のお雑煮についてまとめました。\n関東→焼いた角餅、具材は小松菜・人参・大根・かまぼこなど、しょうゆ味の澄まし汁であっさりめ(「勝負に味噌をつける(「勝負に負けて評判を落とす」の意)という言葉から味噌仕立てにするのを嫌ったため、かつお出汁であっさりしたしょうゆ味が好まれた」\n関西→焼かずに茹でた丸餅、具材は里芋・大根・人参など白味噌を使った味噌仕立て(丸餅には「その年を丸くおさめる」という意味が込められている、関東では味噌は縁起が悪いと言われて使われていませんでしたが、関西ではあまり武士社会が無かった為味噌が使われている)",
  classification: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/app/assets/images/New_Year_dish.png"), filename:"New_Year_dish.png")],
  [user_id: 2, category_id: 4, title: "信号の色が赤/黄/青に決まったワケ", content: "これは、波長の長さと心理的意味が決め手になりました。\n赤色の理由：人間の目は波長が長い色ほど見やすく、また波長の長い色ほど遠くへと届きやすいという理由から赤色が採用されました。また、赤色には人間を緊張させる効果があることも、「止まれ」の色として採用された理由の一つです。\n黄色の理由→雨や霧の中など視界が悪い状態でも見えやすい色であることから信号の色として採用されました。(日本工業規格(JIS)においても黄色は危険を表す色)\n青色の理由→青色は赤色の次に波長が長く、人間の目で遠くからでも判断できる色として採用されました。また、青色は人間の気持ちを落ち着かせ安定させる効果もあることから、ドライバーが安全に運転できるように考えられているそうです。",
  classification: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/app/assets/images/traffic_lights.png"), filename:"traffic_lights.png")],
  [user_id: 2, category_id: 5, title: "人間の集中力はどれくらいの時間続くのか？", content: "大人の集中力は約50分と言われていますが、実際継続して集中できる時間は15分程度です。15分集中すると、その後は1度落ち込み、また15分程度集中するという周期を繰り返します。ここでは、集中力を高める7つのアイデアを紹介します。\n①事前に集中する時間・場所を決めておく：\n事前に作業スペースを予約し、集中して業務をすることを宣言してから作業を開始すると、他の利用者と比べて集中力が顕著に高いことが分かっています。\n②リラックスできる環境を作る：\n植物を置き、他と異なる空間を作ることで、適度な緊張感が生まれやすくなるほか、他人の視線が遮られることでリラックスできる環境が作れる。\n③自然に近い環境で作業する：\n自然光に近いバランスと光を調整したり、自然の音により、まるで自然の中にいるような感覚が脳や自律神経へ作用することで、高いリラックス効果や集中効果が期待できる。\n④集中タイムを設ける\n⑤アロマを活用する\n⑥甘いものを食べる\n⑦適度に休む",
  classification: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/app/assets/images/concentration.png"), filename:"concentration.png")],
  [user_id: 2, category_id: 6, title: "プログラミング学習おすすめ参考書(独学)<Python, JavaScript, Java, C#, C++, C, HTML&CSS, PHP, Ruby, Excel VBA>",content: "プログラミングを学習したいけどどの参考書を買えばいいのかわからない際、便利な参考書を僕が今まで学習した言語(10言語)ごとにまとめました。\n・Python：「ゼロからやさしくはじめるPython入門」クジラ飛行机著、「はじめの一歩を踏み出そうPythonでつくるゲーム開発入門講座」廣瀬豪著\n・JavaScript：「本当によくわかるJavaScriptの教科書」ENTACL GRAPHICXXX著\n・Java：「いちばんやさしいJava入門教室」廣瀬豪著\n・C#：「やさしいC#」高橋麻奈著\n・C++：「やさしいC++」高橋麻奈著\n・C：「やさしいC」高橋麻奈著\n・HTML・CSS：「1冊ですべて身につくHTML&CSSとWebデザイン入門講座」Mana著\n・PHP：「いきなりはじめるPHP ワクワク・ドキドキの入門教室」谷藤賢一著、「気づけばプロ並みPHP改訂版 ゼロから作れる人になる！」谷藤賢一著\n・Ruby：「たのしいRuby第6版」高橋征義＋後藤裕蔵著\n・Excel VBA：「Excel VBAの教科書」古川順平著",
  classification: 1, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/app/assets/images/reference_books.png"), filename:"reference_books.png")],
  [user_id: 2, category_id: 7, title: "考えることこそが自分の人生を変えることにつながる", content: "私たちは日常生活を送る上で目立った不満や不便を感じることが少なくなってきており、企業が価値を創出していくためには、「新たな課題を発見する力」、「発見した課題を解決するためのアイデアやプロセスを考案する力」が必要となってきました。また、10～20年後には日本の労働人口の半数が就いている職業がAIやロボットに代替されると推測されており、AIとの共存社会がやってくる中で、私たち人間にしかできない考える力にフォーカスし高めていく必要があります。しかし、現代は携帯・ロボットの普及やマニュアル化された仕事などにより、考える力が昔と比べて弱まっています。そこで、日常的に意識して取り入れることで考える力を高める方法を以下で紹介します。\n①常に疑問を持つ(なぜなぜ分析)\n受け取った情報に対し、「なぜだろう」と疑問を持ち、自分の知識や調べても見当がつかない場合は、他人に聞いたりすることで、自分の知識を増やすだけでなく、考える力を鍛えることができます。\n②具体と抽象を行き来する\n③思考の癖に気づき、改善する\n思い込みや思考の癖は、ある種の思考停止に近い状態を引き起こし、思考の幅を狭くします。クリティカルシンキング(批判的思考)を鍛えることで、主観や先入観に捕らわれずに物事を見る力が養われる",
  classification: 1],
  [user_id: 2, category_id: 8, title: "福岡で味わえる珍しい食べ物8選", content: "おきゅうと：海藻エゴノリを干した後に煮溶かして型に固めたものです。酢や醤油で味付けをし、かつお節やネギなどの薬味を付けてツルツルっと食べられます。\nぬか炊き：青魚であるイワシやサバを、醤油やみりん、砂糖などを加えた煮汁で煮ます。その後、ぬか床を入れて炊いていき「ぬか炊き」の完成です。\nかしわめし：鶏肉のことを九州地方では、「かしわ」と呼びます。「かしわめし」は、炊いたご飯に「かしわ」や野菜などを加え、醤油・砂糖・酒などで煮詰めた料理です。\nぐる皮巻き：串にとり皮を独特な巻き方で巻き甘辛い秘伝のタレをたっぷりと付けて焼く福岡居酒屋の代表的メニューです。\n酢もつ：新鮮なもつを丁寧に湯通しして、ポン酢や薬味のネギと一緒に食べます。\nごまさば：新鮮なさばの刺し身を炒りごまや醤油、みりんで和えたものです。\n焼きラーメン：茹でたラーメンに豚骨スープと特製ソースを絡め、鉄板で豪快に焼きます。\nごぼ天うどん：コシのない柔らかな麺、上品な薄口しょうゆで仕上げたダシの博多うどん+ごぼう天",
  classification: 0, image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/app/assets/images/ramen.png"), filename:"ramen.png")]
  ])

  Comment.create!([
    [user_id: 2, knowledge_id: 1, content: "毎朝牛乳を飲んでいますが、よくおなか壊すのはそういうことっだのか！", rate: 5.0],
    [user_id: 2, knowledge_id: 1, content: "牛乳あんまり飲まないからあまり実感が湧かない", rate: 2.5],
    [user_id: 2, knowledge_id: 4, content: "普段何気に見ている者にもしっかりと意味があると知れました。\nありがとうございました。", rate: 4.0]
])
