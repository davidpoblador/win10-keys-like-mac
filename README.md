# Win10 Keys like Mac

Helps you **make macOS shortcuts work on Windows**.

(If you are in such a rush that can't even read 3 paragraphs, please head
over to the [Installation Instructions](#installation-instructions))

I have recently purchased a gaming computer with Windows 10 installed and
as I have started using applications I am familiar with (Firefox, VSCode,
...), the hurdle to convince my brain to use different keyboard shortcuts
than I those I am familiar with in macOS (my usual OS) became too big.

I've put together some basic recipe to make all the common shortcuts I use
on macOS work on Windows.

## Notes

- I've only tested this on Windows 10, but as far as I've investigated, most
things should work™ in earlier versions.
- Use this at your own risk, bla bla bla... but most importantly, if you
find some way to improve or simplify this further, please share away!
- Last time I used Windows, Windows 2000 had just been released, probably
I've made this overly complicated.

## Approach

There is a lot of magic surrounding the `Win` key in Windows. In essence, there
are certain key combinations involving that key that can't be captured by
software without doing a lot of magic. This becomes a bit of a problem when
trying to remap `Win + Tab` to a similar behavior to the corresponding
macOS shortcut `⌘ + Tab`

To mitigate this, I use
[SharpKeys](https://www.randyrants.com/category/sharpkeys/), a simple piece
of software that allows you to remap keys. My strategy is to remap the `Win`
key into something that is typically unused (in my case `F20`).

Given most common shortcuts using the `Control` key in Windows have a
corresponding shortcut using `⌘` in macOS, I also remap the `Win` key to
`Control`.

Once that replacement is done, I just use a simple
[AutoHotkey](https://www.autohotkey.com/) script to program the common
remaps.

## Installation Instructions

1. Download and install
[SharpKeys](https://www.randyrants.com/category/sharpkeys/)
2. Download and install
[AutoHotkey](https://www.autohotkey.com/)
3. Program the following remaps in SharpKeys:
4. Download the `.ahk` file from this repo, and make sure it starts with
Windows. Probably the easiest option is to drop it in the startup folder.
(you can reach that folder by going to `Run` and typing `shell:startup` and
`Enter`.)

## ❤️☕

If I had found a snippet like this one when I got my new computer I would
have totally bought some coffee for the author. If this has saved some hours
of research and increased just a bit your productivity, consider doing so.