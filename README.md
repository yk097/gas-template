# GAS用テンプレート

## セットアップ
### clasp
```bash
clasp login
npm install -g @google/clasp
```

### リポジトリの作成
本リポジトリをテンプレートとして使用
```
gh repo create <REPOSITORY> --template yk097/gas-template --private
gh repo clone <REPOSITORY>
```

### プロジェクトのセットアップ
```
cd REPOSITORY
sh setup.sh <PROJECT>
```

## ビルド
```
npm run build
```

## プッシュ
```
clasp push
```

