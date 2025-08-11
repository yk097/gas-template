# GAS用テンプレート

## セットアップ
### clasp
```bash
npm i -g clasnpm install -g @google/clasp
clasp login
```

### リポジトリ
```
gh repo create <リポジトリ名> --template yk097/gas-template --private
```

### プロジェクト
```
sh setup.sh <プロジェクト名>
```

## ビルド
```
npm run build
```

## プッシュ
```
clasp push
```

