# json-to-csv-using-jq

- json to csv using jq

```sh
cat hoge.json | jq '(add | keys), ((add | keys | map({(.):null}) | add )+.[] | [.[]]) | @csv'
