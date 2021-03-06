;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-babel-hyphen "")
 '(LaTeX-csquotes-close-quote "}")
 '(LaTeX-csquotes-open-quote "\\enquote{")
 '(LaTeX-fold-env-spec-list
   '(("[tikzpicture]"
      ("tikzpicture"))
     ("[algorithm]"
      ("algorithm"))
     ("[algorithm2e]"
      ("algorithm2e"))))
 '(LaTeX-fold-macro-spec-list nil)
 '(LaTeX-fold-math-spec-list nil)
 '(TeX-command-list
   '(("LaTeX" "latexmk -pdf -synctex=1 -g %(mode) %s" TeX-run-TeX nil
      (latex-mode doctex-mode)
      :help "Run LaTeX")
     ("Makeinfo" "makeinfo %(extraopts) %t" TeX-run-compile nil
      (texinfo-mode)
      :help "Run Makeinfo with Info output")
     ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX")
     ("Biber" "biber %s" TeX-run-Biber nil t :help "Run Biber")
     ("View" "%V" TeX-run-discard-or-function t t :help "Run Viewer")
     ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files")
     ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files")
     ("Other" "" TeX-run-command t t :help "Run an arbitrary command")))
 '(TeX-fold-env-spec-list nil)
 '(TeX-fold-macro-spec-list nil)
 '(TeX-fold-math-spec-list nil)
 '(TeX-save-query nil)
 '(TeX-source-correlate-mode t)
 '(ag-highlight-search t)
 '(ag-ignore-list '("build" "b" "bo" "extlib"))
 '(ag-reuse-buffers t)
 '(ag-reuse-window t)
 '(auth-sources '("~/.gnus.d/authinfo" "~/.gnus.d/authinfo.gpg" "~/.netrc"))
 '(auto-save-interval 3000)
 '(auto-save-timeout 60)
 '(bibtex-comma-after-last-field t)
 '(bibtex-entry-format
   '(opts-or-alts required-fields numerical-fields whitespace realign last-comma delimiters sort-fields))
 '(bibtex-maintain-sorted-entries 'crossref)
 '(blink-cursor-mode nil)
 '(c-basic-offset 4)
 '(c-default-style '((java-mode . "java") (awk-mode . "awk") (other . "k&r")))
 '(c-noise-macro-names '("constexpr"))
 '(c-offsets-alist '((inline-open . 0) (innamespace . 0) (inlambda . 0)))
 '(c-tab-always-indent nil)
 '(column-number-mode t)
 '(compilation-always-kill t)
 '(cperl-continued-brace-offset -4)
 '(cperl-continued-statement-offset 4)
 '(cperl-extra-newline-before-brace t)
 '(cperl-extra-newline-before-brace-multiline nil)
 '(cperl-indent-level 4)
 '(cperl-indent-parens-as-block t)
 '(cperl-label-offset -4)
 '(cperl-merge-trailing-else nil)
 '(custom-safe-themes
   '("a38397ce1d9a29a964198d8d60830b43de146feec772f32980aa436d13b74d9a" default))
 '(dired-dwim-target t)
 '(diredp-hide-details-initially-flag nil)
 '(diredp-image-preview-in-tooltip nil)
 '(doc-view-continuous t)
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons 'mouse-1--mouse-2)
 '(ede-project-directories '("/home/lorenz/docs/notes/commEffAlg"))
 '(ede-project-placeholder-cache-file "~/.emacs.d/projects.ede")
 '(ede-simple-save-directory "~/.emacs.d/ede-simple")
 '(ediff-autostore-merges t)
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(fill-column 80)
 '(flyspell-issue-welcome-flag nil)
 '(font-latex-fontify-sectioning 1.0)
 '(font-latex-match-reference-keywords
   '(("printbibliography" "[{")
     ("addbibresource" "[{")
     ("autoref" "[{")
     ("cref" "[{")
     ("Cref" "[{")
     ("crefrange" "[{")
     ("Crefrange" "[{")))
 '(fringe-mode '(nil . 0) nil (fringe))
 '(gc-cons-threshold 100000000)
 '(gdb-many-windows t)
 '(ggtags-highlight-tag 10000.0)
 '(ggtags-highlight-tag-delay 10000.0)
 '(git-commit-fill-column 72)
 '(git-commit-summary-max-length 60)
 '(gnus-init-file "~/.emacs.d/gnus-init.el")
 '(grep-command "grep -nH ")
 '(grep-find-ignored-directories '(".svn" ".git" ".hg" ".bzr" "extlib" "b" "build"))
 '(ibuffer-show-empty-filter-groups nil)
 '(ido-auto-merge-delay-time 0.4)
 '(ido-save-directory-list-file "~/.emacs.d/ido.last")
 '(ido-show-dot-for-dired t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(ispell-highlight-face 'flyspell-incorrect)
 '(jde-jdk '("1.7.0.51"))
 '(jde-jdk-registry '(("1.7.0.51" . "/opt/oracle-jdk-bin-1.7.0.51/")))
 '(lsp-clients-clangd-executable "/usr/bin/clangd-11")
 '(lsp-ui-peek-enable nil)
 '(lsp-ui-sideline-ignore-duplicate t)
 '(lua-indent-level 4)
 '(magit-diff-arguments '("--ignore-all-space"))
 '(magit-git-global-arguments
   '("--no-pager" "--literal-pathspecs" "-c" "core.preloadindex=true"))
 '(magit-log-arguments '("--graph" "--color" "--decorate" "-n100"))
 '(magit-no-confirm '(stage-all-changes unstage-all-changes))
 '(magit-pull-arguments nil)
 '(magit-refs-show-commit-count 'all)
 '(magit-status-buffer-switch-function 'switch-to-buffer)
 '(make-backup-files nil)
 '(nntp-authinfo-file "~/.emacs.d/authinfo")
 '(org-agenda-files '("~/docs/notes/todo.org"))
 '(org-clock-mode-line-total 'today)
 '(org-clock-persist t)
 '(org-confirm-shell-link-function nil)
 '(org-export-allow-bind-keywords t)
 '(org-export-backends '(ascii html latex md))
 '(org-link-frame-setup
   '((vm . vm-visit-folder-other-frame)
     (vm-imap . vm-visit-imap-folder-other-frame)
     (gnus . org-gnus-no-new-news)
     (file . find-file)
     (wl . wl-other-frame)))
 '(org-link-shell-confirm-function nil)
 '(org-tab-follows-link t)
 '(org-time-clocksum-format
   '(:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t))
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")
     ("marmalade" . "https://marmalade-repo.org/packages/")))
 '(package-selected-packages '(libgit let-alist))
 '(read-process-output-max (* 1024 1024) t)
 '(reftex-default-bibliography '("~/docs/library.bib"))
 '(reftex-ref-style-default-list '("Cleveref"))
 '(replace-lax-whitespace t)
 '(replace-regexp-lax-whitespace t)
 '(safe-local-variable-values
   '((eval add-to-list
           (make-variable-buffer-local 'LaTeX-fold-math-spec-list)
           '("[tabular]"
             ("tabular")))
     (c-tab-always-indent . t)
     (nxml-child-indent . 4)
     (rebox-min-fill-column . 100)
     (rebox-min-fill-column . 110)
     (rebox-min-fill-column . 120)))
 '(scroll-bar-mode 'right)
 '(search-whitespace-regexp "[ 	
]+")
 '(sieve-manage-default-port "4190")
 '(size-indication-mode t)
 '(smex-save-file "~/.emacs.d/smex-items")
 '(srecode-map-save-file "~/.emacs.d/srecode/srecode-map")
 '(tramp-default-method "scp")
 '(tramp-remote-process-environment
   '("HISTFILE=/dev/null" "HISTSIZE=1" "LC_ALL=C" "TERM=dumb" "EMACS=t" "CDPATH=" "HISTORY=" "MAIL=" "MAILCHECK=" "MAILPATH=" "PAGER=\"\"" "autocorrect=" "correct="))
 '(tramp-ssh-controlmaster-options "" t)
 '(tramp-use-ssh-controlmaster-options t)
 '(undo-limit 8000000)
 '(undo-outer-limit 120000000)
 '(undo-strong-limit 120000000)
 '(vc-handled-backends '(git svn)))

;; ---------------------------
;; --- change default font ---
;; ---------------------------

;(set-face-font 'default "-misc-fixed-medium-r-normal--15-*-*-*-c-90-iso8859-1")

;(set-frame-font "-*-terminus-medium-r-*-*-16-*-*-*-*-*-*-*")
(set-face-font 'default "-*-inconsolata-medium-r-*-*-17-*-*-*-*-*-*-*")

;(set-frame-font "-zevv-peep-medium-r-normal--16-*-*-*-c-*-*")

(create-fontset-from-fontset-spec "-misc-fixed-medium-r-normal--15-*-*-*-c-90-fontset-Fixed")
(create-fontset-from-fontset-spec "-*-Droid Sans Mono-medium-r-normal-*-14-*-*-*-m-*-fontset-Droid")
(create-fontset-from-fontset-spec "-*-Terminus-medium-r-normal-*-16-*-*-*-m-*-fontset-Terminus")
(create-fontset-from-fontset-spec "-zevv-peep-medium-r-normal--16-*-*-*-c-*-fontset-Zevv")

(global-set-key (kbd "<C-mouse-4>") 'text-scale-increase)
(global-set-key (kbd "<C-mouse-5>") 'text-scale-decrease)

(global-set-key (kbd "<mouse-6>") (lambda (event) (interactive "e")))
(global-set-key (kbd "<mouse-7>") (lambda (event) (interactive "e")))

;; ---------------------------------
;; --- el-get package management ---
;; ---------------------------------

;; overlay newer gnus packages over emacs defaults
(push "~/.emacs.d/el-get/gnus/lisp/" load-path)

;; load el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;; configure el-get
(setq el-get-install-branch "master"
      el-get-install-skip-emacswiki-recipes t
      el-get-git-shallow-clone t
      )

(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max)) (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-recipes")

;; BEGIN PACKAGE LIST to el-get
(setq my-el-get-packages '(el-get))

;; general emacs behaviour extensions
(push 'ag my-el-get-packages)
(push 'avy my-el-get-packages)
(push 'bm my-el-get-packages)
(push 'clang-format my-el-get-packages)
(push 'browse-kill-ring my-el-get-packages)
(push 'column-marker my-el-get-packages)
(push 'diminish my-el-get-packages)
(push 'flymake my-el-get-packages)
(push 'folding my-el-get-packages)
(push 'ggtags my-el-get-packages)
;(push 'google-this my-el-get-packages)
(push 'goto-last-change my-el-get-packages)
(push 'grandshell my-el-get-packages)
(push 'ido-completing-read-plus my-el-get-packages)
(push 'iedit my-el-get-packages)
(push 'leuven-theme my-el-get-packages)
(push 'multiple-cursors my-el-get-packages)
(push 'rainbow-delimiters my-el-get-packages)
(push 'rebox2 my-el-get-packages)
(push 'smex my-el-get-packages)
(push 'smooth-scrolling my-el-get-packages)
;(push 'tramp my-el-get-packages)
(push 'ws-butler my-el-get-packages)
(push 'yasnippet my-el-get-packages)
(push 'lsp-mode my-el-get-packages)
(push 'company-mode my-el-get-packages)
(push 'lsp-ui my-el-get-packages)
;(push 'flycheck my-el-get-packages)
(push 'outline-magic my-el-get-packages)

;(push 'auto-complete my-el-get-packages)
;(push 'auto-complete-auctex my-el-get-packages)
;(push 'auto-complete-css my-el-get-packages)
;(push 'auto-complete-yasnippet my-el-get-packages)
;(push 'auto-complete-c-headers my-el-get-packages)

;; system naviation modes
(push 'dired+ my-el-get-packages)
(push 'openwith my-el-get-packages)
(push 'ibuffer-vc my-el-get-packages)

;; text modes
(push 'auctex my-el-get-packages)
(push 'markdown-mode my-el-get-packages)
(push 'org-mode my-el-get-packages)
(push 'yaml-mode my-el-get-packages)

;; programming modes
(push 'apache-mode my-el-get-packages)
; (push 'cedet my-el-get-packages)
(push 'cmake-mode my-el-get-packages)
(push 'cperl-mode my-el-get-packages)
;(push 'ecb my-el-get-packages)
(push 'ess my-el-get-packages) ; for R
(push 'lua-mode my-el-get-packages)
(push 'mmm-mode my-el-get-packages)
(push 'php-mode my-el-get-packages)
(push 'protobuf-mode my-el-get-packages)
(push 'python-mode my-el-get-packages)
(push 'scala-mode my-el-get-packages)
(push 'thrift-mode my-el-get-packages)
(push 'tt-mode my-el-get-packages)
(push 'rust-mode my-el-get-packages)
;(push 'wikitext-mode my-el-get-packages)
;(push 'csharp-mode my-el-get-packages)

;; version control
(push 'dsvn my-el-get-packages)
(push 'magit my-el-get-packages)
(push 'magit-svn my-el-get-packages)
(push 'diff-hl my-el-get-packages)

;; email and news reader
;(push 'gnus my-el-get-packages)
;(push 'bbdb my-el-get-packages)
;(push 'tc my-el-get-packages ) ;; trivial cite
;(push 'gnus-notify my-el-get-packages)

(push 'spotify.el my-el-get-packages)

;; END PACKAGE LIST for el-get

;; install missing packages from list above
(el-get 'sync my-el-get-packages)
;; remove everything not in the list above
(el-get-cleanup my-el-get-packages)

;; --------------------------
;; --- Start emacs server ---
;; --------------------------

(server-start)

;; ---------------------------------------------------
;; --- Load theme and override faces via customize ---
;; ---------------------------------------------------

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diff-refine-added ((t (:inherit magit-diff-added-highlight :background "#22aa22"))))
 '(diff-refine-removed ((t (:inherit magit-diff-removed-highlight :background "#aa2222"))))
 '(lsp-ui-sideline-global ((t (:background "gray8")))))

(load-theme 'grandshell t)
(load-theme 'mytheme t)

(defun my-presentation-font ()
  "Set the default font to be BIG (for presentations)."
  (interactive)
  (set-face-font 'default "-*-terminus-medium-r-*-*-28-*-*-*-*-*-*-*"))

(defun my-presentation-light-font ()
  "Set the default font to be BIG (for presentations) and switch to light theme."
  (interactive)
  (set-face-font 'default "-*-terminus-medium-r-*-*-28-*-*-*-*-*-*-*")
  (disable-theme 'mytheme)
  (disable-theme 'grandshell)
  (load-theme 'leuven t))

;; -----------------------------------
;; --- Load some custom extensions ---
;; -----------------------------------

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; --- set up hunspell for flyspell-mode ---

(setq ispell-program-name "/usr/bin/hunspell")

(setq ispell-local-dictionary-alist
      '(("en_US" ; Yankee English
         "[[:alpha:]]" "[^[:alpha:]]" "[']" t ("-d" "en_US") nil utf-8)
        ("en_GB" ; British English
         "[[:alpha:]]" "[^[:alpha:]]" "[']" t ("-d" "en_GB") nil utf-8)
        ("de_DE"
         "[a-zäöüßA-ZÄÖÜ]" "[^a-zäöüßA-ZÄÖÜ]" "['-]" t ("-d" "de_DE") nil utf-8)
        )
      )
(setq ispell-local-dictionary "en_US")


;; --- simple generic-mode for structures wiki notes ---

(require 'generic-x)

(defface my-title-text-face
  '((t (:foreground "Cyan1" :weight bold)))
  "My custom face for wiki note titles")

(define-generic-mode 'notes-mode
  '("#")                            ; comments start with '#'
  '()                               ; keywords
  '(("^\\(Titel\\)=\\(.*\\)" (1 'font-lock-type-face) (2 'my-title-text-face))
    ("^\\(.*\\)=\\(.*\\)" (1 'font-lock-type-face) (2 'font-lock-variable-name-face))
    )
  '("\\.txw$")                        ;; files for which to activate this mode
  ()                                 ;; other functions to call
  "A mode for structured wiki-like notes"
)

;; --- org-mode customizations ---

(add-hook 'org-mode-hook
          (lambda ()
            (require 'ox-bibtex)
            (require 'ox-extra)
            (ox-extras-activate '(ignore-headlines))
            (setq org-latex-pdf-process (list "latexmk -f -pdf %f"))
            (local-unset-key [(meta shift up)])
            (local-unset-key [(meta shift down)])
            (local-set-key [(control shift up)] 'org-move-subtree-up)
            (local-set-key [(control shift down)] 'org-move-subtree-down)
            (local-set-key [(control shift left)] 'org-promote-subtree)
            (local-set-key [(control shift right)] 'org-demote-subtree)
            (local-set-key [(control return)] 'org-insert-subheading)
            ))

(setq org-default-notes-file "~/synca/01-OrgTassen/TODO.org")

(global-set-key (kbd "<f1>") 'org-todo-list)
(global-set-key (kbd "\C-cc") 'org-capture)

;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((sql . t) (shell . t)))

;; save the clock history across Emacs sessions
(org-clock-persistence-insinuate)

;; -- load Dired+ when dired is loaded

(require 'dired-copy-paste)

(define-key dired-mode-map "\C-w" 'dired-copy-paste-do-cut)
(define-key dired-mode-map "\M-w" 'dired-copy-paste-do-copy)
(define-key dired-mode-map "\C-y" 'dired-copy-paste-do-paste)

(require 'dired-fixups)

(defun my-dired-mouse-find-file (event)
  "In dired, visit the file or directory name you click on."
  (interactive "e")
  (let (window pos file)
    (save-excursion
      (setq window (posn-window (event-end event))
            pos (posn-point (event-end event)))
      (if (not (windowp window))
          (error "No file chosen"))
      (set-buffer (window-buffer window))
      (goto-char pos)
      (setq file (dired-get-file-for-visit)))
    (if (file-directory-p file)
        (or (and (cdr dired-subdir-alist)
                 (dired-goto-subdir file))
            (progn
              (select-window window)
              (dired file)))
      (select-window window)
      (find-file (file-name-sans-versions file t)))))

(defun set-my-dired-keys-hook ()
  "My favorite dired keys."
  ; for some reason mouse-2 = left click (mouse-1)
  (define-key dired-mode-map [mouse-2] 'my-dired-mouse-find-file)
  (define-key dired-mode-map [M-mouse-2] 'diredp-mouse-find-file-other-frame)
  ; backspace
  (define-key dired-mode-map [backspace] 'dired-up-directory)
)

(add-hook 'dired-mode-hook 'set-my-dired-keys-hook)

;; whitespace cleaning butler mode
(require 'ws-butler)
(ws-butler-global-mode 1)

;; cap'n'proto

(autoload 'capnp-mode "capnp-mode" "Capnp Mode" t)

(add-to-list 'auto-mode-alist '("\\.capnp$" . capnp-mode))

;; load ag
(require 'ag)

;; avy-jump
(global-set-key (kbd "C-c j") 'avy-goto-char-timer)
(setq avy-keys '(?u ?i ?a ?e ?o ?s ?n ?r ?t ?d ?y))

;; -------------------------------
;; --- Automatic Mode Triggers ---
;; -------------------------------

; cperl-mode is preferred to perl-mode
(defalias 'perl-mode 'cperl-mode)

; special web site scripts
(add-to-list 'auto-mode-alist '("\\.htt\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.blog\\'" . html-mode))

; perl XS extensions recognition
(add-to-list 'auto-mode-alist '("\\.xs\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.pc\\'" . c++-mode))

; some more c++ files
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.tcc\\'" . c++-mode))

; rust
;(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;(add-to-list 'auto-mode-alist '("\\.wiki\\'" . wikitext-mode))

; doxygen mode
(defun my-dox-mode ()
  "Add some latex macro keys"
  (interactive)
  (c++-mode)
  (visual-line-mode 1)
  (flyspell-mode)
  (set-variable 'fill-column 100000)
)
(add-to-list 'auto-mode-alist '("\\.dox\\'" . my-dox-mode))

; customize markdown mode
; doxygen mode
(defun my-markdown-mode ()
  "Customize markdown mode"
  (interactive)
  (visual-line-mode 1)
  (flyspell-mode)
  (set-variable 'fill-column 100000)
)
(add-hook 'markdown-mode-hook 'my-markdown-mode)

(folding-add-to-marks-list 'lua-mode "-- {{{" "-- }}}" nil t)

;; -----------------------------
;; --- General Customization ---
;; -----------------------------

;; put all temporary files into /tmp
(defconst emacs-tmp-dir (format "%s/%s%s/" temporary-file-directory "emacs" (user-uid)))
(setq backup-directory-alist `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix emacs-tmp-dir)
(setq tramp-auto-save-directory emacs-tmp-dir)
(setq tramp-persistency-file-name (format "%s/tramp" emacs-tmp-dir))
(setq image-dired-dir (format "%s/image-dired" emacs-tmp-dir))

;; turn on paren matching
(show-paren-mode t)
(setq show-paren-style 'mixed)

;; disable toolbar
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;; make all "yes or no" prompts show "y or n" instead
(fset 'yes-or-no-p 'y-or-n-p)

;; hook for cperl-mode to automatically set my favorite style
;;(add-hook 'cperl-mode-hook (lambda () (cperl-set-style "C++")))

;; "filename [mode]" in title bar
(setq frame-title-format '("%f [mode: %m]"))

;; in every buffer, the line which contains the cursor will be fully highlighted
;(global-hl-line-mode 1)
;; enable inline images:
;(iimage-mode)

; load browse-kill-ring and bind it to M-y if previous command wasn't a yank
(require 'browse-kill-ring)
(browse-kill-ring-default-keybindings)

;; --------------------------------
;; --- Some custom key bindings ---
;; --------------------------------

(global-set-key "\M-g" 'goto-line)

; quick comment and uncommenting
(global-set-key (kbd "C-c SPC") 'comment-or-uncomment-region)

; kills all them buffers except scratch.
(defun nuke-all-buffers ()
  "kill all buffers, leaving *scratch* only"
  (interactive)
  (mapcar (lambda (x) (kill-buffer x)) (buffer-list))
  (delete-other-windows))

(global-set-key (kbd "C-x K") 'nuke-all-buffers)

; magit status

(global-set-key (kbd "<C-f12>") 'magit-status)

;; auto-load magit extensions when configured in the repo
;; (for svn, this is `git config --add magit.extension svn`)
(add-hook 'magit-mode-hook 'magit-load-config-extensions)

;; Git-Commit-Mode: flyspell
(add-hook 'git-commit-mode-hook 'turn-on-flyspell)

; svn integration

;; (autoload 'svn-status "dsvn" "Run `svn status'." t)
;; (autoload 'svn-update "dsvn" "Run `svn update'." t)
;; (global-set-key (kbd "<C-f11>") 'svn-status)

; go to last edit point

(global-set-key [(ctrl meta l)] 'goto-last-change)

; bind Backspace and Delete keys with M- and C- to special kill functions

(defun dove-backward-kill-word (&optional arg)
  "Backward kill word, but do not insert it into kill-ring"
  (interactive "P")
  (let (( end (point) )
        ( beg (progn (backward-word arg) (point)))
        )
    (delete-region beg end)
    )
  )

(defun dove-forward-kill-word (&optional arg)
  "Backward kill word, but do not insert it into kill-ring"
  (interactive "P")
  (let (( beg (point) )
        ( end (progn (forward-word arg) (point)))
        )
    (delete-region beg end)
    )
  )

(global-set-key [(meta backspace)] 'backward-kill-word)
(global-set-key [(control backspace)] 'dove-backward-kill-word)
(global-set-key [(meta delete)] 'kill-word)
(global-set-key [(control delete)] 'dove-forward-kill-word)

;; spotify
(global-set-key (kbd "<XF86AudioPlay>") 'spotify-playpause)
(global-set-key (kbd "<XF86AudioPause>") 'spotify-playpause)

(global-set-key "\C-e" 'delete-region)

;; hippie-expand is dabbrev expand on steroids

(global-set-key "\M-/" 'hippie-expand)

(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list
        try-expand-line
        ggtags-try-complete-tag))


;; special bindings for latex quickies

(defun my-latex-key-bindings ()
  "Add some latex macro keys"
  (interactive)
  (turn-on-reftex)
  (visual-line-mode 1)
  (local-set-key "\C-\M-o" (lambda () (interactive) (insert "\\operatorname{")))
  (local-set-key [M-S-down] (lambda () (interactive) (reftex-toc)))
  (local-set-key "\C-\M-r" (lambda () (interactive) (reftex-reference)))
  (local-set-key "\C-\M-c" (lambda () (interactive) (reftex-citation)))
  ;; show frames in section list -> very useful for beamer presentations
  (setq reftex-section-levels
        (cons '("begin{frame}" . 3) reftex-section-levels))
  ;; The following makes \C-c\C-c not ask, just do the default action. Adds C-c-a for asking
  (setq TeX-command-force "LaTeX")
  ;; 'a' for ask, change to anything you want
  (local-set-key "\C-c\C-a" (lambda (arg) (interactive "P")
                            (let ((TeX-command-force nil)) (TeX-command-master arg))))
  ;; auto folding of tikzpicture and algorithm environments in tex files
  (TeX-fold-mode 0)
  (add-hook 'find-file-hook 'TeX-fold-buffer t)
)

(add-hook 'tex-mode-hook 'my-latex-key-bindings)
(add-hook 'latex-mode-hook 'my-latex-key-bindings)
(add-hook 'TeX-mode-hook 'my-latex-key-bindings)
(add-hook 'LaTeX-mode-hook 'my-latex-key-bindings)

(add-to-list 'auto-mode-alist '("\\.tikz$" . latex-mode))

;; enable google-this mode

;; google this word
;; default keymap: C-c / [key], where key is
;; RET -> interactive query
;; w -> google word under cursor
;; s -> google symbol under cursor

;(google-this-mode 1)
;; hide "Google" minor mode
;(diminish 'google-this-mode)

;; -----------------------------
;; --- reftex customizations ---
;; -----------------------------

;; disable query for \ref or \pageref style
(setq reftex-ref-macro-prompt nil)

;; additional label styles
(setq reftex-label-alist
      '(
        ("theorem"   ?t "thm:" "~\\ref{%s}" t   ("theorem"   "th.") -2)
        ("lemma"     ?t "lem:" "~\\ref{%s}" t   ("lemma"     "lem") -2)
        ("algorithm" ?a "alg:" "~\\ref{%s}" t   ("algorithm" "alg") -2)
        ))

;; --------------------
;; --- flymake mode ---
;; --------------------

(eval-after-load "flymake"
  '(progn
     ;; compile tex using pdflatex
     (defun flymake-get-tex-args (file-name)
       (list "~/.emacs.d/flymake-pdflatex" (list "-file-line-error" "-interaction=nonstopmode" "-shell-escape" file-name)))

     ;; severe logging
     ;(setq flymake-log-level 9)

     ;; changes timeout
     (setq flymake-no-changes-timeout 5)

     ;; dont run on enters
     (setq flymake-start-syntax-check-on-newline nil)

     ;; scan complete files for matching include lines
     (setq flymake-check-file-limit nil)

     ;; fixes unbalanced braces in LaTeX files
     (push '("^\\(.*?\.tex\\):\\([0-9]*?\\):\\(.*?\\):\\(.*?\\)" nil 2 3 4) flymake-err-line-patterns)
     (push '("^\\(.*?\.tikz\\):\\([0-9]*?\\):\\(.*?\\):\\(.*?\\)" nil 2 3 4) flymake-err-line-patterns)
     (push '("Runaway argument?" nil nil nil) flymake-err-line-patterns)
     (push '("Emergency stop." nil nil nil) flymake-err-line-patterns)
     (push '("Package tikz Error:" nil nil nil) flymake-err-line-patterns)

     ;; disable master search for numeric endings
     (setq flymake-allowed-file-name-masks
           (delete '("[0-9]+\\.tex\\'" flymake-master-tex-init flymake-master-cleanup)
                   flymake-allowed-file-name-masks)) ; don't use multipart tex files

     ;; enable master search for -fig.tex endings
     (add-to-list 'flymake-allowed-file-name-masks
                  '("fig\\.tex\\'" flymake-master-tex-init flymake-master-cleanup))

     (add-to-list 'flymake-allowed-file-name-masks
                  '("\\.tikz\\'" flymake-master-tex-init flymake-master-cleanup))
     ))

;; -----------------------------
;; --- bm line bookmark mode ---
;; -----------------------------

(global-set-key (kbd "<M-f2>") 'bm-toggle)
(global-set-key (kbd "<f2>")   'bm-next)
(global-set-key (kbd "<S-f2>") 'bm-previous)

;; ------------------------
;; --- Smooth Scrolling ---
;; ------------------------

;; Scroll line by line
(setq redisplay-dont-pause t)
;; number of lines at the top and bottom of a window.
(setq scroll-margin 2)
;; Controls if scroll commands move point to keep its screen position unchanged.
(setq scroll-preserve-screen-position nil)

(require 'smooth-scrolling)
 ;; four line at a time
(setq mouse-wheel-scroll-amount '(4 ((shift) . 4)))
 ;; accelerate scrolling
(setq mouse-wheel-progressive-speed 't)
 ;; scroll window under mouse
(setq mouse-wheel-follow-mouse 't)
;; keyboard scroll four line at a time
(setq scroll-step 4)
;; number of lines at the top and bottom of a window.
(setq smooth-scroll-margin 3)
(setq smooth-scroll-strict-margins 't)

;; terminal mouse support
(when (eq window-system nil)
    (xterm-mouse-mode t))

;; ---------------------------------
;; --- Window Movement Shortcuts ---
;; ---------------------------------

(require 'windmove)
(windmove-default-keybindings)

(global-set-key [M-left] 'windmove-left)          ; move to left windnow
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to downer window

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; -------------------
;; --- rebox2 mode ---
;; -------------------

(require 'rebox2)

;; customisation of rebox
(rebox-register-template
 71 999 '("??! box123456"))

(rebox-register-template
 272 999
 '("/*!"
   " * box123456"
   " */"))

;; set styles
(setq rebox-style-loop '(71 272))

;; --------------------------------
;; --- C/C++ Mode Configuration ---
;; --------------------------------

(defun tb-c-common-hook ()
  ;; switch between .cpp/.hpp files
  (local-set-key [f3] 'ff-find-other-file)

  ;; gnu global tag lookup
  ;(ggtags-mode 1)

  ;; use rebox2 mode
  (local-set-key [(shift meta q)] 'rebox-cycle)

  ;; flyspell mode for comments
  (flyspell-prog-mode)

  ;; org-table mode support for comments
  (orgtbl-mode)

  ;; add C++11 keywords to font-lock
  (require 'modern-cpp-font-lock)
  (modern-c++-font-lock-mode)

  ;; hide "mc++fl" minor mode
  (diminish 'modern-c++-font-lock-mode)

  ;; run clang-format on C-tab
  (local-set-key [(ctrl tab)] 'clang-format-buffer)
  ;; use clang-format for region indent
  (when (locate-dominating-file "." ".clang-format")
    (fset 'c-indent-region 'clang-format-region))

  ;; ------------------------------------------------------------
  ;; add keywords for Qt code (signals, slots, and some Q_ macros

  (setq c-protection-key
        (concat "\\<\\(public\\|public slot\\|protected"
                "\\|protected slot\\|private\\|private slot"
                "\\)\\>")
        c-C++-access-key
        (concat "\\<\\(signals\\|public\\|protected\\|private"
                "\\|public slots\\|protected slots\\|private slots"
                "\\)\\>[ \t]*:"))

  ;; modify the colour of slots to match public, private, etc ...
  (font-lock-add-keywords
   'c++-mode '(("\\<\\(slots\\|signals\\)\\>" . font-lock-type-face)))
  ;; make new font for rest of qt keywords
  (make-face 'qt-keywords-face)
  (set-face-foreground 'qt-keywords-face "MediumPurple")
  ;; qt keywords
  (font-lock-add-keywords 'c++-mode '(("\\<Q_[A-Z]*\\>" . 'qt-keywords-face)))
  (font-lock-add-keywords 'c++-mode '(("\\<SIGNAL\\|SLOT\\>" . 'qt-keywords-face)))

  ;; ---[ end Qt code ]------------------------------------------
)

(add-hook 'c-mode-common-hook 'tb-c-common-hook)

;; mark 80th column on some modes

(add-hook 'c-mode-common-hook (lambda () (column-marker-1 80)))
(add-hook 'cmake-mode-hook (lambda () (column-marker-1 80)))

;; ---------------------------
;; --- CEDET Configuration ---
;; ---------------------------

;; select which submodes we want to activate

; activates CEDET's context menu that is bound to right mouse button;
;(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode)
; activates use of separate styles for tags decoration
;(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)
; activates highlighting of first line for current tag (function, class, etc.);
;(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
; activates displaying of possible name completions in the idle time
;(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)
; activates highlighting of local names that are the same as name of tag under cursor
; (add-to-list 'semantic-default-submodes 'global-semantic-idle-local-symbol-highlight-mode)
; activates automatic parsing of source code in the idle time
;(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
; enables automatic bookmarking of tags that you edited
;(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
;(add-to-list 'semantic-default-submodes 'global-semantic-show-parser-state-mode)
; shows which elements weren't processed by current parser's rules;
;(add-to-list 'semantic-default-submodes 'global-semantic-show-unmatched-syntax-mode)
; activates mode when name of current tag will be shown in top line of buffer;
;(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
; enables global support for Semanticdb
;(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
;(add-to-list 'semantic-default-submodes 'global-semantic-idle-breadcrumbs-mode)
; activates displaying of information about current tag in the idle time.
;(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
; shows changes in the text that weren't processed by incremental parser yet.
;(add-to-list 'semantic-default-submodes 'global-semantic-highlight-edits-mode)

;; (setq qt4-base-dir "/usr/include/qt4")

;; (defvar semantic-lex-c-preprocessor-symbol-file '())
;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file (concat qt4-base-dir "/Qt/qconfig.h"))
;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file (concat qt4-base-dir "/Qt/qconfig-large.h"))
;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file (concat qt4-base-dir "/Qt/qglobal.h"))

;; ;; Activate semantic
;; (setq semanticdb-default-save-directory "~/.cache/emacs/semanticdb/")
;; (semantic-mode 1)

; load semantic databases
;; (require 'semantic/ia)
;; (require 'semantic/bovine/gcc) ; or depending on you compiler

;; if you want to enable support for gnu global
;(semanticdb-enable-gnu-global-databases 'c-mode)
;(semanticdb-enable-gnu-global-databases 'c++-mode)

; load eassist
;(add-to-list 'load-path "~/.emacs.d/el-get/cedet/contrib")
;(require 'eassist)

;; enable ctags for some languages:
;;  Unix Shell, Perl, Pascal, Tcl, Fortran, Asm
;(when (cedet-ectag-version-check)
;  (semantic-load-enable-primary-exuberent-ctags-support))

;; (setq-mode-local c-mode semanticdb-find-default-throttle
;;                  '(project unloaded system recursive))

;; customisation of modes
(defun my-cedet-hook ()
  ;; SRecode
  ;(global-srecode-minor-mode 1)

  ;; add knowledge of qt to emacs
  ;; (semantic-add-system-include qt4-base-dir 'c++-mode)
  ;; (semantic-add-system-include (concat qt4-base-dir "/Qt") 'c++-mode)
  ;; (semantic-add-system-include (concat qt4-base-dir "/QtGui") 'c++-mode)
  ;; (semantic-add-system-include (concat qt4-base-dir "/QtCore") 'c++-mode)
  ;; (semantic-add-system-include (concat qt4-base-dir "/QtTest") 'c++-mode)
  ;; (semantic-add-system-include (concat qt4-base-dir "/QtNetwork") 'c++-mode)
  ;; (semantic-add-system-include (concat qt4-base-dir "/QtSvg") 'c++-mode)

  ;; ;; whatever the symbol you are typing, this hot key automatically complete it for you.
  ;; (local-set-key [(control return)] 'semantic-ia-complete-symbol-menu)
  ;; ;; another way to complete the symbol you are typing
  ;; (local-set-key "\C-c?" 'semantic-ia-complete-symbol)

  ;; ;; when you typed . or -> after an object name, use this key to show possible public member functions or data members.
  ;; (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
  ;; ;; visit the header file under cursor
  ;; (local-set-key "\C-c=" 'semantic-decoration-include-visit)

  ;;
  ;; load eassist contrib library
  ;(local-set-key "\C-ct" 'eassist-switch-h-cpp)
  ;(local-set-key "\C-xt" 'eassist-switch-h-cpp)
  ;(local-set-key "\C-ce" 'eassist-list-methods)
  ;;
  ;; (local-set-key "\C-cr" 'semantic-symref)
  ;; ;; rename local variable under cursor
  ;; (local-set-key "\C-c\C-r" 'semantic-symref-rename-local-variable)

  ;; jump to the definition of the symbol under cursor
  ;(local-set-key "\C-c<" 'semantic-ia-fast-jump)
  ;;  show the document of the symbol under cursor
  ;(local-set-key "\C-cq" 'semantic-ia-show-doc)
  ;; show a summary about the symbol under cursor
  ;(local-set-key "\C-cs" 'semantic-ia-show-summary)
  ;; toggle between the implementation and a prototype of symbol under cursor
  ;(local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)

  ;; unfold the block under cursor
  ;(local-set-key "\C-c+" 'semantic-tag-folding-show-block)
  ;; fold the block under cursor
  ;(local-set-key "\C-c-" 'semantic-tag-folding-fold-block)
  ;; unfold all
  ;(local-set-key "\C-c\C-c+" 'semantic-tag-folding-show-all)
  ;; fold all
  ;(local-set-key "\C-c\C-c-" 'semantic-tag-folding-fold-all)

  ;; show emacs code browser
  ;(local-set-key "\C-cb" 'ecb-activate)

  ;; auto-complete integration
  ;(add-to-list 'ac-sources 'ac-source-gtags)
  ;(add-to-list 'ac-sources 'ac-source-semantic)
  ;(add-to-list 'ac-sources 'ac-source-c-headers)

  ;; change paragraph definition to correctly wrap doxygen \param and \tparam
  ;; lines.
  (setq paragraph-start "\\(//+[!]?\\|\\**\\)[ ]*\\([ ]*$\\|[@\\\\]\\(param\\|tparam\\|return\\|pre\\)\\)\\|\f")
  )

; (add-hook 'c-mode-common-hook 'my-cedet-hook)
(add-hook 'lisp-mode-hook 'my-cedet-hook)
(add-hook 'scheme-mode-hook 'my-cedet-hook)
(add-hook 'emacs-lisp-mode-hook 'my-cedet-hook)
(add-hook 'erlang-mode-hook 'my-cedet-hook)

;; --------------------------------
;; --- ECB - Emacs Code Browser ---
;; --------------------------------

;; (setq ecb-tip-of-the-day nil) ;; no ecb tip of the day
;; (setq stack-trace-on-error t)

(require 'lsp)
(require 'lsp-ui)
(require 'lsp-clients)
(setq lsp-prefer-flymake :none) ; disable flycheck/flymake

(require 'company-capf)
(global-set-key (kbd "M-RET") 'completion-at-point)
(global-set-key (kbd "<f12>") 'lsp-find-definition)
(global-set-key (kbd "<S-f12>") 'lsp-find-references)

(add-hook 'c++-mode-hook 'lsp)
(add-hook 'c-mode-hook 'lsp)

;; --------------------
;; --- ido and smex ---
;; --------------------

(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(add-to-list 'ido-ignore-files "\.synctex\.gz")
; org before tex before pdf before others
(setq ido-file-extensions-order '(".org" ".tex" ".pdf"))

; enable ido everywhere
(require 'ido-completing-read+)
(ido-ubiquitous-mode 1)
(setq magit-completing-read-function 'magit-ido-completing-read)

; configure smex
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; ---------------------
;; --- auto-complete ---
;; ---------------------

;(require 'auto-complete-config)
;(ac-config-default)

;; never start automatically
;(setq ac-auto-start nil)
;; trigger auto-complete on TAB
;(ac-set-trigger-key "TAB")

;; -----------------
;; --- yasnippet ---
;; -----------------

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets/"                      ;; personal snippets
        "~/.emacs.d/yasnippet-snippets/snippets"    ;; default snippets
        ))

(require 'yasnippet)
(yas-reload-all)
(yas-global-mode 1)

;; --------------------
;; --- Java support ---
;; --------------------

(add-hook 'java-mode-hook '(lambda () (setq tab-width 4)))

;; -------------------------------------
;; --- OpenWith program associations ---
;; -------------------------------------

(setq openwith-associations '())

(add-to-list 'openwith-associations '("\\.pdf\\'" "evince" (file)))
(add-to-list 'openwith-associations '("\\.ods\\'" "libreoffice" (file)))
(add-to-list 'openwith-associations '("\\.xls\\'" "libreoffice" (file)))
(add-to-list 'openwith-associations '("\\.odt\\'" "libreoffice" (file)))
(add-to-list 'openwith-associations '("\\.doc\\'" "libreoffice" (file)))

;; ------------------------------
;; --- Compile CMake Projects ---
;; ------------------------------

(require 'compile)
(setq compilation-disable-input nil)
(setq compilation-last-buffer nil)
(setq compilation-scroll-output t)
(setq mode-compile-always-save-buffer-p t)

(defun my-compile (pfx)
  "Saves all unsaved buffers, and runs 'compile' with optional ede project customization."
  (interactive "p")
  ;; save buffers
  (save-some-buffers t)
  ;; if a compilation buffer already exists: switch and recompile
  (if (buffer-live-p compilation-last-buffer)
      (recompile)
    ;; else figure out whether the current directory has an ede-project
    (let* ((fname (or (buffer-file-name (current-buffer)) default-directory))
           (current-dir (file-name-directory fname))
           (proj (ede-current-project current-dir)))
      (if proj
          (project-compile-project proj)
        (call-interactively 'compile)))
    ))

(global-set-key [f5] 'my-compile)

;; -----------------------------------
;; --- Grand Unified Debugger mode ---
;; -----------------------------------

(add-hook 'gud-mode-hook
          (lambda ()
            (define-key gud-mode-map [f4] 'gud-run)
            (define-key gud-mode-map [f5] 'gud-step)
            (define-key gud-mode-map [f6] 'gud-next)
            (define-key gud-mode-map [f7] 'gud-until)
            (define-key gud-mode-map [f8] 'gud-finish)
            ))

;; --------------------------
;; --- Processing Hotkeys ---
;; --------------------------

;(defun processing-mode-init ()
;  (local-set-key [f5] 'processing-sketch-run)
;  )

;(add-hook 'processing-mode-hook 'processing-mode-init)

;; ------------------------
;; --- Multiple Cursors ---
;; ------------------------

(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)
(global-set-key (kbd "C-c !") 'mc/mark-all-dwim)

(add-hook 'multiple-cursors-mode-hook
          (lambda ()
            (define-key mc/keymap (kbd "<return>") nil)
            ))

;; --------------------------
;; --- Make eshell Usable ---
;; --------------------------

(define-key comint-mode-map (kbd "<up>") 'comint-previous-input)
(define-key comint-mode-map (kbd "<down>") 'comint-next-input)

;; ----------------------------------------
;; --- CamelCase to snake_case and back ---
;; ----------------------------------------

(defun split-name (s)
  (split-string
   (let ((case-fold-search nil))
     (downcase
      (replace-regexp-in-string "\\([a-z]\\)\\([A-Z]\\)" "\\1 \\2" s)))
   "[^A-Za-z0-9]+"))

(defun camelcase  (s) (mapconcat 'capitalize (split-name s) ""))
(defun underscore (s) (mapconcat 'downcase   (split-name s) "_"))

(defun camelscore (s)
  (cond ((string-match-p "-" s)         (colonize s))
        ((string-match-p "_" s)	        (dasherize s))
        (t                              (underscore s))))

(defun camelscore-word-at-point ()
  (interactive)
  (let* ((case-fold-search nil)
         (beg (and (skip-chars-backward "[:alnum:]_") (point)))
         (end (and (skip-chars-forward  "[:alnum:]_") (point)))
         (txt (buffer-substring beg end))
         (cml (camelscore txt)) )
    (if cml (progn (delete-region beg end) (insert cml))) ))

;; ------------------------------------------------
;; --- Increment and Decrement Numbers at Point ---
;; ------------------------------------------------
;; from http://www.emacswiki.org/emacs/IncrementNumber

(defun increment-number-decimal (&optional arg)
  "Increment the number forward from point by 'arg'."
  (interactive "p*")
  (save-excursion
    (save-match-data
      (let (inc-by field-width answer)
        (setq inc-by (if arg arg 1))
        (skip-chars-backward "0123456789")
        (when (re-search-forward "[0-9]+" nil t)
          (setq field-width (- (match-end 0) (match-beginning 0)))
          (setq answer (+ (string-to-number (match-string 0) 10) inc-by))
          (when (< answer 0)
            (setq answer (+ (expt 10 field-width) answer)))
          (replace-match (format (concat "%0" (int-to-string field-width) "d")
                                 answer)))))))

(defun decrement-number-decimal (&optional arg)
  (interactive "p*")
  (increment-number-decimal (if arg (- arg) -1)))

(defun increment-number-hexadecimal (&optional arg)
  "Increment the number forward from point by 'arg'."
  (interactive "p*")
  (save-excursion
    (save-match-data
      (let (inc-by field-width answer hex-format)
        (setq inc-by (if arg arg 1))
        (skip-chars-backward "0123456789abcdefABCDEF")
        (when (re-search-forward "[0-9a-fA-F]+" nil t)
          (setq field-width (- (match-end 0) (match-beginning 0)))
          (setq answer (+ (string-to-number (match-string 0) 16) inc-by))
          (when (< answer 0)
            (setq answer (+ (expt 16 field-width) answer)))
          (if (equal (match-string 0) (upcase (match-string 0)))
              (setq hex-format "X")
            (setq hex-format "x"))
          (replace-match (format (concat "%0" (int-to-string field-width)
                                         hex-format)
                                 answer)))))))

(defun decrement-number-hexadecimal (&optional arg)
  (interactive "p*")
  (increment-number-hexadecimal (if arg (- arg) -1)))

;; -------------------------------------------
;; --- Custom Minor Mode for Global Keymap ---
;; -------------------------------------------

;; http://emacs.stackexchange.com/questions/352/how-to-override-major-mode-bindings

(defvar my-keymap-mode-map (make-sparse-keymap)
  "Keymap while my-keymap-mode is active.")

(define-minor-mode my-keymap-mode
  "A minor mode so that my key settings override annoying major modes."
  nil
  :lighter ""
  my-keymap-mode-map)

(defadvice load (after give-my-keybindings-priority)
  "Try to ensure that my keybindings always have priority."
  (if (not (eq (car (car minor-mode-map-alist)) 'my-keymap-mode))
      (let ((mykeys (assq 'my-keymap-mode minor-mode-map-alist)))
        (assq-delete-all 'my-keymap-mode minor-mode-map-alist)
        (add-to-list 'minor-mode-map-alist mykeys))))
(ad-activate 'load)

(defun turn-on-my-keymap-mode ()
  "Turns on my-keymap-mode."
  (interactive) (my-keymap-mode t))

(defun turn-off-my-keymap-mode ()
  "Turns off my-keymap-mode."
  (interactive) (my-keymap-mode -1))

;; ---- list of global key bindings ----

;; ag- or rgrep-based project-wide search
(defun my-ag-grep ()
  "Launch ag or grep in current directory."
  (interactive)
  (if
      ;; if buffer is under tramp
      (file-remote-p default-directory)
      ;; call rgrep for remote buffers
      (call-interactively 'rgrep)
    ;; call ag for local buffers
    (call-interactively 'ag)
    )
  )
(define-key my-keymap-mode-map (kbd "C-c C-s") 'my-ag-grep)

;; window handling
(define-key my-keymap-mode-map "\M-`" 'delete-other-windows)
(define-key my-keymap-mode-map "\M-2" 'make-frame)
(define-key my-keymap-mode-map "\M-3" 'delete-frame)

;; loading the buffer list
;(define-key my-keymap-mode-map [C-x C-b] 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(define-key my-keymap-mode-map [M-S-up] 'ibuffer)

;; fast nagivation in buffer stack
(define-key my-keymap-mode-map [M-S-left] 'previous-buffer)
(define-key my-keymap-mode-map [M-S-right] 'next-buffer)

;; F4 -> launch a terminal (just about anywhere)
(defun my-terminal (&optional arg)
  "Launch terminal in current directory."
  (interactive)
  ;(start-process "terminal" "*scratch*" "/usr/bin/gnome-terminal")
  (if
      ;; if buffer is under tramp
      (file-remote-p default-directory)
      (shell)
    (start-process "terminal" nil "gnome-terminal")
    ;(call-process "gnome-terminal" nil 0 nil)
    )
)

(defun my-file-manager (&optional arg)
  "Launch file-manager in current directory."
  (interactive)
  (if
      ;; if buffer is under tramp
      (file-remote-p default-directory)
      (dired default-directory)
    (start-process "file-manager" nil "xdg-open" default-directory)
    ;;(call-process "xdg-open" nil 0 nil default-directory)
    )
)
(define-key my-keymap-mode-map [f4] 'my-terminal)
(define-key my-keymap-mode-map [C-f4] 'my-file-manager)

;; C-\\ -> iedit mode
(define-key my-keymap-mode-map (kbd "C-\\") 'iedit-mode)

;; globally activate keymap
(define-globalized-minor-mode
  global-my-keymap-mode my-keymap-mode turn-on-my-keymap-mode)

(global-my-keymap-mode)

;; Turn off the minor mode in the minibuffer
(add-hook 'minibuffer-setup-hook 'turn-off-my-keymap-mode)

;; modify ibuffer keymap: mouse click opens a file
(defun my-ibuffer-keys ()
  "Modify keymaps used by `ibuffer'."
  (local-set-key (kbd "<down-mouse-1>") 'ibuffer-visit-buffer)
  )

(add-hook 'ibuffer-hook 'my-ibuffer-keys)
(add-hook 'ibuffer-hook '(lambda ()
                           (ibuffer-vc-set-filter-groups-by-vc-root)
                           (ibuffer-auto-mode 1)))

;; -------------------------------
;; --- Less Latency with Tramp ---
;; -------------------------------

(defvar disable-tramp-backups '(all))

;; (eval-after-load "tramp"
;;   '(progn
;;      (add-to-list 'tramp-remote-path 'tramp-own-remote-path)
;;      ;; Modified from https://www.gnu.org/software/emacs/manual/html_node/tramp/Auto_002dsave-and-Backup.html
;;      (setq backup-enable-predicate
;;            (lambda (name)
;;              (and (normal-backup-enable-predicate name)
;;                   ;; Disable all tramp backups
;;                   (and disable-tramp-backups
;;                        (member 'all disable-tramp-backups)
;;                        (not (file-remote-p name 'method)))
;;                   (not ;; disable backup for tramp with the listed methods
;;                    (let ((method (file-remote-p name 'method)))
;;                      (when (stringp method)
;;                        (member method disable-tramp-backups)))))))

;;      (defun tramp-set-auto-save--check (original)
;;        (if (funcall backup-enable-predicate (buffer-file-name))
;;            (funcall original)
;;          (auto-save-mode -1)))

;;      (advice-add 'tramp-set-auto-save :around #'tramp-set-auto-save--check)

;;      ;; Use my ~/.ssh/config control master settings according to https://puppet.com/blog/speed-up-ssh-by-reusing-connections
;;      (setq tramp-ssh-controlmaster-options "")))

(setq remote-file-name-inhibit-cache nil)
(setq vc-ignore-dir-regexp
      (format "%s\\|%s" vc-ignore-dir-regexp tramp-file-name-regexp))

;; Diff-hl
(require 'diff-hl)
(global-diff-hl-mode)
(require 'diff-hl-dired)
(diff-hl-dired-mode)
; (global-diff-hl-amend-mode)
;; use histogram diff
; (setq vc-git-diff-switches '("--histogram"))
;; Required for magit >= 2.4
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)

;; Trim trailing whitespace in C++ code
(add-hook 'c++-mode-hook
  (lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace))
  (lambda () (setq tab-width 4)))

(require 'highlight-chars)

;; auctex
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(setq TeX-parse-self t) ; Enable parse on load.
(setq TeX-auto-save t) ; Enable parse on save.

;; outline mode
;(global-unset-key "\C-o")
;(setq outline-minor-mode-prefix "\C-o")
(add-hook 'LaTeX-mode-hook #'outline-minor-mode)
;; extra outline headers for fake sections (cf ox-extra's :ignore:)
(setq TeX-outline-extra
      '(("%part" 0)
        ("%chapter" 1)
        ("%section" 2)
        ("%subsection" 3)
        ("%subsubsection" 4)
        ("%paragraph" 5)
        ("%subparagraph" 6)))
;; add font locking to the headers
(font-lock-add-keywords
 'latex-mode
 '(("^%\\(part\\|chapter\\|\\(sub\\|subsub\\)?section\\|\\(sub\\)?paragraph\\)"
    0 'font-lock-keyword-face t)
   ("^%part{\\(.*\\)}"          1 'font-latex-sectioning-0-face t)
   ("^%chapter{\\(.*\\)}"       1 'font-latex-sectioning-1-face t)
   ("^%section{\\(.*\\)}"       1 'font-latex-sectioning-2-face t)
   ("^%subsection{\\(.*\\)}"    1 'font-latex-sectioning-3-face t)
   ("^%subsubsection{\\(.*\\)}" 1 'font-latex-sectioning-4-face t)
   ("^%paragraph{\\(.*\\)}"     1 'font-latex-sectioning-5-face t)
   ("^%subparagraph{\\(.*\\)}"  1 'font-latex-sectioning-5-face t)))
(add-hook
 'LaTeX-mode-hook
 (lambda ()
   (font-latex-add-keywords '(("posscite" "*[[{")) 'reference)
   (font-latex-add-keywords '(("citet" "*[[{")) 'reference)))
;;outline-magic
(eval-after-load 'outline
  '(progn
    (require 'outline-magic)
    (define-key outline-minor-mode-map (kbd "<C-tab>") 'outline-cycle)))

;; Display time
(setq display-time-24hr-format t)
(setq display-time-default-load-average nil)
;;(setq display-time-format "%k:%M")
(display-time-mode t)

(let ((trustfile
       (replace-regexp-in-string
        "\\\\" "/"
        (replace-regexp-in-string
         "\n" ""
         (shell-command-to-string "python -m certifi")))))
  (setq tls-program
        (list
         (format "gnutls-cli%s --x509cafile %s -p %%p %%h"
                 (if (eq window-system 'w32) ".exe" "") trustfile)))
  (setq tls-checktrust t)
  (setq gnutls-verify-error t)
  (setq gnutls-trustfiles (list trustfile)))

(setq require-final-newline t
      load-prefer-newer t
      mouse-yank-at-point t)

;;; DEAL WITH GNOME INTEGRATION
;;; save & shutdown when we get an "end of session" signal on dbus
(require 'dbus)

(defun my-register-signals (client-path)
  "Register for the 'QueryEndSession' and 'EndSession' signals from
Gnome SessionManager.

When we receive 'QueryEndSession', we just respond with
'EndSessionResponse(true, \"\")'.  When we receive 'EndSession', we
append this EndSessionResponse to kill-emacs-hook, and then call
kill-emacs.  This way, we can shut down the Emacs daemon cleanly
before we send our 'ok' to the SessionManager."
  (setq my-gnome-client-path client-path)
  (let ( (end-session-response (lambda (&optional arg)
                                 (dbus-call-method-asynchronously
                                  :session "org.gnome.SessionManager" my-gnome-client-path
                                  "org.gnome.SessionManager.ClientPrivate" "EndSessionResponse" nil
                                  t "") ) ) )
         (dbus-register-signal
          :session "org.gnome.SessionManager" my-gnome-client-path
          "org.gnome.SessionManager.ClientPrivate" "QueryEndSession"
          end-session-response )
         (dbus-register-signal
          :session "org.gnome.SessionManager" my-gnome-client-path
          "org.gnome.SessionManager.ClientPrivate" "EndSession"
          `(lambda (arg)
             (add-hook 'kill-emacs-hook ,end-session-response t)
             (kill-emacs) ) ) ) )

;; DESKTOP_AUTOSTART_ID is set by the Gnome desktop manager when emacs
;; is autostarted.  We can use it to register as a client with gnome
;; SessionManager.
(dbus-call-method-asynchronously
 :session "org.gnome.SessionManager"
 "/org/gnome/SessionManager"
 "org.gnome.SessionManager" "RegisterClient" 'my-register-signals
 "Emacs server" (getenv "DESKTOP_AUTOSTART_ID"))

;; open master file
;(find-file "~/docs/notes/todo.org")
