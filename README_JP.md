# ppp_coloring

![image](https://github.com/user-attachments/assets/92cd0d2a-3bd3-4ecd-89d8-01d8028105bd)

## 概要

pppメソッドを使うと、コンソール出力に色を付けることができます。

デバッグのため、railsログをコンソール出力する際、色が付いていなくてイライラすることはありませんか？
ppp_coloringは、この問題を解決します。

dockerコンテナで実行している場合や、sidekiqのログを確認する際にも便利に利用できます。

## インストール方法

```ruby
gem 'ppp_coloring', '~> 0.1.3'
```

## railsで利用する場合

pメソッドのように手軽に使いたい場合は、initializersに登録してください。

`api/config/initializers`に`ppp_initializer.rb`のようにファイルを作成し、以下のように登録します。

```ruby
def ppp(*args)
  PppColoring.ppp(*args)
end
```

pppの出力結果をデバッグ時のみ利用したい場合は、以下のように呼び出すと良いです。

```ruby
def ppp(*args)
  PppColoring.ppp(*args) if Rails.env.development?
end
```

## 使い方

第２引数は省略可能です。（省略すると :info になります）

```ruby
ppp "test", :info
ppp "test", :warn
ppp "test", :error
ppp "test", :success
```

## 内部的に何をやっているか？

内部的には`ppp`メソッドは、`puts`メソッドを使ってコンソール出力を行っています。
非常にシンプルです。
