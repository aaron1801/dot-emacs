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
    ("~/REPOS/TODO/inbox_working.org" "~/REPOS/TODO/TODO-MASTER.ORG" "~/REPOS/TODO/refile.org" "~/REPOS/TODO/agile_war.org")))
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
:END" :prepend t :clock-in t :clock-resume t))))
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
    (org-bbdb org-bibtex org-crypt org-docview org-eww org-gnus org-id org-info org-irc org-mhe org-protocol org-rmail org-w3m org-checklist orgtbl-sqlinsert)))
 '(org-plantuml-jar-path "/usr/share/plantuml/plantuml.jar")
 '(org-timer-display (quote both))
 '(paradox-github-token t)
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 25))
(global-set-key (kbd "C-c c") 'org-capture)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 139 :width normal)))))
(autoload 'ledger-mode "ledger-mode" "A major mode for Ledger" t)
(add-to-list 'load-path
	     (expand-file-name "/home/aaron/.emacs.d/ledger-mode-master"))
(add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 24))
;; For important compatibility libraries like cl-lib
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(package-initialize)
(global-set-key (kbd "C-c n") 'org-board-keymap)
;; For Special Bullets from http://howardism.org/Technical/Emacs/orgmode-wordprocessor.html
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(require 'ox-s5)
