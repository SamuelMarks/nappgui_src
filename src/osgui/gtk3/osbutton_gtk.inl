/*
 * NAppGUI Cross-platform C SDK
 * 2015-2023 Francisco Garcia Collado
 * MIT Licence
 * https://nappgui.com/en/legal/license.html
 *
 * File: osbutton_gtk.inl
 *
 */

/* Operating System native button */

#include "osgui_gtk.ixx"

__EXTERN_C

GtkWidget *_osbutton_focus(OSButton *button);

void _osbutton_command(OSButton *button);

__END_C
