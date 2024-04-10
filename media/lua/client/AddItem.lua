
local function get_item()
    local inv = getPlayer():getInventory();
    local itemKatana = inv:FindAndReturn("KabanosKatan.Katanaka")
    if inv:contains("KabanosKatan.Katanaka") and itemKatana:isBroken() then
        inv:Remove(itemKatana)
       inv:AddItem("KabanosKatan.Kamach")
    end
    local itemMachete = inv:FindAndReturn("KabanosKatan.Kamach")
    if inv:contains("KabanosKatan.Kamach") and itemMachete:isBroken() then
        inv:Remove(itemMachete)
        inv:AddItem("KabanosKatan.Lom")
    end
end

--local function hand_wound_randomizer()
    --local rumbleroll = ZombRand(100)
    --if rumbleroll <= 80 then
      --  getPlayer():getBodyDamage():getBodyPart(BodyPartType.Hand_R):AddDamage(1)
   -- end
--end

Events.OnEquipPrimary.Add(get_item)
--Events.OnWeaponSwing.Add(hand_wound_randomizer())