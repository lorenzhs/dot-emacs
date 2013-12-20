; -*- Lisp -*-

(require 'nnir)

;; basic identity information
(setq user-full-name "Timo Bingmann")
(setq user-mail-address "timo@tbingmann.de")

;; IMAP server
(setq gnus-select-method
      '(nnimap "hmtg"
               (nnimap-address "mail.hmtg.de")
               (nnimap-server-port 993)
               (nnimap-stream ssl)
               (nnimap-authinfo-file "~/.gnus.d/authinfo")
               (nnir-search-engine imap)
               )
      )

;; SMTP server
(setq message-send-mail-function 'smtpmail-send-it
      send-mail-function 'smtpmail-send-it
      smtpmail-default-smtp-server "mail.hmtg.de"
      smtpmail-smtp-server "mail.hmtg.de"
      smtpmail-smtp-service 2401
      smtpmail-stream-type 'ssl
      ;smtpmail-auth-credentials '(("mail.hmtg.de" 2401 "timo@bingmann.com" nil))
      ;smtpmail-local-domain "deka.local"
      ;smtpmail-sendto-domain "deka.local"
      smtpmail-debug-info t ; to debug problems
      )

;; change to openssl client
;(setq imap-ssl-program "openssl s_client -tls1 -connect %s:%p")

;; Summary customizations
(setq-default
  gnus-summary-line-format "%U%R%z %(%&user-date;  %-15,15f  %B%s%)\n"
  gnus-user-date-format-alist '((t . "%Y-%m-%d %H:%M"))
  gnus-summary-thread-gathering-function 'gnus-gather-threads-by-references
  gnus-sum-thread-tree-false-root ""
  gnus-sum-thread-tree-indent ""
  gnus-sum-thread-tree-leaf-with-other "-> "
  gnus-sum-thread-tree-root ""
  gnus-sum-thread-tree-single-leaf "|- "
  gnus-sum-thread-tree-vertical "|")

(setq gnus-thread-sort-functions
      '(
        (not gnus-thread-sort-by-date)
        (not gnus-thread-sort-by-number)
        ))

;; Caching
(setq gnus-use-cache t
      gnus-cache-directory "~/.gnus.d/cache/"
      gnus-cache-enter-articles '(ticked dormant read unread)
      gnus-cache-remove-articles nil
      gnus-cacheable-groups "^INBOX$"
      )

;; Additional modes and keys for message composition
(add-hook 'message-mode-hook
          '(lambda ()
             (flyspell-mode t)
             (turn-on-auto-fill)
             (local-set-key "<TAB>" 'bbdb-complete-name)
             )
          )

;; Makes every group permanently visible:
;(setq gnus-permanently-visible-groups ".*.*")
(setq gnus-permanently-visible-groups "^INBOX$")
;(setq gnus-group-line-format "%P%M%S%5y:%B%(%G%)\n")
        

;; don't ask how many emails to download
(setq gnus-large-newsgroup 'nil)

;; Turn off writing of .newsrc
(setq gnus-save-newsrc-file 'nil
      gnus-home-directory "~/.gnus.d/"

      gnus-always-read-dribble-file t
      gnus-dribble-directory "~/.gnus.d/"

      gnus-directory "~/.gnus.d/news/"
      gnus-kill-files-directory "~/.gnus.d/news/"

      gnus-startup-file "~/.gnus.d/newsrc"

      nntp-authinfo-file "~/.gnus.d/authinfo"
      smtpmail-auth-credentials "~/.gnus.d/authinfo"


      mail-source-directory "~/.gnus.d/mail/"
      message-directory "~/.gnus.d/mail/"
 
      gnus-treat-display-smileys nil

      gnus-message-archive-group "Sent")


(add-hook 'gnus-group-mode-hook
          ;; list all the subscribed groups even they contain zero un-read messages
          (lambda ()
            ;(local-set-key "o" 'my-gnus-group-list-subscribed-groups )
            (menu-bar-mode)
            )
          )

;; Allow sending of messages of unlimited size
(setq message-send-mail-partially-limit nil)


;; Archive sent mail into INBOX
(setq gnus-message-archive-group "INBOX")
(setq gnus-message-archive-method '(nnimap "hmtg"))

;; BBDB: Address list
(require 'bbdb)
(bbdb-initialize 'message 'gnus 'sendmail)

(setq bbdb-file "~/Dropbox/0-Work/bbdb.el")
(add-hook 'gnus-startup-hook 'bbdb-insinuate-gnus)

(setq bbdb/mail-auto-create-p nil
      bbdb/news-auto-create-p nil)

(setq bbdb-default-country "Germany")

;; sort bbdb by (firstname, lastname, organization)
(defun bbdb-record-sortkey (record)
  "Record cache function: Return the sortkey for RECORD. Build and store it if necessary."
  (or (bbdb-cache-sortkey (bbdb-record-cache record))
      (bbdb-cache-set-sortkey (bbdb-record-cache record)
                              (downcase
                               (bbdb-concat "" (bbdb-record-firstname record)
                                            (bbdb-record-lastname record)
                                            (bbdb-record-organization record))))))


;; Additional keys for summary
(defun tb-gnus-summary-mode-hook ()
  "Additional keys for summary mode"
  ;; [a]rchive and [d]elete
  (define-key gnus-summary-mode-map [?d] 'gnus-summary-move-to-trash)
  (define-key gnus-summary-mode-map [?a] 'gnus-summary-move-to-archive)
  ;; switch meaning of N and n, P and p            
  (define-key gnus-summary-mode-map [?n] 'gnus-summary-next-article)
  (define-key gnus-summary-mode-map [?p] 'gnus-summary-prev-article)
  (define-key gnus-summary-mode-map [?N] 'gnus-summary-next-unread-article)
  (define-key gnus-summary-mode-map [?P] 'gnus-summary-prev-unread-article)
  ;; reply keys
  (define-key gnus-summary-mode-map [?r] 'gnus-summary-reply-with-original)
  ;; refresh
  (define-key gnus-summary-mode-map [?g] (lambda () (interactive)
                                           (gnus-summary-rescan-group 'all)
                                           (gnus-summary-first-article)))
)
(add-hook 'gnus-summary-mode-hook 'tb-gnus-summary-mode-hook)

(defun gnus-summary-move-to-trash ()
  "Move this article to the Trash."
  (interactive)
  (gnus-summary-mark-as-read)
  (save-excursion (gnus-summary-mark-as-expirable 1))
  (gnus-summary-move-article nil "nnimap+hmtg:Trash")
  (gnus-summary-next-article)
)

(defun gnus-summary-move-to-archive ()
  "Move this article to the Archive."
  (interactive)
  (gnus-summary-mark-as-read)
  (gnus-summary-move-article nil "nnimap+hmtg:INBOX/00-archive")
  (gnus-summary-next-article)
)

;(defvar bbdb-time-internal-format "%Y-%m-%d"
;  "The internal date format.");
;
;(defun bbdb-timestamp-hook (record)
;  "For use as a `bbdb-change-hook'; maintains a notes-field called `timestamp'
;    for the given record which contains the time when it was last modified.  If
;    there is such a field there already, it is changed, otherwise it is added."
;  (bbdb-record-putprop record 'timestamp (format-time-string
;                                          bbdb-time-internal-format
;                                          (current-time))))
;)

;; Posting style
;(setq gnus-posting-styles 
;      '((".*"
;         (name "Morten Leander Petersen")
;         (from "Morten Leander Petersen <mortenlp2@gmail.com>")
;         (signature "/Morten")))
;      )


;; tells gnus to get new mail and also display all old mail
;(define-key gnus-summary-mode-map (kbd "C-c C-c")
;  (lambda ()
;    (interactive)
;    (gnus-summary-rescan-group 'all)))

;(defun my-gnus-group-list-subscribed-groups ()
;  "List all subscribed groups with or without un-read messages"
;  (interactive)
;  (gnus-group-list-all-groups 5)
;  )

;(add-hook 'gnus-group-mode-hook
;          ;; list all the subscribed groups even they contain zero un-read messages
;          (lambda () (local-set-key "o" 'my-gnus-group-list-subscribed-groups ))
;          )

;; Trivial-Cite configuration
(setq message-cite-function 'trivial-cite
      tc-mouse-overlays t
      tc-guess-cite-marks nil
      tc-time-format "%Y-%m-%d %H:%M"
      )

(defun my-tc-simple-attribution ()
  "Produce the standard attribution string, using the real name."
  (let ((date (assoc "date" tc-strings-list))
	(email (assoc "email-addr" tc-strings-list))
        (name (assoc "real-name" tc-strings-list)))
    (if (and (null name) (null email))
	"An unnamed person wrote:\n\n"
      (if (null date)
	  (concat (cdr (or name email)) " wrote:\n\n")
	(concat "On " (cdr date) ", "
                (or (concat (cdr name) " <" (cdr email) ">") (cdr email)) " wrote:\n")))))

(setq tc-make-attribution 'my-tc-simple-attribution)

(setq mm-discouraged-alternatives '("text/html" "text/richtext"))

;; Daemon to check mail every minute
(gnus-demon-add-handler 'gnus-demon-scan-news 1 t)

;; Show notifications on new mail
(require 'gnus-desktop-notify)
(gnus-desktop-notify-mode)
(gnus-demon-add-scanmail)
