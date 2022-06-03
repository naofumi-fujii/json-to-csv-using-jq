# json-to-csv-using-jq

- json to csv using jq
- `cat hoge.json | jq '(add | keys), ((add | keys | map({(.):null}) | add )+.[] | [.[]]) | @csv'`

```sh
[naofumi.fujii] $ ./cmd.sh
"\"col_bl1\",\"col_bl2\",\"col_chr1\",\"col_chr2\",\"col_num\""
"false,,\"hoge\",,23"
"true,true,,\"nya-n\",24"
",false,\"hoge\",,2"
