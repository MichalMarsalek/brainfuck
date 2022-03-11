include prelude
import algorithm

const constants = split " + ++ +++ ++++ +++++ ++++++ +++++++ ++++++++ +++++++++ ++++++++++ +++++++++++ ++++++++++++ +++++++++++++ ++++++++++++++ +++[A+++++B-]A ++++[A++++B-]A ++++[A++++B-]A+ +++[A++++++B-]A +++[A++++++B-]A+ ++++[A+++++B-]A +++[A+++++++B-]A +++[A+++++++B-]A+ ++++[A++++++B-]A- ++++[A++++++B-]A +++++[A+++++B-]A +++++[A+++++B-]A+ +++[A+++++++++B-]A ++++[A+++++++B-]A ++++[A+++++++B-]A+ +++++[A++++++B-]A +++++[A++++++B-]A+ ++++[A++++++++B-]A ++++[A++++++++B-]A+ --[A--B+++++++]A-- --[A--B+++++++]A- --[A--B+++++++]A ---[A+B+++++++]A ---[A+B+++++++]A+ ---[A+B+++++++]A++ --[A+B++++++]A--- --[A+B++++++]A-- --[A+B++++++]A- --[A+B++++++]A --[A+B++++++]A+ --[A+B++++++]A++ --[A+B++++++]A+++ -[A+B-----]A---- -[A+B-----]A--- -[A+B-----]A-- -[A+B-----]A- -[A+B-----]A -[A+B-----]A+ -[A+B-----]A++ -[A+B-----]A+++ -[A+B-----]A++++ -[A+B-----]A+++++ -[A+B+++++++++]A -[A+B+++++++++]A+ ----[A+B----]A---- ----[A+B----]A--- ----[A+B----]A-- ----[A+B----]A- ----[A+B----]A ----[A+B----]A+ ----[A+B----]A++ ----[A+B----]A+++ ----[A---B----]A ----[A---B----]A+ ----[A---B----]A++ -[A+B-------]A--- -[A+B-------]A-- -[A+B-------]A- -[A+B-------]A -[A+B-------]A+ -[A+B-------]A++ -[A+B-------]A+++ -[A+B---]A-------- -[A+B---]A------- -[A+B---]A------ -[A+B---]A----- -[A+B---]A---- -[A+B---]A--- -[A+B---]A-- -[A+B---]A- -[A+B---]A -[A+B---]A+ -[A+B---]A++ -[A+B---]A+++ -[A+B---]A++++ -[A+B---]A+++++ -[A+B---]A++++++ -[A+B---]A+++++++ -[A+B---]A++++++++ -[A+B---]A+++++++++ -[A++B-----]A------- -[A++B-----]A------ -[A++B-----]A----- -[A++B-----]A---- -[A++B-----]A--- -[A++B-----]A-- -[A++B-----]A- -[A++B-----]A -[A++B-----]A+ -[A++B-----]A++ -[A++B-----]A+++ -[A++B-----]A++++ -[A++B-----]A+++++ -[A--B-------]A-- -[A--B-------]A- -[A--B-------]A -[A--B-------]A+ -[A--B-------]A++ -[A++B+++++++++]A- -[A++B+++++++++]A -[A++B+++++++++]A+ --------[A+++B--]A ----[A+++++B--]A- ----[A+++++B--]A ------[A+++B--]A ----[A+++B--]A-- ----[A+++B--]A- ----[A+++B--]A --[A+B--]A---- --[A+B--]A--- --[A+B--]A-- --[A+B--]A- --[A+B--]A --[A-B--]A- --[A-B--]A --[A-B--]A+ --[A-B--]A++ --[A-B--]A+++ --[A-B--]A++++ ----[A---B--]A ----[A---B--]A+ ----[A---B--]A++ ------[A---B--]A ----[A-----B--]A ----[A-----B--]A+ --------[A---B--]A -[A--B+++++++++]A- -[A--B+++++++++]A -[A--B+++++++++]A+ -[A++B-------]A-- -[A++B-------]A- -[A++B-------]A -[A++B-------]A+ -[A++B-------]A++ -[A--B-----]A----- -[A--B-----]A---- -[A--B-----]A--- -[A--B-----]A-- -[A--B-----]A- -[A--B-----]A -[A--B-----]A+ -[A--B-----]A++ -[A--B-----]A+++ -[A--B-----]A++++ -[A--B-----]A+++++ -[A--B-----]A++++++ -[A--B-----]A+++++++ -[A-B---]A--------- -[A-B---]A-------- -[A-B---]A------- -[A-B---]A------ -[A-B---]A----- -[A-B---]A---- -[A-B---]A--- -[A-B---]A-- -[A-B---]A- -[A-B---]A -[A-B---]A+ -[A-B---]A++ -[A-B---]A+++ -[A-B---]A++++ -[A-B---]A+++++ -[A-B---]A++++++ -[A-B---]A+++++++ -[A-B---]A++++++++ -[A-B-------]A--- -[A-B-------]A-- -[A-B-------]A- -[A-B-------]A -[A-B-------]A+ -[A-B-------]A++ -[A-B-------]A+++ ----[A+++B----]A-- ----[A+++B----]A- ----[A+++B----]A ----[A-B----]A--- ----[A-B----]A-- ----[A-B----]A- ----[A-B----]A ----[A-B----]A+ ----[A-B----]A++ ----[A-B----]A+++ ----[A-B----]A++++ -[A-B+++++++++]A- -[A-B+++++++++]A -[A-B-----]A----- -[A-B-----]A---- -[A-B-----]A--- -[A-B-----]A-- -[A-B-----]A- -[A-B-----]A -[A-B-----]A+ -[A-B-----]A++ -[A-B-----]A+++ -[A-B-----]A++++ --[A-B++++++]A--- --[A-B++++++]A-- --[A-B++++++]A- --[A-B++++++]A --[A-B++++++]A+ --[A-B++++++]A++ --[A-B++++++]A+++ ---[A-B+++++++]A-- ---[A-B+++++++]A- ---[A-B+++++++]A --[A++B+++++++]A --[A++B+++++++]A+ --[A++B+++++++]A++ ----[A--------B+]A- ----[A--------B+]A -----[A------B+]A- -----[A------B+]A ----[A-------B+]A- ----[A-------B+]A ---[A---------B+]A -----[A-----B+]A- -----[A-----B+]A ----[A------B+]A ----[A------B+]A+ ---[A-------B+]A- ---[A-------B+]A ----[A-----B+]A ---[A------B+]A- ---[A------B+]A ----[A----B+]A- ----[A----B+]A ---[A-----B+]A -------------- ------------- ------------ ----------- ---------- --------- -------- ------- ------ ----- ---- --- -- -"

type Command = enum Inc, Dec, Clear, Out, In, Set, While, End, Repeat, Comment
type Instruction = object
  kind: Command
  reg1, reg2, amount: int
type Program = object
  instructions: seq[Instruction]
  regCount: int
  
func toByteCode(source: seq[string]): (Program, seq[string]) =
  var registers: Table[string, int]
  var registersSeq: seq[string]
  var regCount = 0
  proc getReg(register: string): int =
    if not registers.hasKey(register):
      registers[register] = registers.len
      inc regCount
      registersSeq &= register
    return registers[register]
  var stack: seq[int]
  for line in source:
    let w = line.strip.split
    result[0].instructions &= (case w[0]
    of "clear": Instruction(kind: Command.Clear, reg1: getReg(w[1]))
    of "dec":   Instruction(kind: Command.Dec, reg1: getReg(w[1]), amount: (try:w[2].parseInt except: 1))
    of "inc":   Instruction(kind: Command.Inc, reg1: getReg(w[1]), amount: (try:w[2].parseInt except: 1))
    of "out":   Instruction(kind: Command.Out, reg1: getReg(w[1]))
    of "in":    Instruction(kind: Command.In, reg1: getReg(w[1]))
    of "set":   Instruction(kind: Command.Set, reg1: getReg(w[1]), reg2: getReg(w[2]), amount: w[3].parseInt)
    of "while": (stack &= getReg(w[1]); Instruction(kind: Command.While, reg1: getReg(w[1])))
    of "end":   Instruction(kind: Command.End, reg1: stack.pop)
    of "repeat":(stack &= getReg(w[1]); Instruction(kind: Command.Repeat, reg1: getReg(w[1]), reg2: getReg(w[2])))
    else:       Instruction(kind: Command.Comment))
  result[0].regCount = regCount
  result[1] = registersSeq

func getLength(program: var Program, perm: var seq[int]): int =
    var point = 0
    var freeMove = true
    template goto(reg: int) =
        let reg2 = reg
        if freeMove:
            freeMove = false
        else:
            result += abs(perm[reg2] - point)
        point = perm[reg2]
    for ins in program.instructions:
        case ins.kind
        of Command.Comment: discard
        of Command.Set: goto(ins.reg2); goto(ins.reg1); goto(ins.reg2); goto(ins.reg1)
        of Command.Repeat: goto(ins.reg2); goto(ins.reg1);goto(ins.reg2); goto(ins.reg1);goto(ins.reg2)
        else: goto(ins.reg1)

func getBrainfuck(program: var Program, perm: var seq[int]): seq[string] =
    var point = 0
    var freeMove = true
    template goto(reg: int): string =
        let reg2 = reg        
        var temp = ""
        if freeMove:
            freeMove = false
        else:
            temp = repeat(if perm[reg2] > point: ">" else: "<", abs(perm[reg2] - point))
        point = perm[reg2]
        temp
    for ins in program.instructions:
        result &= (case ins.kind
        of Command.Comment: ""
        of Command.End: goto(ins.reg1) & "]"
        of Command.Set: goto(ins.reg2) & constants[ins.amount].replace("A", goto(ins.reg1)).replace("B", goto(ins.reg2)).replace("A", goto(ins.reg1))
        of Command.While: goto(ins.reg1) & "["
        of Command.Repeat: goto(ins.reg2) & "[-" & goto(ins.reg1) & "+" & goto(ins.reg2) & "]" & goto(ins.reg1) & "[-" & goto(ins.reg2) & "+"
        of Command.Clear: goto(ins.reg1) & "[-]"
        of Command.Dec: goto(ins.reg1) & "-".repeat(ins.amount)
        of Command.Inc: goto(ins.reg1) & "+".repeat(ins.amount)
        of Command.Out: goto(ins.reg1) & "."
        of Command.In: goto(ins.reg1) & ","
        )

func interpret(program: Program): string =
    if program.instructions.anyIt(it.kind == Command.In): return
    return ""

func getOptimalBrainfuck(program: var Program): (seq[string], seq[int]) =
    var perm = toSeq(0..<program.regCount)
    var minLength = int.high
    var minPerm: seq[int]
    while true:
        let length = getLength(program, perm)
        if length < minLength:
            minLength = length
            minPerm = perm
        if not perm.nextPermutation: break
    return (getBrainfuck(program, minPerm), minPerm)

proc compile(source:string, golf=false) =
  var lines = source.strip.splitLines
  var (program, registers) = toByteCode(lines)
  let (bfLines, perm) = program.getOptimalBrainfuck
  registers = perm.mapIt(registers[it])
  let bf = bfLines.join
  echo "Length: ", $bf.len
  echo "Memory layout: ", registers.join(" ")
  echo "               ", toSeq(0..<registers.len).mapIt(($it).align(registers[it].len)).join(" ")
  echo "Golfed: ", bf
  let maxlen = lines.mapIt(it.len).max
  for i in 0..<lines.len:
    echo lines[i].alignLeft(maxlen + 1), bfLines[i]

var code = """
set rep letter 26
set letter _ 64
while rep
    dec rep
    inc letter
    out letter
end
"""

compile code