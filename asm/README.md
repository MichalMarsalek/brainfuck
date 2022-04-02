# Simple brainfuck assembler

This tool helps with writing brainfuck programs with "regular" loops (sum of movement inside of each loop must be zero).
When this condition is met, the program uses a fixed amount of registers that you "manually" switch between. This tool allows you to name those registers and generate the switches for you. Furthermore it can help you initialize constants.
Input to this tools is a list of commands each of which is transformed to some brainfuck characters and appended to the original line. This yields a readable version of a brainfuck code (for interpreters that ignore non-bf characters). Alternatively, you can choose to output just the brainfuck.

## Examples
Following program prints a triangle of stars.

```
inc rep 10
inc NL 10
inc _
set * _ 42
repeat i rep
    repeat _ i
        out *
    end
    out NL
end
```

The next program takes two inputs A, B as decimal digits and a rectangle A×B made of stars.
```
set 0 res 48
set * res 42
in A
in B
while 0
    dec 0
    dec A
    dec B
end
while A
    dec A
    repeat _ B
        inc res
    end
end
while res
    dec res
    out *
end
```



## Commands
* `clear register` - goes to the cell `register` and sets it to 0
* `dec register [amount=1]` - goes to the cell `register` and decrements it by the given amount
* `inc register [amount=1]` - goes to the cell `register` and incrementsit by the given amount
* `out register [amount=1]` - goes to the cell `register` and outputs `amount` times
* `in register` - goes to the cell `register` and gets input
* `set register dummy c` - goes to the cell `register` and sets it to the constant `c` (either a character or a decimal value 15..241) assuming both registers `register`and `dummy` are zero
* `while register` - goes to the cell `register` and starts a loop
* `end` - goes to the`register` cell of the matching `while` command and ends a loop
* `repeat reg1 reg2` - stars a nondestructive loop of length `reg2`. Assumes `reg1` starts at zero and doesn't change inside the loop
                     - You can think of this as a for loop. Inside the loop, `reg1` is equal to 0, 1, ..., `reg2`-1. On the other hand `reg2` lowers by one on each iteration. After the loop, the registers are reset.
                     The code
```
repeat i length
    code
end
```

is a shortcut for

```
while length
    code
    inc i
    dec length
end
while i
    dec i
    inc length
end
```
* `move reg1 reg2` - increases `reg2` by `reg1`, then clears `reg1`. Shortcut for
```
while reg1
    dec reg1
    inc reg2
end
```
* `memory layout` - constraints the memory layout. This serves two purposes. First, it reduces the search space which is neccessary when more than 10 variables are used (7 in the online version). Second, it is sometimes neccesary when using the `bf` command to force certain registers to be in specific relative positions. The layout is either a single register name, a list of layouts (surronded by `(`, `)` and space separated) or a set of layouts (same, but surrounded by `{`, `}`).
* `hint reg` - doesn't produce any brainfuck, but tells the compiler where the pointer is supposed to be located (this is relevant after the `bf` command if the compiler cannot infer the position of the pointer).
* `place reg text` - assuming all the relevant cells are empty, places the given string on the tape. Characters are interleaved with null cells.


All registers that appear anywhere in the code are given a position on the tape. The layout minimizing the brainfuck code length is chosen. A sequence of `inc`, `dec` and at most one `in`/`out` is always executed in an optimal order.

All lines starting with a noncommand and all words after a command are ignored. This means, you can send the output of this tool to its input. Also you can add comments to the source easily.

If the program gets no input, it is interpreted, assumptions on dummy registers are checked and the result is shown to you. This helps when writing a program that outputs a specific constant string.

## Online script

You can run this program [online](https://play.nim-lang.org/#ix=3U5I).

## References
The list of constants this program used is extracted from [Esolangs wiki](https://esolangs.org/wiki/Brainfuck_constants).
