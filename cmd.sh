cat hoge.json | jq '(add | keys), ((add | keys | map({(.):null}) | add )+.[] | [.[]]) | @csv'
