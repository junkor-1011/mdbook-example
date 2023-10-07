# mdbook example

docker-compseによって[mdbook](https://rust-lang.github.io/mdBook/)(と[mdbook-mermaid](https://github.com/badboy/mdbook-mermaid))を実行する例

使用方法:

- [work](./work)ディレクトリ以下を編集
- 以下を実行:

```bash
# プレビュー表示(default: http://localhost:3000)と、ビルドアセット(work/book)の自動生成
docker compose up -d
```

`work/book`以下にビルドアセットが格納されており、
HTML/JS/CSSと埋め込んだ画像からなる静的サイトの形となっているため、
最終的な成果物としてはここだけを取り出せば良い
