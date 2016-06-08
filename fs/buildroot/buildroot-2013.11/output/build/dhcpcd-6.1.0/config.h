/* linux */
#define SYSCONFDIR	"/etc"
#define SBINDIR		"/sbin"
#define LIBDIR		"/lib"
#define LIBEXECDIR	"/libexec"
#define DBDIR		"/var/db"
#define RUNDIR		"/var/run"
#include "compat/arc4random.h"
#include "compat/closefrom.h"
#include "compat/strlcpy.h"
#define	TAILQ_FOREACH_SAFE(var, head, field, next)			\
	for ((var) = TAILQ_FIRST((head));				\
	    (var) && ((next) = TAILQ_NEXT((var), field), 1);		\
	    (var) = (next))
#define TAILQ_FOREACH_REVERSE_SAFE(var, head, headname, field, prev)	\
	for ((var) = TAILQ_LAST((head), headname);			\
	    (var) && ((prev) = TAILQ_PREV((var), headname, field), 1);  \
	    (var) = (prev))
#include <spawn.h>
#define pollts ppoll
