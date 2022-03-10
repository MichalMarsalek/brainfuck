# Simple brainfuck assembler

This tool helps with writing brainfuck programs with "regular" loops (sum of movement inside of each loop must be zero).
When this condition is met, the program uses a fixed amount of registers that you "manually" switch between. This tool allows you to name those registers and generate the switches for you. Furthermore it can help you initialize constants.
Input to this tools is a list of commands each of which is transformed to some brainfuck characters and appended to the original line. This yields a readable version of a brainfuck code (for interpreters that ignore non-bf characters). Alternatively, you can choose to output just the brainfuck.

## Example
Following program prints the letters "A"-"Z" 10 times on 10 separate lines.

```
set NL 10       ++++++++++
set rep 10      >++++++++++
while rep       [
  dec rep       -
  clear letter  >[-]
  set letter 65 >----[<+>----]<++
  set rem 26    >>+++++[<+++++>-]<+
  while rem     [
    dec rem     -
    out letter  <.
    inc letter  +
  end           >]
  out NL        <<<.
end             >]
```

## Commands
* `def register` - doesn't produce any bf but defines a register
* `clear register` - goes to the cell `register` and sets it to 0
* `dec register` - goes to the cell `register` and decrements
* `inc register` - goes to the cell `register` and increments
* `out register` - goes to the cell `register` and outputs
* `in register` - goes to the cell `register` and gets input
* `set register c` - goes to the cell `register` and sets it to the constant `c` assuming the cell and the one to the right of it is zero
* `while register` - goes to the cell `register` and starts a loop
* `end` - goes to the`register` cell of the matching `while` command and ends a loop
* `repeat reg1 reg2` - stars a nondestructive loop of length `reg2`. Assumes `reg1` starts at zero and doesn't change inside the loop
                     - shortcut for
```
while reg2
    dec reg2
    inc reg1
end
while reg1
    dec reg1
    inc reg2
```

Registers are given numbers 0, 1, ... in the order they first appear in code. Note that you don't need to define registers with `def`, nondefined registers are auto defined using any command.

All lines starting with a noncommand and all words after a command are ignored. This means, you can send the output of this tool to its input. Also you can add comments to the source easily.

## Online script
You can run this program [online](https://play.nim-lang.org/#ix=3RTv).

## References
The list of constants this program used is extracted from [Esolangs wiki](https://esolangs.org/wiki/Brainfuck_constants). Each constant generating code is changed so that it initializes the current cell rather than the one on the right.
