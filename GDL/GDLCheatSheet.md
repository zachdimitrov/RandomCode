### Simple 3D Syntax Table

NAME | SYNTAX | OTHER INFO
--- | --- | ---
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

### Complex 3D Syntax Table

NAME | SYNTAX | OTHER INFO
--- | --- | ---
**elbow** | ```ELBOW rad1, alpha, rad2``` | creates a curved cylinder
**prism** | ```PRISM n, h, x1,y1, x2,y2,...etc``` | simple prism (n - number of points, h - height)
**prism_**| ```PRISM_ n, h, x1,y1,15, x2,y2,15,...etc``` |  15 is a polyline code
**cprism_**| ```cPrism_ t,b,s,n,h, x1,x2,15...etc``` | t-top, b-base, s-side material
**bprism_**| ```bPrism_ t,b,s,n,h,r x1,x2,15...etc```| r-radius of bending
**hprism_/fprism_**| ```hPrism_ t,b,s,n,h,r,A,Hh,Hs x1,x2,15...etc```| A-angle of lsant, Hh - hill height, Hs, hill status
**sprism_**| ```SPRISM_ ... ``` | adds a cutplane, but its easier to use cutplane

we can create hole in **prism_** when we add a second prism inside it  
*MASKING CODES*
- **1** - draws the bottom edge line
- **2** - draws the vertical side line
- **4** - draws the top edge line
- **8** - draws the side surface as solid
- **15** - standart point in prisms - does all the above 
- **-1** - end point (same coords with start point  
- **64** - smooths edges
- **15+64** - everything + smooth edges
- **15-2** (13) - removes vertical lines  
- **1000+15-2** (1013) - makes outer curve and removes vertical lines  
- **900** - start circular hole  
- **4000** - end circular hole  

### RESOL, RADIUS, TOLER

NAME | SYNTAX | OTHER INFO
--- | --- | ---
**resolution** | ```RESOL value``` | sets the resolution of curved shapes  
**radius** | ```RADIUS rmin, rmax``` | gives 3 resolution values depending on radius
**tolerance**| ```TOLER value```| defines the minimum arc height for curve

### Write 3D Text
```
DEFINE STYLE 'styleName' 'Arial', 1000, 7, 0
PEN gs_cont_pen
MATERIAL text_mat
TOLER 0.002
SET STYLE 'styleName'
TEXT depth, 0 , 'message'
```

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

### 3D PLanar Elements Syntax Table

 SYNTAX | EXAMPLE
 --- | ---
**CIRCLE** |CIRCLE radius
**ARC** |ARC radius, startangl, endangl
**LIN_** |LIN_ x1,y1,z1, x2,y2,z2
**POLY** |POLY number, x1,y1, x2,y2,... etc
**POLY_** |POLY_ number, x1,y1,mask, x2,y2,mask,... etc
**PLANE** |PLANE number, x1,y1,z1, x2,y2,z2,... etc
**SLAB** |SLAB number, height, x1,y1,z1, x2,y2,z2,... etc
**SLAB_**|SLAB_ number, height, x1,y1,z1,mask, x2,y2,z2,mask... etc
**cSLAB_**|SLAB_ Tmat, Bmat, Smat, number, height, x1,y1,z1,mask, x2,y2,z2,mask... etc

### Statements

**IF** *condition* **THEN** *do something* **ELSE** *do another thing* **ENDIF**   
**MODEL** WIRE  
**MODEL** SURFACE  
**MODEL** SOLID  
**SHADOW** ON  
**SHADOW** OFF  

### Loops  
**FOR** k=1 **TO** n  
 ! do something  
**NEXT** k  
 del n  

##### value lists for user choise
```
VALUES 'cartyp' 'Rolls-Royce', 'Bentley', 'Jaguar's
IF cartyp= 'Rolls-Royce' THEN ct=1
IF cartyp= 'Bentley' THEN ct=2
IF cartyp= 'Jaguar' THEN ct=3        !’ct’ is a flag, we use it then in the main script
```
##### defining range of values
```
VALUES 'len' RANGE [0.05,1.0] STEP 0.05,0.05
VALUES 'wid' RANGE [2",3'-4"] STEP 2",2"
```

### Structured GDL
```
GOSUB 100:
 ! do some work
GOSUB 200:
 ! do some work
END: !end of main logic
100: 
  ! function to be called
200: 
  ! function to be called
RETURN
```
##### Error messages
```PRINT "Warning, this is not correct", value```

### CUTPLANE, CUTEND, CUTPOLY

##### examle with CUTEND
```
! make ADD and ROT adjustments first
MATERIAL 'cutMaterial'
CUTPLANE [angle]  !angle is optional - rotates arount X axis, always cuts above
 ! DEL all cursor adjustments
 ! create object
CUTEND
```
##### example with parameters
```
CUTPLANE x,y,z [,side]
```
##### CUTPOLY
```
CUTPOLYA number, status, depth,
 x1,y1,15, etc.
 [xv,yv,zv] !Optional Vector
```

### GRAPHICAL HOTSPOTS

##### 2D HOTSPOTS

**Syntax:** HOTSPOT2 x,y, hsid, param, flag [,disparam]
```
hsid=hsid+1 !Base
HOTSPOT2 0,0, hsid, A, 1
hsid=hsid+1 !Move
HOTSPOT2 A,0, hsid, A, 2
hsid=hsid+1 !Vector
HOTSPOT2 -1,0, hsid, A,
LINE2 0,0,A,0 !The Object
```
**Rotate** Typical 2D Script for rotating an angle ‘angl’ using
a line of length ‘len’

```
hsid=hsid+1 !Base
HOTSPOT2 len,0, hsid, angl, 4
ROT2 angl
hsid=hsid+1 !Move
HOTSPOT2 len,0, hsid, angl, 5
DEL 1
hsid=hsid+1 !Centre
HOTSPOT2 0,0, hsid, angl, 6
```
##### 3D HOTSPOTS

The same idea as 2D but using 3 coordinates

```
HOTSPOT 0, 0, 0, hsid, blen,1+128
hsid=hsid+1!Move
HOTSPOT blen, 0, 0, hsid, blen,2
hsid=hsid+1!Vect
HOTSPOT -1, 0, 0, hsid, blen,3
```
