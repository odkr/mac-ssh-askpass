===============
mac-ssh-askpass
===============

An Aqua_-based passphrase dialogue for use not only with OpenSSh_.

``mac-ssh-askpass`` asks for a passphrase on macOS, using the graphical
user interface. It conforms to the so-called `SSh Askpass Protocol`_.

I wrote this because I was looking for something simple,
but couldn't find anything.


.. _Aqua: https://en.wikipedia.org/wiki/Aqua_(user_interface)

.. _OpenSSh: https://www.openssh.com/

.. _`SSh Askpass Protocol`: https://man.openbsd.org/ssh-add


Synopsis
========

``SSH_ASKPASS=mac-ssh-askpass ssh-add </dev/null``


Getting ``mac-ssh-askpass``
===========================

Disclaimer
----------

You use ``mac-ssh-askpass`` **at your own risk**. You have been warned.


Download and Installation
-------------------------

``mac-ssh-askpass`` is a simple AppleScript.
It should work on any version on any version of macOS.

Download the repository from:
<https://codeload.github.com/odkr/mac-ssh-askpass/tar.gz/v1.0.0>

Then copy ``mac-ssh-askpass`` to a directory in your ``PATH``,
*/usr/local/bin* is a good choice, and make it executable.

You can do this by saying::

    curl https://codeload.github.com/odkr/mac-ssh-askpass/tar.gz/v1.0.0 |
        tar -xz
    # Check the source!
    more mac-ssh-askpass-1.0.0/mac-ssh-askpass
    # If -- and only if -- you like what you see, continue by:
    sudo mkdir -pm 0755 /usr/local/bin
    sudo cp mac-ssh-askpass-1.0.0/mac-ssh-askpass /usr/local/bin

There isn't much of a point in keeping the repository around,
so you may then wish to say::

    rm -rf mac-ssh-askpass-1.0.0


Documentation
=============

Use the source.


Contact
=======

If there's something wrong with ``mac-ssh-askpass``, `open an issue
<https://github.com/odkr/mac-ssh-askpass/issues>`_.


Legal
=====

This is free software released into the public domain.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.


Further Information
===================

GitHub:
<https://github.com/odkr/mac-ssh-askpass>
