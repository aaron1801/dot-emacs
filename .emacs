(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
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
 '(org-datetree-add-timestamp (quote inactive))
 '(org-export-backends
   (quote
    (ascii beamer html icalendar latex md odt org confluence freemind rss taskjuggler)))
 '(org-export-with-email t)
 '(org-export-with-emphasize t)
 '(org-export-with-section-numbers nil)
 '(org-export-with-toc nil)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-crypt org-docview org-eww org-gnus org-id org-info org-irc org-mhe org-protocol org-rmail org-w3m org-checklist orgtbl-sqlinsert)))
 '(org-plantuml-jar-path "/usr/share/plantuml/plantuml.jar")
 '(org-timer-display (quote both))
 '(paradox-github-token t))
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
