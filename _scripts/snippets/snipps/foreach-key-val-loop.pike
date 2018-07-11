([
"name": "Foreach key/value Loop",
"prefix": "forek",
"body": #"
foreach (${1:mapping}; ${2:string key}; ${3:mixed value}) {
  ${4}
}
"
])
