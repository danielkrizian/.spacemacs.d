;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/private/")
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(d
     (spacemacs-layouts :variables
                        layouts-autosave-delay 900
                        layouts-enable-autosave t
                        spacemacs-layouts-restrict-spc-tab t
                        persp-autokill-buffer-on-remove 'kill-weak) ; =SPC l x= kills layout buffers not in any other layout exc. default
     spacemacs-purpose
     search-engine
     python
     ipython-notebook
     (c-c++ :variables
            c-c++-enable-clang-support t
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-backend 'rtags
            c-c++-enable-rtags-completion t)
     ;; cpp2
     javascript
     csv
     html
     pdf
     helm
     imenu-list
     ;; themes-megapack
     (cmake :variables
            cmake-enable-cmake-ide-support t)
     ;;better-defaults
     emacs-lisp
     (git :variables
          forge-owned-accounts '(("danielkrizian" "quantonomy" "emacs-q" "arqive")))
     version-control
     ;; github   ; was deprecated, see replacement: https://github.com/practicalli/spacemacs/blob/main/source-control/github/gists.md
     gist        ; private layer in dotspacemacs-configuration-layer-path
     debug
     markdown
     (latex :variables
            latex-enable-auto-fill t
            latex-enable-folding t
            latex-enable-magic t)
     multiple-cursors
     treemacs
     yaml
     (org :variables
          org-startup-indented nil
          org-indent-indentation-per-level 1
          org-adapt-indentation nil     ; don't add whitespace when new line with evil-open-below/above ("o"/"O")
          org-hide-block-startup t
          org-directory "~/org"
          org-default-notes-file "~/org/inbox.org"
          ;; org-reverse-note-order t
          org-agenda-files (list "~/org/")
          org-refile-targets (quote ((org-agenda-files :maxlevel . 5)))
          org-enable-org-journal-support t
          org-journal-dir "~/org/daily/"
          org-journal-enable-agenda-integration t
          org-journal-file-type `daily
          org-journal-file-format "%Y%m%d"
          org-journal-date-prefix "#+TITLE: "
          org-journal-date-format "%Y%m%d"
          org-journal-time-prefix ""
          org-journal-time-format ""
          ;; org-journal-search-results-order-by :desc
          org-highlight-latex-and-related '(latex script entities)
          org-pretty-entities t
          org-pretty-entities-include-sub-superscripts t
          org-enable-roam-support t    ;; comment out next lines until this is fixed: https://github.com/syl20bnr/spacemacs/issues/14477
          org-roam-directory "~/org"
          org-roam-dailies-directory "daily/"
          org-roam-db-location "~/org/db/org-roam.db"
          org-roam-v2-ack t
          org-roam-completion-everywhere t
          ;; org-roam-capture-templates
          ;; '(("d" "default" plain
          ;;    #'org-roam-capture--get-point
          ;;    "%?"
          ;;    :file-name "%<%Y%m%d%H%M%S>-${slug}"
          ;;    :head "#+title: ${title}\n"
          ;;    :unnarrowed t)
          ;;   ("b" "book notes" plain
          ;;    #'org-roam-capture--get-point
          ;;    "\n* Source\n\nAuthor: %^{Author}\nTitle: ${title}\nYear: %^{Year}\n\n* Summary\n\n%?"
          ;;    :file-name "%<%Y%m%d%H%M%S>-${slug}"
          ;;    :head "#+title: ${title}\n"
          ;;    :unnarrowed t))
          ;; :packages (not org-roam)
          )
     graphviz                           ; support for graphs in org-roam
     dk-org
     org-reverse-datetree
     command-log
     (shell :variables
            shell-default-shell 'eshell
         ;; shell-enable-smart-eshell t
            shell-default-term-shell "/bin/bash"
            multi-term-program "/bin/bash"
            close-window-with-terminal t
         ;; shell-default-full-span nil
            shell-default-height 30
            shell-default-position 'bottom)
     ;; spell-checking
     syntax-checking
     (auto-completion :variables
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-sort-by-usage t)
     ;;company
     ;; company-ycmd
     ;; flycheck
     ;; cc-mode
     docker
     q-mode ;; private layer in dotspacemacs-configuration-layer-path
     conda  ;; private layer in dotspacemacs-configuration-layer-path
     systemd
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages
   '(
     base16-theme
     poly-org
     )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(smartparens org-superstar)

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'nil

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; The exceptional case is `recents-by-project', where list-type must be a
   ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
   ;; number is the project limit and the second the limit on the recent files
   ;; within a project.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent nil

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable nil

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         spacemacs-dark
                         spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.2)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts. The `:size' can be specified as
   ;; a non-negative integer (pixel size), or a floating-point (point size).
   ;; Point size is recommended, because it's device independent. (default 10.0)
   dotspacemacs-default-font '("Source Code Pro"
                               :size 12
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Home"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts t

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose t

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title nil

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling nil

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but only visual lines are counted. For example, folded lines will not be
   ;; counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Show trailing whitespace (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; If non-nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfere with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Accept SPC as y for prompts if non-nil. (default nil)
   dotspacemacs-use-SPC-as-y nil

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non-nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env)
)

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  (setq custom-file "~/.spacemacs.d/custom.el")
  (when (file-exists-p custom-file) (load-file custom-file))
  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
)


(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (setq split-width-threshold nil)      ; don't split horizontally; so that e.g. `q-qcon' works
  (global-hl-line-mode t)               ; highlight line at cursor
  (global-visual-line-mode t)           ; word wrap; jk navigate by visual line, not logical line
  (setq restart-emacs-restore-frames t
        restart-emacs-with-tty-frames-p t
        ;; desktop-save-mode t
        proced-auto-update-flag t      ; update proced at interval
        proced-auto-update-interval 5  ; seconds to update proced
        ;; conda-anaconda-home "/opt/conda"
        ;;(require 'conda)
        ;;(conda-env-initialize-interactive-shells)
        ;;(conda-env-initialize-eshell)
        ;;(conda-env-autoactivate-mode t)
        browse-url-browser-function 'browse-url-generic
        browse-url-generic-program "brave-browser"
        ycmd-server-command '("python" "-u" "/home/dk/ycmd/ycmd")
        ycmd-global-config (concat (configuration-layer/get-layer-path 'ycmd) "global_conf.py")
        rtags-path "/opt/rtags/bin")
  (setq-default helm-make-build-dir "build"
                cmake-ide-build-dir "build")
  (put 'helm-make-build-dir 'safe-local-variable 'stringp)
  (put 'cmake-ide-build-dir 'safe-local-variable 'stringp)
  (put 'cmake-ide-cmake-args 'safe-local-variable 'listp)
  (dolist (mode c-c++-modes)
    (spacemacs/declare-prefix-for-mode mode "md" "debug")
    (spacemacs/set-leader-keys-for-major-mode mode
      "dd" 'gdb
      "dc" 'gud-cont
      "dn" 'gud-next
      "ds" 'gud-step
      "db" 'gud-break
      "dB" 'gud-remove
      "dr" 'gud-go
      "da" 'gdb-io-eof
      "dk" 'gud-up
      "dj" 'gud-down
      "du" 'gud-until
      ))
  ;; -------------- helm ----------------------------------------------------------
  (setq helm-candidate-number-limit 300
        history-delete-duplicates t     ; here until the var is available in helm layer
        history-length 10)              ; ditto ^; details: https://github.com/syl20bnr/spacemacs/issues/13564#issuecomment-625435391
  ;; ----------- movement ---------------------------------------------------------
  (global-set-key (kbd "<mouse-7>") '(lambda ()(interactive)(scroll-left 4)))
  (global-set-key (kbd "<mouse-6>") '(lambda ()(interactive)(scroll-right 4)))
  ;; -------------- tramp ----------------------------------------------------------
  (setq tramp-default-method "ssh")
  ;; -------------- projectile -------------------------------------------------------
  (setq projectile-project-search-path '("~/proj/")
        compilation-always-kill t)      ; auto-answer yes to "A compilation process is running; kill it? (yes or no)" when SPC pT

  (defun projectile-compile--double-prefix-means-run-comint (func &optional args) ; https://github.com/bbatsov/projectile/issues/891
    "allow running compilation interactively when multiple prefixes are given.
(C-u C-u) runs default compilation command in interactive compilation buffer.
(C-u C-u C-u) prompts for command and then runs it in an interactive compilation buffer."
    (let ((prefix current-prefix-arg))
      (if (and (consp prefix)
               (setq prefix (car prefix))
               (>= prefix 16))
          (cl-letf* (((symbol-function 'actual-compile)
                      (symbol-function 'compile))
                     ((symbol-function 'compile)
                      (lambda (command &optional comint)
                        (actual-compile command t))))
            (funcall func (if (eq prefix 16) nil '(4))))
        (funcall func prefix))))

  (advice-add 'projectile-run-project     :around #'projectile-compile--double-prefix-means-run-comint)
  (advice-add 'projectile-compile-project :around #'projectile-compile--double-prefix-means-run-comint)
  (advice-add 'projectile-test-project    :around #'projectile-compile--double-prefix-means-run-comint)

  ;; (defun +select-buffer-in-side-window (buffer alist)
  ;;   "Display buffer in a side window and select it"
  ;;   (let ((window (display-buffer-in-side-window buffer alist)))
  ;;     (select-window window)))

  ;; (add-to-list 'display-buffer-alist '("\\*\\(?:Warnings\\|Compile-Log\\|Messages\\|compilation\\)\\*"
  ;;                                      (+select-buffer-in-side-window)
  ;;                                      (window-height . 0.20)
  ;;                                      (side . bottom)
  ;;                                      (slot . -5)
  ;;                                      (preserve-size . (nil . t))))
  ;; -------------- org-mode -------------------------------------------------------
  (with-eval-after-load 'org
    (require 'org-inlinetask)
    (defun org-journal-find-location () (org-journal-new-entry t) (goto-char (point-min)))
    ;; (setq org-capture-templates
    ;;       '(("l" "Log entry" entry (function org-journal-find-location) ""))
    ;;       ;;       ("l" "Log" entry (file+function "~/org/log.org" org-reverse-datetree-goto-date-in-file)
    ;;       ;;          "* %?")
    ;;       )
    (setq org-startup-align-all-table t
          org-support-shift-select nil
          org-hide-leading-stars t
          org-ditaa-jar-path "/usr/share/ditaa/ditaa.jar"
          org-export-backends '(beamer html latex md)
          org-format-latex-options (plist-put org-format-latex-options :scale 1.2)) ;; larger latex preview fragments
    ;; ------------- org-babel ---------------------------------------------------
    (setq org-confirm-babel-evaluate nil
          ;; org-babel-default-header-args '((:results . "output replace") (:noweb . "yes"))
          org-babel-default-header-args:C++ '((:main . "no") (:flags . "-I.")))
    (org-babel-do-load-languages
     'org-babel-load-languages
     '((shell . t)
       (emacs-lisp . t)
       (gnuplot . t)
       (ditaa . t)
       (makefile . t)
       ;;    (org . t)
       (python . t)
       ;; (q . t)
       (sql . t)
       (sqlite . t)))
    (setq org-src-tab-acts-natively t
          org-src-fontify-natively t
          org-src-window-setup 'current-window ;; edit in current window
          org-edit-src-content-indentation 0 ;; do not put two spaces on the left
          org-src-preserve-indentation t ;; preserve the above
          org-src-strip-leading-and-trailing-blank-lines t)
    ;; ------------- org-download -------------------------------------------------
    (setq-default org-download-method 'directory
                  org-download-image-dir "img"
                  org-download-heading-lvl nil)
    ;; --------------org-toggle-blocks--------------------------------------------
    (defvar org-blocks-hidden nil)
    (defun org-toggle-blocks ()
      (interactive)
      (if org-blocks-hidden
          (org-show-all '(blocks))
        (org-hide-block-all))
      (setq-local org-blocks-hidden (not org-blocks-hidden)))
    (defun my-org-mode-hook ()
      (org-toggle-blocks)
      (setq org-image-actual-width '(400)) ;; set preview image size to 1/3 of original size by default
      )
    (add-hook 'org-mode-hook 'my-org-mode-hook)
    (add-hook 'org-capture-prepare-finalize-hook 'org-id-get-create)   ; Unique ids for each captured entry. This makes it so that interdocument links will not break after re-filing entries into other files.
    (spacemacs/set-leader-keys-for-major-mode 'org-mode "T#" 'org-toggle-blocks)

        ;; --------------org-toggle-properties--------------------------------------------
    (defun org-hide-properties ()       ;; https://org-roam.discourse.group/t/how-to-browse-your-notes-so-that-org-mode-elements-render-in-an-appealing-way/1432/15  https://github.com/org-roam/org-roam/wiki/Hitchhiker's-Rough-Guide-to-Org-roam-V2#hiding-the-properties-drawer
      "Hide all org-mode headline property drawers in buffer. Could be slow if it has a lot of overlays."
      (interactive)
      (save-excursion
        (goto-char (point-min))
        (while (re-search-forward
                "^ *:properties:\n\\( *:.+?:.*\n\\)+ *:end:\n" nil t)
          (let ((ov_this (make-overlay (match-beginning 0) (match-end 0))))
            (overlay-put ov_this 'display "")
            (overlay-put ov_this 'hidden-prop-drawer t))))
      (put 'org-toggle-properties-hide-state 'state 'hidden))

    (defun org-show-properties ()
      "Show all org-mode property drawers hidden by org-hide-properties."
      (interactive)
      (remove-overlays (point-min) (point-max) 'hidden-prop-drawer t)
      (put 'org-toggle-properties-hide-state 'state 'shown))

    (defun org-toggle-properties ()
      "Toggle visibility of property drawers."
      (interactive)
      (if (eq (get 'org-toggle-properties-hide-state 'state) 'hidden)
          (org-show-properties)
        (org-hide-properties)))

    (spacemacs/set-leader-keys-for-major-mode 'org-mode "Tp" 'org-toggle-properties)
    )

  ;; ------------- yasnippet ----------------------------------------------
  (with-eval-after-load 'yasnippet
    (setq yas-snippet-dirs (append yas-snippet-dirs '("~/.spacemacs.d/snippets/"))))

  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
