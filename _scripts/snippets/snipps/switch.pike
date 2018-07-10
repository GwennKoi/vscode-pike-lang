([
"name": "Switch",
"prefix": "sw",
"body": #"
switch (${1})
{
  case ${2}:
    ${3}
    break;

  default:
    ${4}
    break;
}
"
])
