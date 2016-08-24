
                     ! 3D Script
material Mat1
addy -d/2+s/2
addz vd
block a, d, dt
del 2

addy -d/2+s/2
addz zzyzx-vg-dt
block a, d, dt
del 2

addx pst/2-s/2

hsid=hsid+1
hotspot s/2,s/2,0, hsid, PB, 1+256
hsid=hsid+1
hotspot s/2,s/2,-PB, hsid,PB, 2
hsid=hsid+1
hotspot s/2,s/2, 1, hsid, PB, 3

hsid=hsid+1
hotspot s/2,s/2,zzyzx, hsid, PT, 1+256
hsid=hsid+1
hotspot s/2,s/2,zzyzx+PT, hsid,PT, 2
hsid=hsid+1
hotspot s/2,s/2,-1, hsid, PT, 3

hsid=hsid+1
hotspot A/2,0,0, hsid, VD, 1+128
hsid=hsid+1
hotspot A/2,0,VD, hsid,VD, 2
hsid=hsid+1
hotspot A/2,0, -1, hsid, VD, 3

hsid=hsid+1
hotspot A/2,0,zzyzx, hsid, VG, 1+128
hsid=hsid+1
hotspot A/2,0,zzyzx-VG, hsid,VG, 2
hsid=hsid+1
hotspot A/2,0, zzyzx+1, hsid, VG, 3

for i=0 to A-pst/2-s/2 step w

 material Mat1
 if bal then
 block S, S , zzyzx
 endif
 
addx w
next i
del int((A-pst/2-s/2)/w)+1

addy -pst/2+s/2
addx -pst/2+s/2

if post then
addz -PB
block pst, pst , zzyzx+PB+PT
del 1
addx w*bnum
endif

for j=0 to A-w*bnum-pst/2-s/2 step w*bnum

material Mat2
if w*bnum<A and post then
addz -PB
block pst, pst , zzyzx+PB+PT
del 1

addx pst/2-s/2

hsid=hsid+1
hotspot s/2,pst/2,0, hsid, PB, 1+256
hsid=hsid+1
hotspot s/2,pst/2,-PB, hsid,PB, 2
hsid=hsid+1
hotspot s/2,pst/2, 1, hsid, PB, 3

hsid=hsid+1
hotspot s/2,pst/2,zzyzx, hsid, PT, 1+256
hsid=hsid+1
hotspot s/2,pst/2,zzyzx+PT, hsid,PT, 2
hsid=hsid+1
hotspot s/2,pst/2,-1, hsid, PT, 3

del 1

endif

addx w*bnum
next j
                   ! 2D Scrpt
hotspot2 0, s/2
hotspot2 a, s/2
project2 3, 270, 2



