package="lualdap"
version="1.2.2-1"
source = {
   url = "https://github.com/bdellegrazie/lualdap/archive/v1.2.2.tar.gz",
   dir = "lualdap-1.2.2",
}
description = {
   summary = "Simple interface from Lua to an LDAP Client",
   detailed = [[
      Simple interface from Lua to an LDAP client.
   ]],
   homepage = "https://github.com/bdellegrazie/lualdap",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.3"
}
external_dependencies = {
   LIBLDAP = {
      header = "ldap.h",
      library = "ldap",
   }
}
build = {
   type = "builtin",
   modules = {
      lualdap = {
         sources = "src/lualdap.c",
         libdirs = "$(LIBLDAP_LIBDIR)",
         incdirs = "$(LIBLDAP_INCDIR)",
         libraries = "ldap",
      },
   }
}
