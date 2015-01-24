Emacs Configuration
===================

Setup
-----
Cask is required inorder to build my emacs configuration.  Below are the steps needed to install our packages via cask.

    # Install Cask
    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
    
    # Install dependencies.  Make sure to run this where the Cask file is.
    cask install
For more detailed installation directions check out the cask docs:  http://cask.readthedocs.org/en/latest/guide/installation.html

08/18/2014
----------
- Remove submodules for use of Cask (http://cask.readthedocs.org/en/latest/index.html).
- Update all configuration.

10/03/2013
----------

**Updated packages**
- powerline
- web-mode
- js2-mode
- jade-mode
- json-mode
- rainbow-mode

**Updated files**
- smooth-scroll.el
- web-mode.el
- js.el
- j2-mode.el
- jade-mode.el
- json-mode.el
- fill-column-indicator.el
