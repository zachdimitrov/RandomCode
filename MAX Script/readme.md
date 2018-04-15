# MAX Script Basics

## Data types and structures
### Primitive types
- Integer `123` use standart mathematical operations
- Float `0.33`
- String `"Hello"` concatenate with +
### Complex types
- Array `#(5, pi, "String", 6 + 3^2)`
- Point3 `[2, 4, 6]` represents a point in space
- Color `color 255 0 128` defines a color

## Variables
- local variables - defined in scope () or with `local` keyword
```c
for i = 1 to 3 do
(
  local rad = 10
  s = sphere()
  s.pos.x = i * 10
  s.radius = rad
)
```
- global variables - defined in global scope or with `global` keyword
```c
global rad = 10
sphere radius:rad
```

## Control Flow Statements
```c
if mybox.height == 10 then mybox.width = 20
if mybox.height == 10 then mybox.width = 20 else mybox.width = 10
mybox.width = if mybox.height == 10 then 20 else 10
```
```c
resetMaxFile #noprompt
mybox = box length:10 width:10 height:10 wirecolor:blue
for i = 1 to 5 do --repeat five times, for each iteration do:
(
box_copy = copy mybox
box_copy.pos = [i*20, 0, 0]
box_copy.wirecolor = [i*25,i*50,(5-i)*50]
)
```
```c
arr = for i = 1 to 5 collect i
```
`do <expr> while <expr>` - do loop  
`while <expr> do <expr>` - while loop  

## Custom Functions
`fn substract x y = (x - y)` - define function  
`substract 4 - 2` - call function with parameters
#### using keyword arguments (default values)
```
function mycube side position:[0, 0, 0] =
(
box length:side width:side height:side pos:position
)
```

## Structures
`Struct person (name, height, age, sex)` - define a structure  
`Bill = person name:"Bill" height:72 age:34 sex:#male` - create instance of structure 

## Built In Functions
#### random
`random 0 250` returns random integer  
`random 1.0 100` returns random float  
`seed 5` uses the seed to change the way random is generated

#### other
- `move camera[2] [x, y, z]` moves object with Point3 vector distances  
- `scale obj1 [x, y, x]` scales object by selected values  
- `rotate obj1 (eulerangles x y z)` rotate object by selected angles  
- `addModifier obj1 (twist angle:30)` create selected modifier on object   
    - change with `mybox.twist.angle = 60`
- `distance obj1 obj2` returns the distance between `obj1` and `obj2`  
- `isDeleted obj1` returns `true` or `false` checks if object is deleted  
- `showClass "box.*"` prints information about selected class properties  
- `showProperties "box.*"` similar inspector fuunction as `showClass`  

#### object creation
`box()` just simple box (1, 1, 1)  
`mybox = box length:20 width:20 height:20` create and assign to a variable  

#### object sets - reserved names
name | description | special properties
-|-|-
objects | all the objects | pivot
geometry  | the standard 3ds Max categories | 
lights | all the lights | multiplier
cameras | all cameras |
helpers | all helpers | 
shapes | all shapes |
systems | all systems |
spacewarps | all spacewraps |
selection | the current selection or `$` | 

#### object set functions and properties
property | return value | description
-|-|-
`<objectset>.center` | Point3 | Returns center of bounding box of all objects in set.
`<objectset>.max` | Point3 | Returns maximum corner of bounding box.
`<objectset>.min` | Point3 | Returns minimum corner of bounding box.
`<objectset>.count` | Integer | Returns number of objects in set.
`<objectset>[<integer>]` | | Select member - index starts from 1
`<objectset> as array` | | creates array from object set
`clearSelection()` | | Clears current scene node selection.
`deselect <PathName>` | | Deselects given node(s).
`select <PathName>` | | Deselects any current selection first, then selects the specified nodes.
`selectMore <PathName>` | | Adds the specified node(s) to the current selection.
`getCurrentSelection()` | | Returns the current selection as an array but not a copy
`$helpers/d*` | | Use ObjectSets as the root of a pathname

#### standard properties
- *general* - name, wirecolor
- *creation* - width, height, length, radius
- *transformation* - scale, rotation, position  
- *geometry* - lengthsegs, widthsegs, heightsegs, mapCoords

## Paths in MAX Script
`$box01` object named 'box01'  
`$dummy/head/neck` hierarchy path name  
`$*box*` all objects with 'box' in the name  
`$torso/*` all the direct children of $torso  
`$helpers/d*` all helper objects whose name starts with 'd'  

#### Special Characters
- `*` character - used to match all - before or after part of name
- `?` matches only single any character `$box0?` will match `$box01`, `$box02`
- `...` skips hierarchy  `$dummy/.../box*` or `$dummy...box*` will find child box at any level

## Animation
#### Functions
```py
animate on
(
  at time 0 (mybox.pos = [-100, 0, 0]; mybox.scale = [1, 1, 0.25])
  at time 100 (mybox.pos = [100, 0, 0]; mybox.scale = [1, 1, 3])
)
```

#### Time values
`2.5s` - 2.5 seconds  
`20f` - 20 frames  
`4800t` - 4800 ticks = 1 sec  
`1m3s5f` - 1 min, 3 seconds, 5 frames  
`1:15.5` - SMPTE: 1 min, 15 seconds, 5 frames  

## MAX Commands - use `max` keyword 
- `max file open`
- `max unhide all`
- `max quick render`