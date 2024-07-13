;; These are my own options below. I have tried to mirror it
;; based on my .vimrc file, but we will see how it turns out.
;; Shamelessly borrowed from emacswiki.org/emacs/PopularOptions

(global-font-lock-mode t)

;; Show parentheses when one is created
(show-paren-mode 1)

;; Enable line numbers
(global-display-line-numbers-mode t)

;; Disable startup message
(setq inhibit-startup-screen t)

;; Show empty lines
(setq indicate-empty-lines t)

;; Disable Tool Bar for a cleaner look
(tool-bar-mode -1)

;; Disable automatic backup~ file
(setq make-backup-files nil)
