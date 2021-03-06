#use wml::debian::submenu
#include "$(ENGLISHDIR)/ports/menu.defs"

#   Arch specific menu entries
<define-menu-item name="hurd">
  Debian GNU/Hurd
</define-menu-item>

<define-menu-item name="hurd-cd">
  <gettext domain="ports">Hurd CDs</gettext>
</define-menu-item>

<menu-item name="ports"         basename="$(HOME)/ports/index">
<menu-item name="hurd"          basename="index">
<menu-item name="news"          basename="hurd-news">
<menu-item name="configure"     basename="hurd-install">
<menu-item name="hurd-cd"       basename="hurd-cd">
<menu-item name="doc"           basename="hurd-doc">
<menu-item name="devel"         basename="hurd-devel">
<menu-item name="contact"       basename="hurd-contact">
