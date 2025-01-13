# ppp_coloring

## 概要

pppメソッドを使うと、コンソール出力に色を付けることができます。

デバッグのため、railsログをコンソール出力する際、色が付いていなくてイライラすることはありませんか？
ppp_coloringは、この問題を解決します。

## インストール方法

```
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

```
ppp "test", :info
ppp "test", :warn
ppp "test", :error
ppp "test", :success
```

