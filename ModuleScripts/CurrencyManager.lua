local CurrencyManager = {}

-- increases
function CurrencyManager.AddCurrency(player: Player, Amount, Currency: String)
local leaderstats = player:FindFirstChild("leaderstats")
local currency = leaderstats.Currency
if not currency then return false end
if not leaderstats then return false end

if currency then
currency.Value += amount
    return true
  end    

end 

-- Gets currency.value
function CurrencyManager.GetCurrency(player: Player, Currency: String)

  return player.leaderstats:FindFirstChild(Currency).Value

end 

-- Sets the currency
function CurrencyManager.SetCurrency(player: Player, Amount, Currency: String)

local currency = player.leaderstats:FindFirstChild(Currency)
if not currency then return false

    currency.Value = amount
    return true


end

function CurrencyManager.SubtractCurrency(player: Player, Amount, Currency: String)

  local leaderstats = player:WaitForChild("leaderstats")
  if not leaderstats then return false end

  local currency = leaderstats:FindFirstChild(Currency)

  if not currency then return false end

  currency -= amount
  return true
end
return CurrencyManager
