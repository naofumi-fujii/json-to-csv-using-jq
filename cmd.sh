cat hoge.json | jq -r '(add | keys), ((add | keys | map({(.):null}) | add )+.[] | [.[]]) | @csv'
