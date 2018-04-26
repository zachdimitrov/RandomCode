fn selecting what =
(
	try(select (getNodeByName what))
		catch()
)

fn grab andModifiers = 
(
	try
		(
			global grabFrom = selection as array
		)
	catch()
		
		if andModifiers == true then
		(
			global modifs = $.modifiers
		)
		
	print "grab"
	
)

fn give andMaterial andModifiers  = 
(	
	if andMaterial == true then
	(
		$.mat = grabFrom[1].mat
	)
		
	if andModifiers == true then
	(
		for i = modifs.count to 1 by -1 do
		(
			addModifier $ modifs[i]
		)
	)	
	print "give"
)

fn store store_index storage_name = 
(
	if store_index == "1" then
	(
		global storage1 = selection as array
		global storage_name1 = storage_name
	)
	if store_index == "2" then
	(
		global storage2 = selection as array
		global storage_name2 = storage_name
	)
	if store_index == "3" then
	(
		global storage3 = selection as array
		global storage_name3 = storage_name
	) 
)

fn addToSelection store_index =
(
	if store_index == "1" then
	(
		selectionToAppend = selection as array
		for objToAdd in selectionToAppend do
		(			
			append storage1 objToAdd
		)
	)
	
	if store_index == "2" then
	(
		selectionToAppend = selection as array
		for objToAdd in selectionToAppend do
		(			
			append storage2 objToAdd
		)
	)
	
	if store_index == "3" then
	(		
		selectionToAppend = selection as array
		for objToAdd in selectionToAppend do
		(			
			append storage3 objToAdd
		)
	) 
)

fn selecting store_index = 
(
	try
	(
		if store_index == "1" then
		(
			select storage1
		)
		if store_index == "2" then
		(
			select storage2
		)
		if store_index == "3" then
		(
			select storage3
		)
	)
	catch()
)

try(destroydialog myrollout) catch()
rollout myrollout "Raven Operations"
(
	group "Selection sets"
	(
		edittext txt_set1 "Set 1" across:4 width:110
		button btn_select1 "Select" width:40
		button btn_store1 "Store" width:40
		button btn_add1 "Add" width:40
		
		edittext txt_set2 "Set 2" across:4 width:110
		button btn_select2 "Select" width:40
		button btn_store2 "Store" width:40
		button btn_add2 "Add" width:40
		
		edittext txt_set3 "Set 2" across:4 width:110
		button btn_select3 "Select" width:40
		button btn_store3 "Store" width:40
		button btn_add3 "Add" width:40
				
		on btn_store1 pressed do
		(
			store "1" txt_set1.text
		)
		on btn_store2 pressed do
		(
			store "2" txt_set2.text
		)
		on btn_store3 pressed do
		(
			store "3" txt_set3.text
		)
		on btn_select1 pressed do
		(
			selecting "1"
		)
		on btn_select2 pressed do
		(
			selecting "2"
		)
		on btn_select3 pressed do
		(
			selecting "3"
		)
		on btn_add1 pressed do
		(
			addToSelection "1"
		)
		on btn_add2 pressed do
		(
			addToSelection "2"
		)
		on btn_add3 pressed do
		(
			addToSelection "3"
		)
	)
	group "Grab material and modifiers"
	(
		checkbox check_materials "Copy materials" checked:true across:2
		checkbox check_modifiers  "Copy modifiers"  checked:true
		
		button btn_grab "Grab" across:2 width:150
		button btn_give "Give" width:150

		
		on check_materials checked do
		(
				global materiaChecked = true				
		)
		
		on btn_grab pressed do
		(
			grab check_modifiers.checked
		)
	
		on btn_give pressed do
		(
			give check_materials.checked check_modifiers.checked
		)
	)
	
	label rib "Radoslav Banev"
	label year "2018"
	
)
createdialog myrollout 400 215