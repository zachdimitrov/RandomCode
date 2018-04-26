-- Created by Lachezar Lalov --
-- Date 2018.03 --
-- Ver 0.9 --

macroScript SMC_CP09_ category:"A1 scripts"

(

/*
FUNCTIONS
*/
	
	
-- COPY/PASTE FUNCTION --
	
		fn Copy_MOD =
			(
	mCOPTheModifier = modPanel.getCurrentObject ()
	)
	
	fn Paste_MOD =
			(
	if mCOPTheModifier != undefined then
		(
		theModClass = classof mCOPTheModifier
		objs = for i in selection collect i
		for o in objs do
			(
			if validModifier o theModClass then addmodifier o mCOPTheModifier
			)
		)
	)
	
-- BRICK N--
	
				-- BRICK N UVW --

	fn func_BrickN_uvw =
(
	select $Holder_BrickN_UVW
	(Copy_MOD())
	clearselection()
	select $BrickN*
	(Paste_MOD())
	clearselection()
)

				-- BRICK N DISPLACEMENT -- 

	fn func_BrickN_disp =
	(
	select $Holder_BrickN_DISP
	(Copy_MOD())
	clearselection()
	select $BrickN*
	(Paste_MOD())
	clearselection()
)

-- BRICK V --

					-- BRICK V UVW --

fn func_BrickV_uvw =
(
	select $Holder_BrickV_UVW
	(Copy_MOD())
	clearselection()
	select $BrickV*
	(Paste_MOD())
	clearselection()
)

					-- BRICK V DISP --

fn func_BrickV_disp =
(
	select $Holder_BrickV_DISP
	(Copy_MOD())
	clearselection()
	select $BrickV*
	(Paste_MOD())
	clearselection()
)

-- BRICK H --

					-- BRICK H UVW --

fn func_BrickH_uvw =
(
	select $Holder_BrickH_UVW
	(Copy_MOD())
	clearselection()
	select $BrickH*
	(Paste_MOD())
	clearselection()
)

					-- BRICK H DISP --

fn func_BrickH_disp =
(
	select $Holder_BrickH_DISP
	(Copy_MOD())
	clearselection()
	select $BrickH*
	(Paste_MOD())
	clearselection()
)


-- BRICK ABC --

					-- BRICK A UVW --

fn func_BrickA_uvw =
(
	select $Holder_BrickA_UVW
	(Copy_MOD())
	clearselection()
	select $BrickA*
	(Paste_MOD())
	clearselection()
)

					-- BRICK B UVW --

fn func_BrickB_uvw =
(
	select $Holder_BrickB_UVW
	(Copy_MOD())
	clearselection()
	select $BrickB*
	(Paste_MOD())
	clearselection()
)

					-- BRICK C UVW --

fn func_BrickC_uvw =
(
	select $Holder_BrickC_UVW
	(Copy_MOD())
	clearselection()
	select $BrickC*
	(Paste_MOD())
	clearselection()
)

-- SIDING --

					-- SIDING N UVW --

fn func_SidingN_uvw =
(
	select $Holder_SidingN_UVW
	(Copy_MOD())
	clearselection()
	select $SidingN*
	(Paste_MOD())
	clearselection()
)

					-- SIDING N DISP --

fn func_SidingN_disp =
(
	select $Holder_SidingN_DISP
	(Copy_MOD())
	clearselection()
	select $SidingN*
	(Paste_MOD())
	clearselection()
)

					-- SIDING S UVW --

fn func_SidingS_uvw =
(
	select $Holder_SidingS_UVW
	(Copy_MOD())
	clearselection()
	select $SidingS*
	(Paste_MOD())
	clearselection()
)

					-- SIDING S DISP --

fn func_SidingS_disp =
(
	select $Holder_SidingS_DISP
	(Copy_MOD())
	clearselection()
	select $SidingS*
	(Paste_MOD())
	clearselection()
)

					-- SIDING V UVW --

fn func_SidingV_uvw =
(
	select $Holder_SidingV_UVW
	(Copy_MOD())
	clearselection()
	select $SidingV*
	(Paste_MOD())
	clearselection()
)

					-- SIDING V DISP --

fn func_SidingV_disp =
(
	select $Holder_SidingV_DISP
	(Copy_MOD())
	clearselection()
	select $SidingV*
	(Paste_MOD())
	clearselection()
)

-- ROOF --

					-- ROOF N UVW --

fn func_RoofN_uvw =
(
	select $Holder_RoofN_UVW
	(Copy_MOD())
	clearselection()
	select $RoofN*
	(Paste_MOD())
	clearselection()
)

					-- ROOF N DISP --

fn func_RoofN_disp =
(
	select $Holder_RoofN_DISP
	(Copy_MOD())
	clearselection()
	select $RoofN*
	(Paste_MOD())
	clearselection()
)

					-- ROOF M UVW --

fn func_RoofM_uvw =
(
	select $Holder_RoofM_UVW
	(Copy_MOD())
	clearselection()
	select $RoofM*
	(Paste_MOD())
	clearselection()
)

					-- ROOF M DISP --

fn func_RoofM_disp =
(
	select $Holder_RoofM_DISP
	(Copy_MOD())
	clearselection()
	select $RoofM*
	(Paste_MOD())
	clearselection()
)

-- PRECAST --

fn func_Precast_uvw =
(
	select $Holder_Precast_UVW
	(Copy_MOD())
	clearselection()
	select $Precast*
	(Paste_MOD())
	clearselection()
)

-- CONCRETE --

				-- CONCRETE UVW --

fn func_Concr_uvw =
(
	select $Holder_Concr_UVW
	(Copy_MOD())
	clearselection()
	select $Concr*
	(Paste_MOD())
	clearselection()
)
				-- CONCRETE DISP --

fn func_Concr_disp =
(
	select $Holder_Concr_DISP
	(Copy_MOD())
	clearselection()
	select $Concr*
	(Paste_MOD())
	clearselection()
)

				-- CURB UVW --

fn func_Curb_uvw =
(
	select $Holder_Curb_UVW
	(Copy_MOD())
	clearselection()
	select $Curb*
	(Paste_MOD())
	clearselection()
)
				-- CURB DISP --

fn func_Curb_disp =
(
	select $Holder_Curb_DISP
	(Copy_MOD())
	clearselection()
	select $Curb*
	(Paste_MOD())
	clearselection()
)

				-- SIDEWALK UVW --

fn func_Sidew_uvw =
(
	select $Holder_SideW_UVW
	(Copy_MOD())
	clearselection()
	select $SideW*
	(Paste_MOD())
	clearselection()
)
				-- SIDEWALK DISP --

fn func_Sidew_disp =
(
	select $Holder_SideW_DISP
	(Copy_MOD())
	clearselection()
	select $SideW*
	(Paste_MOD())
	clearselection()
)

-- GRASS --

				-- GRASS UVW --

fn func_Grass_uvw =
(
	select $Holder_Grass_UVW
	(Copy_MOD())
	clearselection()
	select $Grass*
	(Paste_MOD())
	clearselection()
)
				-- GRASS DISP --

fn func_Grass_disp =
(
	select $Holder_Grass_DISP
	(Copy_MOD())
	clearselection()
	select $Grass*
	(Paste_MOD())
	clearselection()
)

-- ASPHALT --

				-- ASPHALT UVW --

fn func_Asph_uvw =
(
	select $Holder_Asph_UVW
	(Copy_MOD())
	clearselection()
	select $Asph*
	(Paste_MOD())
	clearselection()
)
				-- ASPHALT DISP --

fn func_Asph_disp =
(
	select $Holder_Asph_DISP
	(Copy_MOD())
	clearselection()
	select $Asph*
	(Paste_MOD())
	clearselection()
)


/*
ON BUTTON PRESSED DO
*/

Rollout rollout_all "All"
(
	button B_ALL "Add All mods"
on B_ALL pressed do (func_BrickN_uvw() func_BrickN_disp() func_BrickV_uvw() func_BrickV_disp() func_BrickH_uvw() func_BrickH_disp() func_BrickA_uvw() func_BrickB_uvw() func_BrickC_uvw() 
	func_SidingN_uvw() func_SidingN_disp() func_SidingS_uvw() func_SidingS_disp() func_SidingV_uvw() func_SidingV_disp()
	func_RoofN_uvw() func_RoofN_disp() func_Precast_uvw() func_Concr_uvw()  func_Curb_uvw()
	func_Sidew_uvw() func_Grass_uvw() func_Grass_disp() func_Asph_uvw())
)

Rollout rollout_bricks "Bricks"
(
	button B_All_Bricks "Add mods to all Bricks"
	button B_BrickN_uvw "Add BrickN UVW map"
	button B_BrickN_disp "Add BrickN Displacemen"
	button B_BrickV_uvw "Add BrickV UVW map"
	button B_BrickV_disp "Add BrickV Displacemen"
	button B_BrickH_uvw "Add BrickH UVW map"
	button B_BrickH_disp "Add BrickH Displacemen"
	button B_BrickA_uvw "Add BrickA UVW map"
	button B_BrickB_uvw "Add BrickB UVW map"
	button B_BrickC_uvw "Add BrickC UVW map"
on B_All_Bricks pressed do (func_BrickN_uvw() func_BrickN_disp() func_BrickV_uvw() func_BrickV_disp() func_BrickH_uvw() func_BrickH_disp() func_BrickA_uvw() func_BrickB_uvw() func_BrickC_uvw())
on B_BrickN_uvw pressed do (func_BrickN_uvw())
on B_BrickN_disp pressed do (func_BrickN_disp())
on B_BrickV_uvw pressed do (func_BrickV_uvw())
on B_BrickV_disp pressed do (func_BrickV_disp())
on B_BrickH_uvw pressed do (func_BrickH_uvw())
on B_BrickH_disp pressed do (func_BrickH_disp())
on B_BrickA_uvw pressed do (func_BrickA_uvw())
on B_BrickB_uvw pressed do (func_BrickB_uvw())
on B_BrickC_uvw pressed do (func_BrickC_uvw())
)

Rollout rollout_siding "Siding"
(
	button B_All_Siding "Add mods to all Siding"
	button B_SidingN_uvw "Add SidingN UVW map"
	button B_SidingN_disp "Add SidingN Displacemen"
	button B_SidingS_uvw "Add SidingS UVW map"
	button B_SidingS_disp "Add SidingS Displacemen"
	button B_SidingV_uvw "Add SidingV UVW map"
	button B_SidingV_disp "Add SidingV Displacemen"
	button B_SidingB_uvw "Add SidingB UVW map"
	button B_SidingB_disp "Add SidingB Displacemen"
on B_All_Siding pressed do (func_SidingN_uvw() func_SidingN_disp() func_SidingS_uvw() func_SidingS_dips() func_SidingV_uvw() func_SidingV_disp() func_SidingB_uvw() func_SidingB_disp()) 
on B_SidingN_uvw pressed do (func_SidingN_uvw())
on B_SidingN_disp pressed do (func_SidingN_disp())
on B_SidingS_uvw pressed do (func_SidingS_uvw())
on B_SidingS_disp pressed do (func_SidingS_disp())
on B_SidingV_uvw pressed do (func_SidingV_uvw())
on B_SidingV_disp pressed do (func_SidingV_disp())
on B_SidingB_uvw pressed do (func_SidingB_uvw())
on B_SidingB_disp pressed do (func_SidingB_disp())

)

Rollout rollout_other "Other"
(
	button B_RoofN_uvw "Add RoofN UVW map"
	button B_RoofN_disp "Add RoofN Displacemen"
	button B_RoofM_uvw "Add RoofM UVW map"
	button B_RoofM_disp "Add RoofM Displacemen"
	
	button B_Precast_uvw "Add Precast UVW map"
	button B_Precast_disp "Add Precast Displacemen"
	
	button B_Concr_uvw "Add Concrete UVW map"
	button B_Concr_disp "Add Concrete Displacemen"
	
	button B_Grass_uvw "Add Grass UVW map"
	button B_Grass_disp "Add Grass Displacemen"
	
	button B_Asph_uvw "Add Asphalt UVW map"
	button B_Asph_disp "Add Asphalt Displacemen"

on B_RoofN_uvw pressed do (func_RoofN_uvw())
on B_RoofN_disp pressed do (func_RoofN_disp())
on B_RoofM_uvw pressed do (func_RoofM_uvw())
on B_RoofM_disp pressed do (func_RoofM_disp())
	
on B_Precast_uvw pressed do (func_Precast_uvw())
on B_Precast_disp pressed do (func_Precast_disp())

on B_Concr_uvw pressed do (func_Concr_uvw())
on B_Concr_disp pressed do (func_Concr_disp())
	
on B_Grass_uvw pressed do (func_Grass_uvw())
on B_Grass_disp pressed do (func_Grass_disp())

on B_Asph_uvw pressed do (func_Asph_uvw())
on B_Asph_disp pressed do (func_Asph_disp())
)

SMC_mods_copy = newrolloutfloater "SMC mods adder" 200 200
addrollout rollout_all SMC_mods_copy rolledUp:false
addrollout rollout_bricks SMC_mods_copy rolledUp:true
addrollout rollout_siding SMC_mods_copy rolledUp:true
addrollout rollout_other SMC_mods_copy rolledUp:true

)
	 
	