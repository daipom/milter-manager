/* -*- c -*- */

/*** BEGIN file-header ***/
#pragma once

#include <glib-object.h>

G_BEGIN_DECLS
/*** END file-header ***/

/*** BEGIN file-production ***/

/* enumerations from "@filename@" */
/*** END file-production ***/

/*** BEGIN value-header ***/
GType @enum_name@_get_type(void) G_GNUC_CONST;
#define @ENUMPREFIX@_TYPE_@ENUMSHORT@ (@enum_name@_get_type())
/*** END value-header ***/

/*** BEGIN file-tail ***/

G_END_DECLS
/*** END file-tail ***/
