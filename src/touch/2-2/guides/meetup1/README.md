# Sencha Touch 2 ソースコード読書会 第1回@東京

## 自己紹介

## Sencha を使うエンジニアが知っておくたった一つのこと @dsuket

## Sencha Touch のコードを始めから読んでみる @kawanoshinobu

### 事前準備

**対象バージョン：**

Sencha Touch 2.2（β）

Fastbook で披露したアニメーションキューが含まれている！

ダウンロードはこちらから => [http://www.sencha.com/forum/announcement.php?f=91&a=36](http://www.sencha.com/forum/announcement.php?f=91&a=36)

**Sencha Touch とは：**

- モバイル Web アプリを作るための JavaScript フレームワーク
- Produced by [Sencha.Inc](http://www.sencha.com/)

**どんなものが作れるの？：**

- HTML5 is Ready App Contest：「JDI」「Weathy」「Snapsmate」

[http://www.sencha.com/html5-is-ready](http://www.sencha.com/html5-is-ready)

- The Making of Fastbook：「Fastbook」

[http://www.sencha.com/blog/the-making-of-fastbook-an-html5-love-story/](http://www.sencha.com/blog/the-making-of-fastbook-an-html5-love-story/)

### Sencha 解剖図（Anatomy of Sencha）

[http://www.anatomyofsencha.com/](http://www.anatomyofsencha.com/)

モチベーションを高めるために作りました。

- ドキュメント生成 　「JSDuck」
- デプロイ　「Sencha.io」

ここに情報をまとめていきたい。

- ソースコード　「kawanoshnobu/anatomyofsencha - GitHub」

[https://github.com/kawanoshinobu/anatomyofsencha](https://github.com/kawanoshinobu/anatomyofsencha)

Pull Request 大歓迎！

### コードを読んでいくよ！

**合計11万行**

sencha-touch-all-debug.js # Chart 関連のコード込み

「コードリーディングについて」ありえるえりあ

"10万行 普通の人が根性で読める限界"

[http://dev.ariel-networks.com/wp/documents/arielarea-study/code-reading](http://dev.ariel-networks.com/wp/documents/arielarea-study/code-reading)

**Sencha Touch には機能がいっぱい**

- Sencha Touch API ドキュメント：

[http://docs.sencha.com/touch/2-1/](http://docs.sencha.com/touch/2-1/)

クラスシステム、イベントモデル、コンポーネントモデル、データパッケージ、MVC、、。

フレームワークの全体像の把握には、ぜひ [Sencha Touch パーフェクトガイド](http://www.amazon.co.jp/dp/4048869566/) を！

今日は、**これらの仕組みを構築する基盤となるコード**群を読みます。

**core**

- core/Ext.js
- core/version/Version.js
- core/lang/String.js
- core/lang/Array.js
- core/lang/Number.js
- core/lang/Object.js
- core/lang/Function.js
- core/lang/JSON.js
- core/lang/Error.js
- core/lang/Date.js

合計3778行 ( ꒪⌓꒪)

## 今後の読書会の進め方

**アイデア**

- ナビゲーターがテーマに沿ったコードを解説する
- おれの気になるコードを解説するぞ
- LT


