# 設定ファイル

- .textlintrc
    - prhで使用する辞書のファイルパスを指定する必要があります。
    - デフォルトは、 "./.prh/base.yml" なので、適宜変更してください。
- prh_dict
    - prhで使用する辞書を入れています。配置ルールは下記参照です。

base.ymlから各辞書をimportしています。
辞書ファイルを追加して、base.ymlにimport文を追加すれば、各人が追加した辞書も使えます。

## arrowkato directory
自作した辞書。どちらかというとMLOps周りの用語多め。


## official directory
textlintの作者による辞書。
基本的にそのまま使っているものの、自作辞書と用語が衝突した場合は、少し手を加えています。

e.g. ML

# Reference
- [dotinstallの動画講座](https://dotinstall.com/lessons/basic_textlint)
- [textlint と VS Code で始める文章校正](https://qiita.com/takasp/items/22f7f72b691fda30aea2)
- [The Usage navigate that create your Dictionary and use it.](https://proofdict.github.io/docs/usage.html)
- [textlintで日本語の文章をチェックする](https://efcl.info/2015/09/10/introduce-textlint/)
- [textlint公式のリポジトリ](https://github.com/textlint/textlint/wiki/Collection-of-textlint-rule)。各種言語のプリセットが豊富に用意されている
- [textlint-jaのリポジトリ一覧](https://github.com/textlint-ja)。日本語のプリセットが豊富に用意されている
- [text-lint-prh](https://github.com/textlint-rule/textlint-rule-prh)。辞書ツールのprfの公式doc
