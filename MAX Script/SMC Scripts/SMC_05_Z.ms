-- Created by Lachezar Lalov, modified by Zach --
-- Date 2018.03 --
-- Ver 0.9.1 --

-- macroScript SMC_CP09_ category:"A1 scripts" (
    /*******  LIST OF MATERIAL NAMES *******/
    -- each base material name is first in collection followed by suffxes for actual materials (example: Brick + N = BrickN)
    -- other materials collections starts with "Other" - this can be simplified
    materialNames = #(
        -- bricks --
        #("Brick", "V", "H", "A", "B", "C", "N", "S"), 
        -- sidings --
        #("Siding", "N", "S", "V", "B"),
        -- roofs --
        #("Roof", "N", "M"), 
        -- trims --
        #("Trim", "N", "M"), 
        -- doors --
        #("Door", "F", "G"), 
        -- other --
        #("Other", "Int", "Curt", "Door", "Handle", "Shutter", "Precast", "Stone", "Glass", "Metal", "Concr", "Curb", "SideW", "Grass", "Asph")
    )
	
    /*******  FUNCTIONS *******/
    -- copy/paste fuction   
	-- global mCOPTheModifier
	
    fn Copy_MOD = (
        mCOPTheModifier = modPanel.getCurrentObject ()
    )
        
    fn Paste_MOD = (
        if mCOPTheModifier != undefined then (
            theModClass = classof mCOPTheModifier
            if (theModClass as string) != "Box" then (
                objs = for i in selection collect i
                for o in objs do (
                    if validModifier o theModClass then addmodifier o mCOPTheModifier
                )
            )
        )
    )
        
    -- declare main function
    fn func_apply_modifier objectName modifierName = (
		if modifierName != undefined or modifierName != "" then (
			modSelected = execute modifierName
			if modSelected != undefined then (
				select modSelected
				Copy_MOD()
				clearselection()
			)
		)
		
		if objectName != undefined or "" then (
			objSelected = execute objectName
			if objSelected != undefined then (
				select objSelected
				Paste_MOD()
				clearselection()
			)
		)
    )

    -- helper functions to create object and modifier name
    fn objName mainName suffix = "$" + mainName + suffix + "*"
    fn uvwName mainName suffix = "$Holder_" + mainName + suffix + "_UVW"
    fn dispName mainName suffix = "$Holder_" + mainName + suffix + "_DISP"

    -- helper function to apply all modifiers based on material name and suffix (example: Brick, A)
    fn apply_all_modifiers nm su = (
        n = objName nm su
        u = uvwName nm su
        d = dispName nm su

        func_apply_modifier n u
        func_apply_modifier n d
    )

    /********* CREATE UI **********/

    -- create rollout for All materials - easy, no loops, only one button
    Rollout rollout_all "All" (
        button B_ALL "Add All mods" align: #left border: true

        -- button "All" pressed event handler - for each material name and suffix add all modifiers
        on B_ALL pressed do (
            for i = 1 to materialNames.count do (
                m = materialNames[i]
                mainName = m[1]
                for j = 2 to m.count do (
                    if mainName == "Other" then (
                        apply_all_modifiers m[j] ""
                    ) else (
                        apply_all_modifiers mainName m[j]
                    )
                )
            )
        )
    )

	-- create rollouts and buttons for each material based on main material and suffix
	str = ""

    for i = 1 to materialNames.count do (
        m = materialNames[i]
        mainName = m[1]
		rollName = "rollout_single_" + i as string

		str+= "Rollout " + rollName + mainName + " \"" + mainName + "\" " + "(" + "\n" +
            "button " + "btn_all" + i as string + " \"Add mods to all " + mainName + "s\" align: #left\n" +
            "on "+"btn_all" + i as string + " pressed do ("
			for j = 2 to m.count do ( str+="apply_all_modifiers \"" + mainName + "\"  \"" + m[j] + "\"\n")
			str+= ")\n"
		
            for j = 2 to m.count do (
				if mainName != "Other" then (
					mn = mainName
					su = m[j]
				) else (
					mn = m[j]
					su = ""
				)
				
				fullName = mn + su
				
                str += "button bu_" + i as string +"_" + j as string + " \"Add " + fullName+ " UVW map\" align: #left\n" +
                "on bu" + i as string +"_" + j as string + " pressed do (func_apply_modifier "+ objName mn su as string  +" " + uvwName mn su as string  + ")\n" +
                "button bd" + i as string +"_" + j as string +  " \"Add " + fullName + " Displacement map\" align: #left\n" +
                "on bd" + i as string +"_" + j as string + " pressed do (func_apply_modifier "+ objName mn su as string +" " + dispName mn su as string  + ")\n"
            )
			
        str += ")\n" +
		"addrollout " + rollName + mainName + " SMC_mods_copy rolledUp:true\n"
    )
	
	-- add the UI and apply the built script
	SMC_mods_copy = newrolloutfloater "SMC mods adder" 200 200
	addrollout rollout_all SMC_mods_copy rolledUp:false
	execute str
-- )