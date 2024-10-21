> Scordey:
-- Decompiled with the Synapse X Luau decompiler.
repeat wait() until game:IsLoaded()


local l__LocalPlayer__1 = game.Players.LocalPlayer;
if not l__LocalPlayer__1.Character then
  local v2 = l__LocalPlayer__1.CharacterAdded:Wait();
end;
local l__CurrentCamera__3 = game.Workspace.CurrentCamera;
local l__music__4 = script:WaitForChild("music");
local l__infopack__5 = l__LocalPlayer__1:WaitForChild("infopack");
local l__TweenService__6 = game:GetService("TweenService");
local l__UserInputService__7 = game:GetService("UserInputService");
local l__FP__8 = l__LocalPlayer__1:WaitForChild("infopack"):WaitForChild("FP");
local l__Xbox__9 = l__LocalPlayer__1:WaitForChild("infopack"):WaitForChild("Xbox");
local l__Parent__10 = script.Parent;
local l__fade__11 = l__Parent__10:WaitForChild("fade");
local l__TextLabel__12 = l__fade__11:WaitForChild("TextLabel");
local l__difficulty__13 = l__Parent__10:WaitForChild("difficulty");
local l__easy__14 = l__difficulty__13:WaitForChild("Frame"):WaitForChild("easy");
local l__hard__15 = l__difficulty__13:WaitForChild("Frame"):WaitForChild("hard");
local l__TextButton__16 = l__Parent__10:WaitForChild("Frame"):WaitForChild("TextButton");
local l__FPbutton__17 = l__difficulty__13:WaitForChild("Frame"):WaitForChild("FPbutton");
local l__explain__18 = l__difficulty__13:WaitForChild("Frame"):WaitForChild("explain");
local l__explain2__19 = l__difficulty__13:WaitForChild("Frame"):WaitForChild("explain2");



l__LocalPlayer__1.PlayerGui:WaitForChild("ShopScreen");
if l__LocalPlayer__1.PlayerGui:FindFirstChild("ShopScreen") then
  l__LocalPlayer__1.PlayerGui.ShopScreen.Enabled = false;
  l__LocalPlayer__1.PlayerGui.ShopScreen:WaitForChild("go").Disabled = true;
end;
wait(1);
local l__BadgeService__23 = game:GetService("BadgeService");
if l__BadgeService__23:UserHasBadge(l__LocalPlayer__1.UserId, 2125057370) then
  l__difficulty__13:WaitForChild("Frame"):WaitForChild("easybox"):WaitForChild("ImageLabel").ImageTransparency = 0;
else
  print("The user does not have this badge");
end;
if l__BadgeService__23:UserHasBadge(l__LocalPlayer__1.UserId, 2125057382) then
  l__difficulty__13:WaitForChild("Frame"):WaitForChild("habox"):WaitForChild("ImageLabel").ImageTransparency = 0;
else
  print("The user does not have this badge");
end;
l__music__4:Play();
for v25 = 1, 4 do
  for v26 = 1, 20 do
    l__TextLabel__12.TextTransparency = l__TextLabel__12.TextTransparency - 0.05;
    wait();
  end;
  for v27 = 1, 20 do
    l__TextLabel__12.TextTransparency = l__TextLabel__12.TextTransparency + 0.05;
    wait();
  end;
  wait();
end;
for v28 = 1, 20 do
  l__fade__11.BackgroundTransparency = l__fade__11.BackgroundTransparency + 0.05;
  wait();
end;
l__fade__11:Destroy();
l__UserInputService__7.InputBegan:Connect(function(p1)
  if p1.UserInputType == Enum.UserInputType.Gamepad1 and l__Parent__10.Enabled == true and p1.KeyCode == Enum.KeyCode.ButtonA and l__Xbox__9.Value == false then
    l__Xbox__9.Value = true;
    print("Xbox User");
  end;
end);
local u1 = false;
local u2 = true;
l__FPbutton__17.MouseButton1Click:Connect(function()
  if u1 then
    u1 = false;
    script.press:Play();
    if u2 then
      u2 = false;
      l__FPbutton__17.BackgroundColor3 = Color3.new(1, 0.258824, 0.109804);
      l__FPbutton__17.Text = "OFF";
      l__FP__8.Value = true;
    else
      l__FPbutton__17.BackgroundColor3 = Color3.fromRGB(73, 245, 142);
      l__FPbutton__17.Text = "ON";
      u2 = true;
      l__FP__8.Value = false;
    end;
    wait(0.2);
    u1 = true;
  end;
end);
local u3 = true;
local u4 = false;
l__TextButton__16.MouseButton1Click:Connect(function()
  if u3 then
    u3 = false;
    script.press:Play();
    --l__TextButton__16:Destroy();
    l__TextButton__16.Transparency = 1 
    l__difficulty__13.Enabled = true;
    u4 = true;
    u1 = true;
  end;
end);
l__easy__14.MouseEnter:Connect(function()
  l__explain__18.Text = "Enjoy a fun experience and breeze through the game.";
  l__explain__18.BackgroundTransparency = 0;
end);
l__easy__14.MouseLeave:Connect(function()
  l__explain__18.Text = "";
l__explain__18.BackgroundTransparency = 1;
end);
l__hard__15.MouseEnter:Connect(function()
  l__explain2__19.Text = "A much more challenging experience. Guards will run Faster and more Traps to avoid.";
  l__explain2__19.BackgroundTransparency = 0;
end);
l__hard__15.MouseLeave:Connect(function()
  l__explain2__19.Text = "";
  l__explain2__19.BackgroundTransparency = 1;
end);
l__hard__15.MouseButton1Click:Connect(function()
  if u4 then
    u4 = false;
    l__infopack__5.easy.Value = true;
    script.press:Play();
    l__difficulty__13.Enabled = false;
    wait(0.5);
    for v31 = 1, 10 do
      l__Parent__10.Frame.BackgroundTransparency = l__Parent__10.Frame.BackgroundTransparency - 0.1;
      wait();
    end;
    script.easyleaderboard.Disabled = false;
    Instance.new("IntValue", l__LocalPlayer__1).Name = "Ready";
    l__CurrentCamera__3.CameraType = Enum.CameraType.Custom;
    l__CurrentCamera__3.CameraSubject = l__LocalPlayer__1.Character.Humanoid;
    --l__LocalPlayer__1.Character.FirstPerson.Disabled = true;
    --l__LocalPlayer__1.Character.pol1.Disabled = true;
    --v20:Remove();
    wait(0.1);
    --l__LocalPlayer__1.Character.FirstPerson.Disabled = false;
    --l__LocalPlayer__1.Character.pol1.Disabled = false;
    wait(1);
    for v32 = 1, 10 do
      l__Parent__10.Frame.BackgroundTransparency = l__Parent__10.Frame.BackgroundTransparency + 0.1;
      l__music__4.Volume = l__music__4.Volume - 0.05;
      wait();
    end;
    --l__music__4:Stop();
    --  v24:Destroy();
    l__LocalPlayer__1.PlayerGui.ServerTimeGui.Enabled = true;
    l__LocalPlayer__1.PlayerGui.ServerTimeGui.Frame.go.Disabled = false;
    if l__LocalPlayer__1.PlayerGui:FindFirstChild("ShopScreen") then
      l__LocalPlayer__1.PlayerGui.ShopScreen.Enabled = true;
      l__LocalPlayer__1.PlayerGui.ShopScreen:WaitForChild("go").Disabled = false;
    end;
  end;
end);
l__easy__14.MouseButton1Click:Connect(function()
  if u4 then
    u4 = false;
    l__infopack__5.easy.Value = true;
    script.press:Play();
    l__difficulty__13.Enabled = false;
    wait(0.5);
    for v31 = 1, 10 do
      l__Parent__10.Frame.BackgroundTransparency = l__Parent__10.Frame.BackgroundTransparency - 0.1;
      wait();
    end;
    script.easyleaderboard.Disabled = false;
    Instance.new("IntValue", l__LocalPlayer__1).Name = "Ready";
    l__CurrentCamera__3.CameraType = Enum.CameraType.Custom;
    l__CurrentCamera__3.CameraSubject = l__LocalPlayer__1.Character.Humanoid;
    --l__LocalPlayer__1.Character.FirstPerson.Disabled = true;
    --l__LocalPlayer__1.Character.pol1.Disabled = true;
    --v20:Remove();
    wait(0.1);
    --l__LocalPlayer__1.Character.FirstPerson.Disabled = false;
    --l__LocalPlayer__1.Character.pol1.Disabled = false;
    wait(1);
    for v32 = 1, 10 do
      l__Parent__10.Frame.BackgroundTransparency = l__Parent__10.Frame.BackgroundTransparency + 0.1;
      l__music__4.Volume = l__music__4.Volume - 0.05;
      wait();
    end;
    --l__music__4:Stop();
  --  v24:Destroy();
    l__LocalPlayer__1.PlayerGui.ServerTimeGui.Enabled = true;
    l__LocalPlayer__1.PlayerGui.ServerTimeGui.Frame.go.Disabled = false;
    if l__LocalPlayer__1.PlayerGui:FindFirstChild("ShopScreen") then
      l__LocalPlayer__1.PlayerGui.ShopScreen.Enabled = true;
      l__LocalPlayer__1.PlayerGui.ShopScreen:WaitForChild("go").Disabled = false;
    end;
  end;
end);
