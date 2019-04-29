# Concepts Summary
## Scroll other window
`C-M-v` (scroll up)\
`C-M-S-v` (scroll down)

## Packages
Since version 24.1, *Emacs* includes the *built-in* ability to manage *packages*—Emacs Lisp programs that implement additional features (§48). This built-in package manager is an Emacs Lisp program called `package.el`.

Packages themselves are stored in *package archives*, aka *repositories*. Although there are several Emacs package archives, there is only one *official* archive, called *ELPA* (Emacs Lisp Package Archive). “Official” means that this is the repository pre-packed with Emacs and is copyrighted by the *Free Software Foundation* (and it is perhaps the case that its packages are more strictly controlled in terms of quality assurance). It's also generally recognized that *ELPA* contains are relatively small number of packages. Thus the interest in third-party package archives…

If you want the package manager to search third-party repositories (e.g., *MELPA*), you have to tell it to do so. MELPA, as well as *MarmaladeRepo*, are the most popular third-party Emacs package repos.

### Adding the MELPA repository
This is done with eLisp code in your init file (see init file).

### Installing (and deleting) packages
1) `M-x list-packages` to open a buffer listing all packages from all installed repos.
2) `ENT` to describe the package under cursor (optional)
3) `i` to mark the package on the current line for installation (or `d` to mark for uninstallation). Also useful is `u` to remove an install or delete  mark if you make a mistake.
4) `x` to execute all marked installations and deletions

### Installed package location
`~/.emacs.d/elpa`

## Find file in a new frame
`C-x 5 f`
