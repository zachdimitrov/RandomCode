### Simple Syntax Table

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
