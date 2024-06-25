--@name GodDesu SF loader KARTs (Lib)
--@author desu
--@shared
--@include https://raw.githubusercontent.com/DarcyZx/DesuMeshLoader/main/MeshLoader.lua as desu_mesh_loader.txt

require("desu_mesh_loader.txt")


if CLIENT then
  --loadOBJFromURL(string "URL to .obj", int Scale or nil, int ZOffset)
  --the URL must be a direct link to the raw .obj file
  --the scale value determines the scale of the mesh once loaded in and it is optional
  --Z Offset is relative to the world, if the pitch and roll of the chip is not zero it will not line up the seperate objects correctly, Z Offset is also optional
  loadOBJFromURL("https://raw.githubusercontent.com/DarcyZx/Karts/main/Karts.obj",80) 
  
  --you'll have one addObjectTexturePair line for each object within the .obj file
  --addObjectTexturePair(string "Object name", string "URL to texture image", string "URL to bumpmap image", int Flag or nil)
  --the "Object name" can be found in the .obj file, but it is much easier to open the .obj in Blender and copy them from the menu on the right side
  --the texture image must be 1024x1024 resolution, with the current implementation if two objects use the same texture it must be loaded for each of them, I'll probably fix this eventually
  --bumpmap images follow the same 1024x1024 rule as the base texture image, bumpmaps are optional, if the 3rd arg is an integer instead of a string it will be treated as a flag
  --the flag values can be found here: https://developer.valvesoftware.com/wiki/Material_Flags, they are optional
  --objName is for No Render Lightning on the Mesh (Only can be one)
  --you can disable others meshes by making them into comments

  --addObjectTexturePair("Bomber", "https://raw.githubusercontent.com/DarcyZx/Karts/main/boomber_kart_texture.png")

  objName = "Barrel"

  addObjectTexturePair("Barrel", "https://raw.githubusercontent.com/DarcyZx/Karts/main/ChavoKart_D.png")

  createMeshFromOBJ()

end
