; recent files
(require 'recentf)
(setq recentf-max-saved-items 100)

; dired
(require 'dired+)
(setq dired-recursive-deletes 'top)
(put 'dired-find-alternate-file 'disabled nil)

; use ibuffer instead of the built in buffer list
(global-set-key (kbd "C-x C-b") 'ibuffer)

; dynamic expansion tweaks
(eval-after-load "hippie-exp"
  '(setq hippie-expand-try-functions-list
         (remove 'try-expand-line hippie-expand-try-functions-list)))

; disable auto-save files (#foo#)
(setq auto-save-default nil)

; disable backup files (foo~)
(setq backup-inhibited t)

; save opened files across sessions
;(require 'save-visited-files)
;(open-visited-files)
;(save-visited-files-mode 1)

; save cursor position within files
(require 'saveplace)
(setq save-place-file "~/.emacs.d/.saveplace")
(setq-default save-place t)

; save minibuffer history across sessions
(setq savehist-file "~/.emacs.d/.savehist")
(savehist-mode 1)

; nicer naming of buffers with identical names
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator " • ")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")

; Interactively Do Things
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ; case insensitive matching

; kill ring browsing
(require 'browse-kill-ring+)
(browse-kill-ring-default-keybindings)

; automatically clean up old buffers
(require 'midnight)
