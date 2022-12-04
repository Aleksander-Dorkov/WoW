hooksecurefunc("CompactUnitFrame_UpdateName", function(frame)
    if ShouldShowName(frame) then
        SetCVar("nameplateMinAlpha", 1);
        SetCVar("nameplateMaxScaleDistance", 1);
        SetCVar("nameplateMinScaleDistance", 1);
        SetCVar("nameplateSelectedScale", 1.2);
        SetCVar("nameplateGlobalScale", 1.0);
        SetCVar("nameplateOccludedAlphaMult",1);
        SetCVar("ShowClassColorInFriendlyNameplate",0);
        PlayerFrameRoleIcon:Hide();
        C_NamePlate.SetNamePlateFriendlySize(50,100);
        C_NamePlate.SetNamePlateEnemySize(125,40);
        if frame.optionTable.colorNameBySelection then
            frame.name:SetText("")
        end
    end
end)

local f = CreateFrame("frame")
    f:RegisterEvent("PLAYER_LOGIN")
    f:SetScript("OnEvent",function(self)
    DefaultCompactUnitFrameOptions.displayRoleIcon = false
    DefaultCompactUnitFrameOptions.displayName = false
end)
-- frame.name:SetText(GetUnitName(frame.unit))
-- 1,327 702
