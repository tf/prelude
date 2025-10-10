(defun tf/copy-repo-relative-path ()
  "Copy the current buffer's file path, relative to the git repo root, prefixed with '@'."
  (interactive)
  (let* ((file (or (buffer-file-name)
                   (user-error "Buffer not visiting a file")))
         (repo-root (or (locate-dominating-file file ".git")
                        (user-error "Not inside a git repository")))
         (relative-path (file-relative-name file repo-root))
         (formatted (concat "@" relative-path)))
    (kill-new formatted)
    (message "Copied: %s" formatted)))

(global-set-key (kbd "C-c C-p") 'tf/copy-repo-relative-path)
