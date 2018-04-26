-- Author Nikolay Litvinov from Russia, Kazan
-- Email: gniklit@gmail.com
-- Mattransmitter v1.0

macroScript Mattransmitter
category:"Niklit Scripts"
toolTip:"Mattransmitter"

(
    Try
    (
        myStart = pickobject()
        myEnd = pickobject()
        myEnd.material = myStart.material
        max Select
    )
    Catch()
)

messagebox("Actions are stored in Category: \"Niklit Scripts\"")
messagebox("To use the script: First, the script is run, then Pick Source/Pick Target ")