global hostModels = #()
global schemeModels = #()

try(destroydialog smcMaterials) catch()

rollout smcMaterials "SMC Materials" width:256 height:383
(
	GroupBox grpStdScheme "Standard scheme" pos:[145,80] width:101 height:68 align:#left
	GroupBox grpOptions "Select options" pos:[11,80] width:124 height:68 align:#left
	
	button btnMainSelect "Select target model" pos:[10,10] width:114 height:25 align:#left
	button btnRemove "Remove" pos:[190,10] width:55 height:25 align:#left
	button btnAdd "Add" pos:[130,10] width:55 height:25 align:#left
	
	edittext editSelected "" pos:[10,43] width:233 height:25 align:#left

	checkbox chkModifiers "Copy modifiers" pos:[20,99] width:113 height:25 align:#left
	checkbox chkBaseMats "Base materials only" pos:[20,119] width:113 height:25 align:#left
	button btnApply "Apply" pos:[154,106] width:83 height:33 align:#left
	
	GroupBox grpCustomScheme "Apply custom scheme" pos:[10,152] width:236 height:164 align:#left
	
	on btnMainSelect pressed do
	(
	)

	on btnAdd pressed do
	(
	)

	on btnRemove pressed do
	(
	)

	on btnApply pressed do
	(
	)
)

createDialog smcMaterials 256 512
