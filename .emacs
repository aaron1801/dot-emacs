


;; The below lines/functions appear to be required

(package-initialize)

(org-babel-load-file (expand-file-name "~/.emacs.d/emacs-config.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(browse-url-browser-function (quote browse-url-firefox))
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (wheatgrass)))
 '(custom-safe-themes
   (quote
    ("c95bd407d6c810cd4c186404c8ad3d48eeabbee924215dc086ca29d8cd25e083" default)))
 '(elfeed-feeds (quote ("http://sachachua.com/blog/feed/")))
 '(erc-modules
   (quote
    (autoaway autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands readonly ring stamp track)))
 '(ledger-reports
   (quote
    (("b" "ledger ")
     ("a" "	")
     ("test" "ledger ")
     ("bal" "%(binary) -f %(ledger-file) bal")
     ("reg" "%(binary) -f %(ledger-file) reg")
     ("payee" "%(binary) -f %(ledger-file) reg @%(payee)")
     ("account" "%(binary) -f %(ledger-file) reg %(account)"))))
 '(org-agenda-files
   (quote
    ("~/REPOS/TODO/inbox_working.org" "~/REPOS/TODO/TODO-MASTER.ORG" "~/REPOS/TODO/WAR.org")))
 '(org-babel-load-languages
   (quote
    ((awk . t)
     (emacs-lisp . t)
     (python . t)
     (shell . t)
     (ledger . t)
     (latex . t)
     (plantuml . t)
     (dot . t)
     (ditaa . t)
     (sql . t)
     (sqlite . t)
     (gnuplot . t)
     (org . t)
     (screen . t)
     (ruby . t))))
 '(org-capture-templates
   (quote
    (("p" "Phone Call" entry
      (file "~/REPOS/TODO/inbox_work.org")
      "* DONE Phone call with %?" :clock-in t :clock-resume t)
     ("m" "Meeting" entry
      (file "~/REPOS/TODO/inbox_work.org")
      "* %^{Meeting Time}T %^{Title}         " :prepend t :clock-in t :clock-resume t)
     ("w" "Work Items" entry
      (file "~/REPOS/TODO/inbox_work.org")
      "* TODO %?" :empty-lines-after 1 :clock-in t :clock-resume t)
     ("l" "Todo List test" entry
      (file "~/REPOS/TODO/inbox_work.org")
      "* TODO %^{Description}
%?
:LOGBOOK:
- Added: %U
:END" :prepend t :clock-in t :clock-resume t nil nil)
     ("t" "email-todo-test" entry
      (file+headline "~/REPOS/TODO/email-todo.org" "TASKS")
      "* TODO [#A] %a\\n"))) t)
 '(org-capture-templates-contexts nil)
 '(org-clock-clocked-in-display (quote both))
 '(org-clock-history-length 23)
 '(org-clock-out-remove-zero-time-clocks t)
 '(org-clock-persist t)
 '(org-clock-report-include-clocking-task t)
 '(org-clock-resolve-expert t)
 '(org-confirm-babel-evaluate nil)
 '(org-crypt-disable-auto-save (quote ask))
 '(org-datetree-add-timestamp (quote inactive))
 '(org-export-backends
   (quote
    (ascii beamer html icalendar latex md odt org confluence deck freemind rss s5 taskjuggler)))
 '(org-export-with-email t)
 '(org-export-with-emphasize t)
 '(org-export-with-section-numbers nil)
 '(org-export-with-toc nil)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-crypt org-docview org-eww org-gnus org-id org-info org-irc org-mhe org-protocol org-rmail org-w3m org-bookmark org-checklist org-eshell org-learn org-notmuch)))
 '(org-plantuml-jar-path "/usr/share/plantuml/plantuml.jar")
 '(org-taskjuggler-default-project-duration 1024)
 '(org-timer-display (quote both))
 '(paradox-github-token t)
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 139 :width normal)))))
