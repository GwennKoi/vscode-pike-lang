([
"name": "Make TRACE macro",
"prefix": "MKT",
"body": #"
#ifdef ${1:NAME}_DEBUG
# define TRACE(X...)werror(\"%s:%d: %s\",basename(__FILE__),__LINE__,sprintf(X))
#else
# define TRACE(X...)0
#endif
"
])
