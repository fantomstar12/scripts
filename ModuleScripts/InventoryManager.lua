local InventoryManager = {}

-- INVENTORY MANAGER handles player inventory
function InventoryManager:SearchTool(itemName: string)
  -- search in replicatedstorage
for _, item in game.ReplicatedStorage:GetDescendants() do
   if item.Name == itemName and item:IsA("Tool") then
          return itemName
end 
      end
function InventoryManager.AddItem(player: Player, ItemName: String)
local item = InventoryManager:SearchTool(ItemName)
      if not item or ItemName then return false end
      if not player then return false end

      local playerBackpack = player.Backpack
      local clone = item:Clone()
      clone.Parent = playerBackpack
      return true
end 

return InventoryManager
