# =========================================================================
#     This makefile was generated by
#     Bakefile 0.1.9 (http://bakefile.sourceforge.net)
#     Do not modify, all changes will be overwritten!
# =========================================================================



# -------------------------------------------------------------------------
# These are configurable options:
# -------------------------------------------------------------------------

# C++ compiler 
CXX = wpp386

# Standard flags for C++ 
CXXFLAGS = 

# Standard preprocessor flags (common for CC and CXX) 
CPPFLAGS = 

# Standard linker flags 
LDFLAGS = 

# The directory where wxWidgets library is installed 
WX_DIR = $(%WXWIN)

# Use DLL build of wx library to use? [0,1]
WX_SHARED = 0

# Compile Unicode build of wxWidgets? [0,1]
WX_UNICODE = 0

# Use debug build of wxWidgets (define __WXDEBUG__)? [0,1]
WX_DEBUG = 1

# Version of the wx library to build against. 
WX_VERSION = 26



# -------------------------------------------------------------------------
# Do not modify the rest of this file!
# -------------------------------------------------------------------------

# Speed up compilation a bit:
!ifdef __LOADDLL__
!  loaddll wcc      wccd
!  loaddll wccaxp   wccdaxp
!  loaddll wcc386   wccd386
!  loaddll wpp      wppdi86
!  loaddll wppaxp   wppdaxp
!  loaddll wpp386   wppd386
!  loaddll wlink    wlink
!  loaddll wlib     wlibd
!endif

# We need these variables in some bakefile-made rules:
WATCOM_CWD = $+ $(%cdrive):$(%cwd) $-

### Conditionally set variables: ###

WX3RDPARTLIBPOSTFIX =
!ifeq WX_DEBUG 1
WX3RDPARTLIBPOSTFIX = d
!endif
__WXDOCKIT_OUTPUT_FOLDER_FILENAMES =
!ifeq WX_SHARED 0
__WXDOCKIT_OUTPUT_FOLDER_FILENAMES = lib\wat_lib
!endif
!ifeq WX_SHARED 1
__WXDOCKIT_OUTPUT_FOLDER_FILENAMES = lib\wat_dll
!endif
__WARNINGS =
!ifeq WX_DEBUG 0
__WARNINGS = 
!endif
!ifeq WX_DEBUG 1
__WARNINGS = -wx
!endif
__OPTIMIZEFLAG =
!ifeq WX_DEBUG 0
__OPTIMIZEFLAG = -ot -ox
!endif
!ifeq WX_DEBUG 1
__OPTIMIZEFLAG = -od
!endif
__DEBUGINFO =
!ifeq WX_DEBUG 0
__DEBUGINFO = -d0
!endif
!ifeq WX_DEBUG 1
__DEBUGINFO = -d2
!endif
__DEBUGINFO_0 =
!ifeq WX_DEBUG 0
__DEBUGINFO_0 = 
!endif
!ifeq WX_DEBUG 1
__DEBUGINFO_0 = debug all
!endif
__WXUNICODE_DEFINE_p =
!ifeq WX_UNICODE 1
__WXUNICODE_DEFINE_p = -d_UNICODE
!endif
__WXDEBUG_DEFINE_p =
!ifeq WX_DEBUG 1
__WXDEBUG_DEFINE_p = -d__WXDEBUG__
!endif
WXLIBPOSTFIX =
!ifeq WX_DEBUG 0
!ifeq WX_UNICODE 1
WXLIBPOSTFIX = u
!endif
!endif
!ifeq WX_DEBUG 1
!ifeq WX_UNICODE 0
WXLIBPOSTFIX = d
!endif
!endif
!ifeq WX_DEBUG 1
!ifeq WX_UNICODE 1
WXLIBPOSTFIX = ud
!endif
!endif
__WXLIBPATH_FILENAMES =
!ifeq WX_SHARED 0
__WXLIBPATH_FILENAMES = \lib\wat_lib
!endif
!ifeq WX_SHARED 1
__WXLIBPATH_FILENAMES = \lib\wat_dll
!endif
__WX_SHAREDDEFINE_p =
!ifeq WX_SHARED 1
__WX_SHAREDDEFINE_p = -dWXUSINGDLL
!endif

### Variables: ###

MDI_CXXFLAGS = $(__WXUNICODE_DEFINE_p) $(__WXDEBUG_DEFINE_p) -d__WXMSW__ &
	-i=$(WX_DIR)$(__WXLIBPATH_FILENAMES)\msw$(WXLIBPOSTFIX) &
	-i=$(WX_DIR)\include -i=..\..\..\include $(__WARNINGS) $(__OPTIMIZEFLAG) &
	$(__DEBUGINFO) -bm $(__WX_SHAREDDEFINE_p) -i=..\..\mdi\include $(CPPFLAGS) &
	$(CXXFLAGS)
MDI_OBJECTS =  &
	watcom$(WXLIBPOSTFIX)\mdi_app.obj &
	watcom$(WXLIBPOSTFIX)\mdi_mdi_example.obj
SDI_CXXFLAGS = $(__WXUNICODE_DEFINE_p) $(__WXDEBUG_DEFINE_p) -d__WXMSW__ &
	-i=$(WX_DIR)$(__WXLIBPATH_FILENAMES)\msw$(WXLIBPOSTFIX) &
	-i=$(WX_DIR)\include -i=..\..\..\include $(__WARNINGS) $(__OPTIMIZEFLAG) &
	$(__DEBUGINFO) -bm $(__WX_SHAREDDEFINE_p) -i=..\..\sdi\include $(CPPFLAGS) &
	$(CXXFLAGS)
SDI_OBJECTS =  &
	watcom$(WXLIBPOSTFIX)\sdi_app.obj &
	watcom$(WXLIBPOSTFIX)\sdi_sdi_example.obj


all : watcom$(WXLIBPOSTFIX)
watcom$(WXLIBPOSTFIX) :
	-if not exist watcom$(WXLIBPOSTFIX) mkdir watcom$(WXLIBPOSTFIX)

### Targets: ###

all : .SYMBOLIC ..\..\mdi\mdi.exe ..\..\sdi\sdi.exe

clean : .SYMBOLIC 
	-if exist watcom$(WXLIBPOSTFIX)\*.obj del watcom$(WXLIBPOSTFIX)\*.obj
	-if exist watcom$(WXLIBPOSTFIX)\*.res del watcom$(WXLIBPOSTFIX)\*.res
	-if exist watcom$(WXLIBPOSTFIX)\*.lbc del watcom$(WXLIBPOSTFIX)\*.lbc
	-if exist watcom$(WXLIBPOSTFIX)\*.ilk del watcom$(WXLIBPOSTFIX)\*.ilk
	-if exist watcom$(WXLIBPOSTFIX)\*.pch del watcom$(WXLIBPOSTFIX)\*.pch
	-if exist ..\..\mdi\mdi.exe del ..\..\mdi\mdi.exe
	-if exist ..\..\sdi\sdi.exe del ..\..\sdi\sdi.exe

..\..\mdi\mdi.exe :  $(MDI_OBJECTS) watcom$(WXLIBPOSTFIX)\mdi_mdi.res
	@%create watcom$(WXLIBPOSTFIX)\mdi.lbc
	@%append watcom$(WXLIBPOSTFIX)\mdi.lbc option quiet
	@%append watcom$(WXLIBPOSTFIX)\mdi.lbc name $^@
	@%append watcom$(WXLIBPOSTFIX)\mdi.lbc option caseexact
	@%append watcom$(WXLIBPOSTFIX)\mdi.lbc $(LDFLAGS) libpath $(WX_DIR)$(__WXLIBPATH_FILENAMES) libpath ..\..\..\$(__WXDOCKIT_OUTPUT_FOLDER_FILENAMES) $(__DEBUGINFO_0)  system nt_win ref '_WinMain@16'
	@for %i in ($(MDI_OBJECTS)) do @%append watcom$(WXLIBPOSTFIX)\mdi.lbc file %i
	@for %i in ( wxdockit$(WXLIBPOSTFIX).lib wxmsw$(WX_VERSION)$(WXLIBPOSTFIX)_adv.lib wxbase$(WX_VERSION)$(WXLIBPOSTFIX)_xml.lib wxmsw$(WX_VERSION)$(WXLIBPOSTFIX)_core.lib wxbase$(WX_VERSION)$(WXLIBPOSTFIX).lib wxtiff$(WX3RDPARTLIBPOSTFIX).lib wxjpeg$(WX3RDPARTLIBPOSTFIX).lib wxpng$(WX3RDPARTLIBPOSTFIX).lib wxzlib$(WX3RDPARTLIBPOSTFIX).lib wxregex$(WXLIBPOSTFIX).lib wxexpat$(WX3RDPARTLIBPOSTFIX).lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib) do @%append watcom$(WXLIBPOSTFIX)\mdi.lbc library %i
	@%append watcom$(WXLIBPOSTFIX)\mdi.lbc option resource=watcom$(WXLIBPOSTFIX)\mdi_mdi.res
	wlink @watcom$(WXLIBPOSTFIX)\mdi.lbc

..\..\sdi\sdi.exe :  $(SDI_OBJECTS) watcom$(WXLIBPOSTFIX)\sdi_sdi.res
	@%create watcom$(WXLIBPOSTFIX)\sdi.lbc
	@%append watcom$(WXLIBPOSTFIX)\sdi.lbc option quiet
	@%append watcom$(WXLIBPOSTFIX)\sdi.lbc name $^@
	@%append watcom$(WXLIBPOSTFIX)\sdi.lbc option caseexact
	@%append watcom$(WXLIBPOSTFIX)\sdi.lbc $(LDFLAGS) libpath $(WX_DIR)$(__WXLIBPATH_FILENAMES) libpath ..\..\..\$(__WXDOCKIT_OUTPUT_FOLDER_FILENAMES) $(__DEBUGINFO_0)  system nt_win ref '_WinMain@16'
	@for %i in ($(SDI_OBJECTS)) do @%append watcom$(WXLIBPOSTFIX)\sdi.lbc file %i
	@for %i in ( wxdockit$(WXLIBPOSTFIX).lib wxmsw$(WX_VERSION)$(WXLIBPOSTFIX)_adv.lib wxbase$(WX_VERSION)$(WXLIBPOSTFIX)_xml.lib wxmsw$(WX_VERSION)$(WXLIBPOSTFIX)_core.lib wxbase$(WX_VERSION)$(WXLIBPOSTFIX).lib wxtiff$(WX3RDPARTLIBPOSTFIX).lib wxjpeg$(WX3RDPARTLIBPOSTFIX).lib wxpng$(WX3RDPARTLIBPOSTFIX).lib wxzlib$(WX3RDPARTLIBPOSTFIX).lib wxregex$(WXLIBPOSTFIX).lib wxexpat$(WX3RDPARTLIBPOSTFIX).lib kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib odbc32.lib) do @%append watcom$(WXLIBPOSTFIX)\sdi.lbc library %i
	@%append watcom$(WXLIBPOSTFIX)\sdi.lbc option resource=watcom$(WXLIBPOSTFIX)\sdi_sdi.res
	wlink @watcom$(WXLIBPOSTFIX)\sdi.lbc

watcom$(WXLIBPOSTFIX)\mdi_app.obj :  .AUTODEPEND ..\..\mdi\src\app.cpp
	$(CXX) -zq -fo=$^@ $(MDI_CXXFLAGS) $<

watcom$(WXLIBPOSTFIX)\mdi_mdi_example.obj :  .AUTODEPEND ..\..\mdi\src\mdi_example.cpp
	$(CXX) -zq -fo=$^@ $(MDI_CXXFLAGS) $<

watcom$(WXLIBPOSTFIX)\mdi_mdi.res :  .AUTODEPEND ..\..\mdi\mdi.rc
	wrc -q -ad -bt=nt -r -fo=$^@ $(__WXUNICODE_DEFINE_p) $(__WXDEBUG_DEFINE_p) -d__WXMSW__ -i=$(WX_DIR)$(__WXLIBPATH_FILENAMES)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include -i=..\..\..\include $(__WX_SHAREDDEFINE_p) -i=..\..\mdi\include -i=..\..\mdi -i=..\..\..\include\msw $<

watcom$(WXLIBPOSTFIX)\sdi_app.obj :  .AUTODEPEND ..\..\sdi\src\app.cpp
	$(CXX) -zq -fo=$^@ $(SDI_CXXFLAGS) $<

watcom$(WXLIBPOSTFIX)\sdi_sdi_example.obj :  .AUTODEPEND ..\..\sdi\src\sdi_example.cpp
	$(CXX) -zq -fo=$^@ $(SDI_CXXFLAGS) $<

watcom$(WXLIBPOSTFIX)\sdi_sdi.res :  .AUTODEPEND ..\..\sdi\sdi.rc
	wrc -q -ad -bt=nt -r -fo=$^@ $(__WXUNICODE_DEFINE_p) $(__WXDEBUG_DEFINE_p) -d__WXMSW__ -i=$(WX_DIR)$(__WXLIBPATH_FILENAMES)\msw$(WXLIBPOSTFIX) -i=$(WX_DIR)\include -i=..\..\..\include $(__WX_SHAREDDEFINE_p) -i=..\..\sdi\include -i=..\..\mdi -i=..\..\..\include\msw $<

