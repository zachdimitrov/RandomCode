for i in selection do 
(
  local selobjs
  local parent_array = #()
  local temp_array = #()

  selobjs = for o in selection as array where isGroupHead o == false collect o

  for i in selobjs where (finditem temp_array i == 0) do 
  (
    InstanceMgr.GetInstances i &inst_array
    append parent_array inst_array[1]
    join temp_array inst_array
  )

  pickText =  "Get Material:"
  if keyboard.shiftpressed then pickText = "Get Material and Modifiers:"
    obj = pickObject message:pickText

  if obj!=undefined then
  (
    if obj.material!= undefined do 
    (
      for i in selobjs do i.material=obj.material
      format (obj.material.name + "\n")
    )

    if keyboard.shiftpressed do
    (
      try
      (
        x=obj.modifiers.count+1
        while x>1 do
        (
          objmod=obj.modifiers[x-=1]
          for obj in parent_array do addModifier obj objmod
        )
      )catch()
    )
  )
)

clearselection ()