<GameFile>
  <PropertyGroup Name="MainMenuScene" Type="Layer" ID="b8333f93-2c68-474e-b22c-bbc7900d2aab" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="0" Speed="1.0000" />
      <ObjectData Name="Layer" CustomClassName="MainMenuScene" Tag="14" ctype="GameLayerObjectData">
        <Size X="1136.0000" Y="768.0000" />
        <Children>
          <AbstractNodeData Name="background" ActionTag="-893264305" Tag="20" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="468.0000" RightMargin="468.0000" TopMargin="284.0000" BottomMargin="284.0000" TouchEnable="True" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" LeftEage="269" RightEage="269" TopEage="253" BottomEage="253" Scale9OriginX="269" Scale9OriginY="253" Scale9Width="598" Scale9Height="262" ctype="PanelObjectData">
            <Size X="200.0000" Y="200.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="568.0000" Y="384.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="0.1761" Y="0.2604" />
            <FileData Type="Normal" Path="images/homebgr.png" Plist="" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="design_view" ActionTag="920452732" VisibleForFrame="False" Tag="78" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftEage="253" RightEage="253" TopEage="374" BottomEage="374" Scale9OriginX="253" Scale9OriginY="374" Scale9Width="630" Scale9Height="20" ctype="ImageViewObjectData">
            <Size X="1136.0000" Y="768.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="568.0000" Y="384.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="1.0000" Y="1.0000" />
            <FileData Type="Normal" Path="images/design_view.png" Plist="" />
          </AbstractNodeData>
          <AbstractNodeData Name="root" ActionTag="2073270709" Tag="144" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="1136.0000" Y="768.0000" />
            <Children>
              <AbstractNodeData Name="tengame" ActionTag="484458959" Tag="26" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="179.0007" RightMargin="178.9993" TopMargin="91.4501" BottomMargin="366.5499" ctype="SpriteObjectData">
                <Size X="778.0000" Y="310.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="568.0007" Y="521.5499" />
                <Scale ScaleX="0.6500" ScaleY="0.6500" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.6791" />
                <PreSize X="0.6849" Y="0.4036" />
                <FileData Type="Normal" Path="images/title_game.png" Plist="" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
              <AbstractNodeData Name="home_button" ActionTag="-549240132" CallBackType="Click" CallBackName="onPlayButtonClicked" Tag="16" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="425.0005" RightMargin="424.9995" TopMargin="289.4998" BottomMargin="187.5002" TouchEnable="True" FontSize="14" LeftEage="15" RightEage="15" TopEage="5" BottomEage="5" Scale9OriginX="15" Scale9OriginY="5" Scale9Width="256" Scale9Height="281" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="286.0000" Y="291.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="568.0005" Y="333.0002" />
                <Scale ScaleX="0.6500" ScaleY="0.6500" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.4336" />
                <PreSize X="0.2518" Y="0.3789" />
                <TextColor A="255" R="65" G="65" B="70" />
                <PressedFileData Type="Normal" Path="images/button_play2.png" Plist="" />
                <NormalFileData Type="Normal" Path="images/button_play1.png" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="568.0000" Y="384.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="1.0000" Y="1.0000" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="rank" ActionTag="516372189" CallBackType="Click" CallBackName="onRankButtonClicked" Tag="21" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="505.4999" RightMargin="505.5001" TopMargin="601.6000" BottomMargin="38.4000" TouchEnable="True" FontSize="14" LeftEage="15" RightEage="15" TopEage="5" BottomEage="5" Scale9OriginX="15" Scale9OriginY="5" Scale9Width="95" Scale9Height="118" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
            <Size X="125.0000" Y="128.0000" />
            <Children>
              <AbstractNodeData Name="rank_icon" ActionTag="-504732800" Tag="22" IconVisible="False" LeftMargin="32.4221" RightMargin="30.5779" TopMargin="33.7930" BottomMargin="43.2070" LeftEage="17" RightEage="17" TopEage="14" BottomEage="14" Scale9OriginX="17" Scale9OriginY="14" Scale9Width="28" Scale9Height="23" ctype="ImageViewObjectData">
                <Size X="62.0000" Y="51.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="63.4221" Y="68.7070" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5074" Y="0.5368" />
                <PreSize X="0.4960" Y="0.3984" />
                <FileData Type="Normal" Path="images/rank.png" Plist="" />
              </AbstractNodeData>
              <AbstractNodeData Name="music_button" ActionTag="318878476" CallBackType="Click" CallBackName="onMusicButtonClicked" Tag="17" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="-252.4999" RightMargin="252.4999" TouchEnable="True" FontSize="14" LeftEage="15" RightEage="15" TopEage="5" BottomEage="5" Scale9OriginX="15" Scale9OriginY="5" Scale9Width="95" Scale9Height="118" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="125.0000" Y="128.0000" />
                <Children>
                  <AbstractNodeData Name="music_icon" ActionTag="329435896" Tag="18" IconVisible="False" LeftMargin="32.9221" RightMargin="31.0779" TopMargin="34.2930" BottomMargin="43.7070" LeftEage="17" RightEage="17" TopEage="14" BottomEage="14" Scale9OriginX="17" Scale9OriginY="14" Scale9Width="27" Scale9Height="22" ctype="ImageViewObjectData">
                    <Size X="61.0000" Y="50.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="63.4221" Y="68.7070" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5074" Y="0.5368" />
                    <PreSize X="0.4880" Y="0.3906" />
                    <FileData Type="Normal" Path="images/music_on.png" Plist="" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="-189.9999" Y="64.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="-1.5200" Y="0.5000" />
                <PreSize X="1.0000" Y="1.0000" />
                <TextColor A="255" R="65" G="65" B="70" />
                <PressedFileData Type="Normal" Path="images/button2.png" Plist="" />
                <NormalFileData Type="Normal" Path="images/button.png" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="sound_button" ActionTag="-1815936454" CallBackType="Click" CallBackName="onSoundButtonClicked" Tag="23" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="253.5012" RightMargin="-253.5012" TouchEnable="True" FontSize="14" LeftEage="15" RightEage="15" TopEage="5" BottomEage="5" Scale9OriginX="15" Scale9OriginY="5" Scale9Width="95" Scale9Height="118" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="125.0000" Y="128.0000" />
                <Children>
                  <AbstractNodeData Name="sound_icon" ActionTag="-1750168839" Tag="24" IconVisible="False" LeftMargin="33.9221" RightMargin="32.0779" TopMargin="29.2930" BottomMargin="38.7070" LeftEage="17" RightEage="17" TopEage="14" BottomEage="14" Scale9OriginX="17" Scale9OriginY="14" Scale9Width="25" Scale9Height="32" ctype="ImageViewObjectData">
                    <Size X="59.0000" Y="60.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="63.4221" Y="68.7070" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5074" Y="0.5368" />
                    <PreSize X="0.4720" Y="0.4688" />
                    <FileData Type="Normal" Path="images/sound_on.png" Plist="" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="316.0012" Y="64.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="2.5280" Y="0.5000" />
                <PreSize X="1.0000" Y="1.0000" />
                <TextColor A="255" R="65" G="65" B="70" />
                <PressedFileData Type="Normal" Path="images/button2.png" Plist="" />
                <NormalFileData Type="Normal" Path="images/button.png" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" />
            <Position X="567.9999" Y="38.4000" />
            <Scale ScaleX="0.8000" ScaleY="0.8000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.0500" />
            <PreSize X="0.1100" Y="0.1667" />
            <TextColor A="255" R="65" G="65" B="70" />
            <PressedFileData Type="Normal" Path="images/button2.png" Plist="" />
            <NormalFileData Type="Normal" Path="images/button.png" Plist="" />
            <OutlineColor A="255" R="255" G="0" B="0" />
            <ShadowColor A="255" R="110" G="110" B="110" />
          </AbstractNodeData>
          <AbstractNodeData Name="policy_button" ActionTag="-1734534920" CallBackType="Click" CallBackName="onPolicyButtonClicked" Tag="52" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="34.0800" RightMargin="976.9200" TopMargin="15.3600" BottomMargin="624.6400" TouchEnable="True" FontSize="14" LeftEage="15" RightEage="15" TopEage="5" BottomEage="5" Scale9OriginX="15" Scale9OriginY="5" Scale9Width="95" Scale9Height="118" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
            <Size X="125.0000" Y="128.0000" />
            <Children>
              <AbstractNodeData Name="icon" ActionTag="234026741" Tag="53" IconVisible="False" LeftMargin="34.9221" RightMargin="33.0779" TopMargin="34.2930" BottomMargin="43.7070" LeftEage="17" RightEage="17" TopEage="14" BottomEage="14" Scale9OriginX="17" Scale9OriginY="14" Scale9Width="23" Scale9Height="22" ctype="ImageViewObjectData">
                <Size X="57.0000" Y="50.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="63.4221" Y="68.7070" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5074" Y="0.5368" />
                <PreSize X="0.4560" Y="0.3906" />
                <FileData Type="Normal" Path="images/policy.png" Plist="" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleY="1.0000" />
            <Position X="34.0800" Y="752.6400" />
            <Scale ScaleX="0.8500" ScaleY="0.8500" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.0300" Y="0.9800" />
            <PreSize X="0.1100" Y="0.1667" />
            <TextColor A="255" R="65" G="65" B="70" />
            <PressedFileData Type="Normal" Path="images/button2.png" Plist="" />
            <NormalFileData Type="Normal" Path="images/button.png" Plist="" />
            <OutlineColor A="255" R="255" G="0" B="0" />
            <ShadowColor A="255" R="110" G="110" B="110" />
          </AbstractNodeData>
          <AbstractNodeData Name="tutorial_button" ActionTag="-626570110" CallBackType="Click" CallBackName="onTutorialButtonClicked" Tag="54" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="988.2800" RightMargin="22.7200" TopMargin="15.3600" BottomMargin="624.6400" TouchEnable="True" FontSize="14" LeftEage="15" RightEage="15" TopEage="5" BottomEage="5" Scale9OriginX="15" Scale9OriginY="5" Scale9Width="95" Scale9Height="118" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
            <Size X="125.0000" Y="128.0000" />
            <Children>
              <AbstractNodeData Name="icon" ActionTag="-665182391" Tag="55" IconVisible="False" LeftMargin="43.4221" RightMargin="41.5779" TopMargin="29.7930" BottomMargin="39.2070" LeftEage="17" RightEage="17" TopEage="14" BottomEage="14" Scale9OriginX="17" Scale9OriginY="14" Scale9Width="6" Scale9Height="31" ctype="ImageViewObjectData">
                <Size X="40.0000" Y="59.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="63.4221" Y="68.7070" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5074" Y="0.5368" />
                <PreSize X="0.3200" Y="0.4609" />
                <FileData Type="Normal" Path="images/GUIDE1.png" Plist="" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="1.0000" ScaleY="1.0000" />
            <Position X="1113.2800" Y="752.6400" />
            <Scale ScaleX="0.8500" ScaleY="0.8500" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.9800" Y="0.9800" />
            <PreSize X="0.1100" Y="0.1667" />
            <TextColor A="255" R="65" G="65" B="70" />
            <PressedFileData Type="Normal" Path="images/button2.png" Plist="" />
            <NormalFileData Type="Normal" Path="images/button.png" Plist="" />
            <OutlineColor A="255" R="255" G="0" B="0" />
            <ShadowColor A="255" R="110" G="110" B="110" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>