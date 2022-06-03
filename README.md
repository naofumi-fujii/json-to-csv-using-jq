# json-to-csv-using-jq

- json to csv using jq

```
cat hoge.json | jq -r '(add | keys), ((add | keys | map({(.):null}) | add )+.[] | [.[]]) | @csv'
