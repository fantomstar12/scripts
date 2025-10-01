local QuestHandler = {}
local playerQuestData = {}
local Quests = {
  Quest1 = {
    QuestID = "1Q",
    QuestName = "Defeat 5 NPCs.",
    KillsNeeded = 5,
    Done = false,
  }
}

function QuestHandler.StartQuest(player: Player, quest)

local playerUserId = player.UserId
  if not playerQuestData[playerUserId] then
    playerQuestData[playerUserId] = {
    ActiveQuests = {},
    CompletedKills = {},
    CompletedQuests = {},
    }
  end
  local quest = Quests[QuestID]
  if not quest then
    print("Quest not found!")
    return false
--- more yet to come....
    
end  

return QuestHandler
