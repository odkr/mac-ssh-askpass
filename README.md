# mac-ssh-askpass

**mac-ssh-askpass** prompts the user for input, typically a passphrase,
using an [Aqua](https://en.wikipedia.org/wiki/Aqua_(user_interface)) dialogue,
and prints that input to `STDOUT`. In other words, it implements the so-called
[SSH Askpass Protocol](https://man.openbsd.org/ssh-add). You can use it with
[OpenSSH](https://www.openssh.com/) and other tools that understand that
protocol.


## SYNOPSIS

You will typically set an environment variable, for example, `SSH_ASKPASS`, to
tell a utility to use **mac-ssh-askpass**, rather than invoking it directly.

For example:

```sh
SSH_ASKPASS=mac-ssh-askpass DISPLAY= ssh-add </dev/null
```

The command above invokes **ssh-add**,
but instructs it to use **mac-ssh-askpass** to query you for passphrases.


## INSTALLATION

You use **mac-ssh-askpass** **at your own risk**. You have been warned.

**mac-ssh-askpass** is a simple AppleScript.
It should work on any version of macOS.

1. Download the repository from:
   <https://codeload.github.com/odkr/mac-ssh-askpass/tar.gz/v1.1.0b>

2. Copy **mac-ssh-askpass** to a directory in your `PATH`.

3. Make sure it's owned by the superuser (optional).

You can do all of this by:

```sh
curl https://codeload.github.com/odkr/mac-ssh-askpass/tar.gz/v1.1.0b | tar -xz
sudo chown -R root:wheel mac-ssh-askpass-1.1.0b
sudo mv mac-ssh-askpass-1.1.0b /opt/mac-ssh-askpass
printf '\nexport PATH="$PATH:/opt/mac-ssh-askpass/bin"\n' >> ~/.bash_profile
```

If you didn't change your default shell,
you can simply copy-paste the code above into a terminal as a whole.

## DOCUMENTATION

You're reading it. There isn't a whole lot to say.


## CONTACT

If there's something wrong with **mac-ssh-askpass**,
[open an issue](https://github.com/odkr/mac-ssh-askpass/issues).


## LEGAL

This is free software released into the public domain.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
