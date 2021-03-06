__HEADER([Josef Kubin], [2019/12/07], [root_cz])
___DESCR([auxiliary macros that could not fit elsewhere: CMD(); ROO();])
___POINT([automate anything you can])

# the appearance of the command line (choose what you like)
#
# nice looking user command line: CMD() or CMD(path)
# A → β
define([CMD], [ifelse([$#], [0], [[$0]], [$1], [], [~RB()$], [[$1]RB()$])])
# or briefly
#define([CMD], [ifelse([$#], [0], [[$0]], [$])])

# nice looking root command line: ROO() or ROO(path)
# A → β
define([ROO], [ifelse([$#], [0], [[$0]], [$1], [], [~RB()[#]], [[$1]RB()[#]])])
# or briefly
#define([ROO], [ifelse([$#], [0], [[$0]], [[#]])])
