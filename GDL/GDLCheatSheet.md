### Simple 3D Syntax Table

NAME | SYNTAX | OTHER INFO
--- | --- | ---
**resolution** | ```RESOL value``` | sets the resolution of curved shapes  
**block** |      ```BLOCK x, y, z``` |  cherates block with dimentions - x, y, z
**cylinder** |   ```CYLIND height, radius``` |  to change position before creating objects
**sphere** |     ```SPHERE radius```  | use ```DEL 1``` to move cursor one steb back
**cone**  |      ```CONE height, radius1, radius2, cut1, cut2``` |  cuts are angles around Y axis (90, 90 is horisontal cut)  
**elipsis**  |   ```ELLIPS height, radius``` | this creates half ellipse  
**move** | ```ADD x, y, z``` | moves cursor to the cpecified by **x, y, z** position
**move X (Y,Z)** | ```ADDx value``` | moves cursor on specified axis only with the specified value 
**rotate** |  ```ROT x, y, z```  | rotates cursor axises to the cpecified by **x, y, z** degrees around each axis
**rotate X (Y,Z)** | ```ROTx value``` | rotates only from the specified axis - angle is formed on the **XZ** plane
**scale** | ```MUL x, y, z``` | multiplies the given objects dimentions by the values given for each axis (-1 for reverse)
**scale X (Y,Z)** | ```MULx value``` | works the same way as ROT and ADD
**complex tool** | ```XFORM``` | combines the above tools in one
**return position** | ```DEL value``` | returns the cursor with the number of moves specified by value
**return to initial** | ```DEL TOP``` | returns cursor to its initial position (works if no move is made)
**pen color** | ```PEN value``` | defines the number of the pen used (from existing pens)
**material** | ```MATERIAL "name"``` | defines the material used (from existing materials)
**hotspot** | ```HOTSPOT a, b, c``` | hotspot to a, b, c coordinates in 3D space

### Simple 2D Syntax Table

NAME | SYNTAX | OTHER INFO
--- | --- | ---
**2D manipulation** | ```ADD2, ROT2, MULL2``` | works the same way but with XY coordinates only
**line** | ```LINE2 x1, y1, x2, y2``` | simple 2D line
**circle** | ```CIRCLE2 x, y, r``` | simple circle
**arc** | ```ARC2 x, y, r, startA, endA``` | r is for radius, A is for angle
**text** | ```TEXT2 x, y, 'string'``` | writes text (works with DEFINE STYLE)
**project 2D** | ```PROJECT2 3,270,2``` | simple 2D script for top view in hidden line
**hotspot 2D** | ```HOTSPOT2 a, b``` | adds a 2D hotspot to a, b coordinates
**hotarc 2D** | ```HOTARC2 x, y, r, startA, endA``` | same as ARC2

### Statements

**IF** *rule* **THEN** *do something* **ELSE** *do another thing* **ENDIF** 

