__HEADER([Josef Kubin], [2019/12/31], [root_cz])
___DESCR([sets heading item in desired language])
___POINT([mono/multi-lingual headings])

# if more args are provided, the first argument is #ID
# β
pushdef([SET_ID], [

	ifelse([$#], [1], [
		undefine([#ID])
	], [
		define([#ID], [$1])
	])
])

# β
define([MONOLINGUAL_HEADINGS], defn([SET_ID])[

	define([SELITM], SELECT_ARG1(]defn([EXPAND_LAST])[))
])

# captions, chapters, annexes do not need to strip trailing LF
# β
define([MULTILINGUAL_HEADINGS], defn([SET_ID])[

	define([SELITM], SELECT_LANG(]defn([EXPAND_LAST])[))
])

# forget local β rules (good for frozen files)
popdef(

	[SET_ID],

)
