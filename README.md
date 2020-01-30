# mac-ssh-askpass

**mac-ssh-askpass** prompts the user for input, typically a passphrase,
with an [Aqua](https://en.wikipedia.org/wiki/Aqua_(user_interface)) dialogue,
and prints that input to STDOUT. In short, it conforms to the so-called
[SSH Askpass Protocol](https://man.openbsd.org/ssh-add). You can use it with
[OpenSSH](https://www.openssh.com/) and other tools that understand that
protocol.

## SYNOPSIS

```sh
SSH_ASKPASS=mac-ssh-askpass ssh-add </dev/null
```

This invokes **ssh-add**, instructing it to use **mac-ssh-askpass** to query
you for passphrases. You will typically set an environment variable to
tell a utility to use **mac-ssh-askpass**, rather than invoking it directly.

## INSTALLATION

You use **mac-ssh-askpass** **at your own risk**. You have been warned.

**mac-ssh-askpass** is a simple AppleScript.
It should work on any version of macOS.

1. Download the repository from:
   <https://codeload.github.com/odkr/mac-ssh-askpass/tar.gz/v1.1.0b>

2. Copy **mac-ssh-askpass** to a directory in your `PATH`.

3. Make it executable.

You can do all of this by saying:

```sh
curl https://codeload.github.com/odkr/mac-ssh-askpass/tar.gz/v1.1.0b | tar -xz
sudo chown -R root:wheel mac-ssh-askpass-1.1.0b
sudo mv mac-ssh-askpass-1.1.0b /opt/mac-ssh-askpass
printf '\nexport PATH="$PATH:/opt/mac-ssh-askpass/bin"\n' >> ~/.bash_profile
```

You can simply copy-paste the above code as a whole into a terminal.

## DOCUMENTATION

You're reading it.


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
