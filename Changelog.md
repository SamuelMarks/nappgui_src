# NAppGUI Changelog

## v1.4.0 - Unk 00, 2023 (rUNK)

### Added

* String functions: `str_relpath()`, `str_crelpath()` and `str_splits()`.
* `guicontrol` base object [Doc](https://nappgui.com/en/gui/guicontrol.html).
* `layout_control()` and `cell_control()`.
* TableView freeze column [Doc](https://nappgui.com/en/gui/tableview.html#h5). `tableview_column_freeze()`.
* TableView row click event [Doc](https://nappgui.com/en/gui/tableview.html#h6). `tableview_OnRowClick()`, `EvTbRow` and `ekGUI_EVENT_TBL_ROWCLICK`.
* TableView force row height [Doc](https://nappgui.com/en/gui/tableview.html#h7). `tableview_header_height()` and `tableview_row_height()`.
* TableView column-by-column horizontal navigation [Doc](https://nappgui.com/en/gui/tableview.html#h4). `tableview_hkey_scroll()`.
* TableView focus row [Doc](https://nappgui.com/en/gui/tableview.html#h4). `tableview_focus_row()`, `tableview_get_focus_row()`.
* TableView hide scrollbars [Doc](https://nappgui.com/docs/gui/tableview.html#h7). `tableview_scroll_visible()`, `view_scroll_visible()` and `view_scroll_size()`.
* TableView multiline headers [Doc](https://nappgui.com/docs/gui/tableview.html#h5). `'\n'` in `tableview_header_title()`.
* TextView get full text: `textview_get_text()`.
* TextView select text: `textview_select()`.
* TextView scroll to caret: `textview_scroll_caret()`.
* TextView hide scrollbars: `textview_scroll_visible()`.
* TextView new events: `textview_OnFilter()`, `textview_OnFocus()`.
* TextView clipboard: `textview_copy()`, `textview_cut()`, `textview_paste()`.
* `edit_OnFilter()`: Number of characters inserted or deleted in caret position `EvText::len`.
* `edit_OnChange()`: If event returns `FALSE`, the focus remains in control.
* Edit focus detection: `edit_OnFocus()`.
* Edit select text: `edit_select()`.
* Edit clipboard: `edit_copy()`, `edit_cut()`, `edit_paste()`.
* Keyboard focus result: `gui_focus_t`, `window_focus()`, `window_get_focus()`, `view_OnResignFocus()` and `view_OnAcceptFocus()`.
* Non-cycle tabstops: `window_cycle_tabstop()`.
* Window hotkey support: `window_hotkey()`, `window_clear_hotkeys()` [Doc](https://nappgui.com/en/gui/window.html#h6).
* Window modal avoid hide when close: `ekWINDOW_MODAL_NOHIDE` [Doc](https://nappgui.com/en/gui/window.html#h3).
* View scrollbar event: `view_OnScroll()`, `gui_scroll_t`.
* View new constructor: `view_custom()`.
* View draw overlays: `view_OnOverlay()` [Doc](https://nappgui.com/docs/r4716/en/gui/view.html#h3).
* Panel new constructor: `panel_custom()`.
* Button vertical padding: `button_vpadding()` and `button_get_height()`.
* Edit vertical padding: `edit_vpadding()`.
* `blib_getenv()` and `blib_end()`.
* Date functions: `blib_strftime()`, `date_pack()`, `date_ellapsed_seconds()`, `date_format()`, `date_is_valid()`, `date_weekday()`.
* `gui_info_window()`.

### Improved

* Tabstops [Doc](https://nappgui.com/en/gui/layout.html#h6).
* View border change color when focus (focus ring).
* Window keyboard focus [Doc](https://nappgui.com/en/gui/window.html#h4).
* Window default button [Doc](https://nappgui.com/en/gui/window.html#h5).
* `splitview_text()` and `splitview_view()` add a new tabstop parameter.
* Clang-format in all source code.

### Fixed

* Vulnerability in `str_split_trim()`.
* TableView scrollers always visible: [Issue](https://github.com/frang75/nappgui_src/issues/43).
* `edit_color()` issue.
* ListBox scrollbar adjustment.
* Support for full modal application where all windows are modal.
* Removed visible 64x64 artifact when ImageView is used in Windows.
* macOS Panel automatic scrolls when non-visible child control is TAB-focused.
* blib secure functions: `blib_strcpy()`, `blib_strncpy()` and `blib_strcat()`. [Issue](https://github.com/frang75/nappgui_src/issues/61).
* Issue Win32 Alt+Tab navigation with modal windows.
* GTK3 "dummy" control navigation with arrow keys.
* GTK3 lost focus when ALT+TAB navigation.
* GTK3 focus a control when NO tabstops in window.
* GTK3 issue in TextView editable.
* GTK3 get screen resolution.

### Removed

* `layout_next_tabstop()` and `layout_previous_tabstop()`.
* `textview_scroll_down()`. Use now `textview_scroll_caret()`.
* `date_DD_MM_YYYY_HH_MM_SS()` and `date_YYYY_MM_DD_HH_MM_SS()`. Use now `date_format()`.
* `date_month_en()` and `date_month_es()`. Use now `date_format()`.

### Build system

* `nrc` compiler builds from source. Deleted binary executables from repo. [Issue](https://github.com/frang75/nappgui_src/issues/44), [Issue](https://github.com/frang75/nappgui_src/issues/22).
* Support for `cmake --install`.
* Support for CMake `find_package()`.
* Support for CMake Ninja generator.
* Support for Clang in Linux.
* Headers in a single directory. [Issue](https://github.com/frang75/nappgui_src/issues/54).
* `NAppProject.cmake` module for help in NAppGUI-based applications.
   * `nap_project_desktop_app()`.
   * `nap_project_command_app()`.
   * `nap_project_library()`.
   * `nap_config_compiler()`.
   * `nap_target_c_standard()`.
   * `nap_target_cxx_standard()`.

## v1.3.1 - Sep 05, 2023 (r4181)

### Added

* Methods to move to next/previous tabstop. [Commit](https://github.com/frang75/nappgui_src/commit/22d30249fa6614f31a994d76d630295a8b334694), [Doc](https://nappgui.com/en/gui/layout.html#h6).
    * `layout_next_tabstop`
    * `layout_previous_tabstop`
    * `window_next_tabstop`
    * `window_previous_tabstop`

### Fixed

* `.def` files compatibles with BUSY build system. [Issue](https://github.com/frang75/nappgui_src/issues/4#issuecomment-1376431375), [Commit](https://github.com/frang75/nappgui_src/commit/34b3f2551c4b884e65270b0f35f50240a26e0935).
* Bug in `SplitView` with nested panels. [Issue](https://github.com/frang75/nappgui_src/issues/33), [Commit](https://github.com/frang75/nappgui_src/commit/dfaf85f801890e0dcd62f31836d87e3fc2267ff6).
* Bug in `LexicalScanner`. [Commit](https://github.com/frang75/nappgui_src/commit/57bf61c42f8617e5d73117c9d51b8890248f8921).
* macOS issue in empty-text checkboxes. [Commit](https://github.com/frang75/nappgui_src/commit/57bf61c42f8617e5d73117c9d51b8890248f8921).
* Json issues and improved documentation. [Commit](https://github.com/frang75/nappgui_src/commit/57bf61c42f8617e5d73117c9d51b8890248f8921), [Doc](https://nappgui.com/en/inet/json.html).
* macOS Lion edit focus issue. [Commit](https://github.com/frang75/nappgui_src/commit/22d30249fa6614f31a994d76d630295a8b334694).


## v1.3.0 - Dec 26, 2022 (r4146)

### Added

* New header `<blib.h>` [Doc](https://nappgui.com/en/sewer/blib.html).
* New header `<dlib.h>` [Doc](https://nappgui.com/en/osbs/dlib.html).
* Support for TableView [Doc](https://nappgui.com/en/gui/tableview.html).
* Compiler definitions for static/dynamic functions export/import
  * `_sewer_api`
  * `_osbs_api`
  * `_core_api`
  * `_geom2d_api`
  * `_draw2d_api`
  * `_osgui_api`
  * `_gui_api`
  * `_osapp_api`
  * `_inet_api`

### Improved

* Full review of ANSI C90
* New .pdf ebook edition

### Build System

* Support for generate dynamic libraries `dynamicLib()`. [Doc](https://nappgui.com/en/guide/build.html#h2).
* Possibility to choose the standard C/C++ per project. [Doc](https://nappgui.com/en/guide/newprj.html#h4).
* `staticLib()` adds libName parameter.
* `commandLib()` adds appName parameter.
* `dynamicLib()` new build command.
* Support for multiple targets from same source folder.
* `generateSolution() `should be added at the end of src/CMakeLists.txt


## v1.2.4 - Dec 26, 2022 (r3888)

### Fixed

* Fix Right-Shift tabstop in Windows.
* GTK+3 issue in Wayland (forced X11).


## v1.2.3 - Jun 5, 2022 (r3778)

### Added
* Linux ARM64 build support.
* Build support for "AppleClang" compiler ID.

### Fixed

* TextView rich text working on macOS
* Solved compile warnings with macOS SDK 12.0


## v1.2.2 - Apr 30, 2022 (r3744)

### Added

* GCC11 Ubuntu 22.04 support.

### Fixed

* GTK3 issues in older versions (Ubuntu 12, 14, 16).
* Proc deadlock in Win32 `bproc_read_close`.


## v1.2.1 - Apr 9, 2022 (r3657)

### Added

* `buffer_const()`
* `buffer_with_data()`
* `heap_leaks()`
* `heap_stats()`
* `bfile_pos()`
* `bfile_seek()`
* `layout_dbind_update()`
* `evbind_modify()`
* `evbind_object()`
* `r2d_centerf()`
* VisualStudio 2022 support.
* Xcode 13 macOS Monterey support.

### Improved

* Containers 'const' treatment (Arrays, Sets).
* Linux Gtk3/Curl/Pthread package dependencies management.
* GUI data binding implementation and docs: [Doc](https://nappgui.com/en/gui/gbind.html).

### Fixed

* GIF animations in GTK/Linux.


## v1.2.0 - Oct 16, 2021 (r3382)

* First Open Source release.
