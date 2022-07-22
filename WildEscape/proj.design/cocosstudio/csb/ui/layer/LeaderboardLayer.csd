<GameFile>
  <PropertyGroup Name="LeaderboardLayer" Type="Layer" ID="3092970c-3389-4001-af3d-91123b8c4d26" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="0" Speed="1.0000" />
      <ObjectData Name="Layer" CustomClassName="LeaderboardLayer" Tag="14" ctype="GameLayerObjectData">
        <Size X="1136.0000" Y="768.0000" />
        <Children>
          <AbstractNodeData Name="black_background" ActionTag="-33029800" Tag="24" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" PercentWidthEnable="True" PercentHeightEnable="True" PercentWidthEnabled="True" PercentHeightEnabled="True" TouchEnable="True" ClipAble="False" BackColorAlpha="127" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="1136.0000" Y="768.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="568.0000" Y="384.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="1.0000" Y="1.0000" />
            <SingleColor A="255" R="0" G="0" B="0" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="design_view" ActionTag="-1761890552" VisibleForFrame="False" Tag="257" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftEage="253" RightEage="253" TopEage="374" BottomEage="374" Scale9OriginX="253" Scale9OriginY="374" Scale9Width="630" Scale9Height="20" ctype="ImageViewObjectData">
            <Size X="1136.0000" Y="768.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="568.0000" Y="384.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="1.0000" Y="1.0000" />
            <FileData Type="Normal" Path="images/design_view.png" Plist="" />
          </AbstractNodeData>
          <AbstractNodeData Name="root" ActionTag="-1542116430" Tag="75" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" TouchEnable="True" ClipAble="False" BackColorAlpha="102" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="1136.0000" Y="768.0000" />
            <Children>
              <AbstractNodeData Name="background" ActionTag="-1166235580" Tag="51" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="467.9982" RightMargin="468.0018" TopMargin="303.0012" BottomMargin="264.9988" LeftEage="15" RightEage="15" TopEage="15" BottomEage="15" Scale9OriginX="15" Scale9OriginY="15" Scale9Width="16" Scale9Height="16" ctype="ImageViewObjectData">
                <Size X="200.0000" Y="200.0000" />
                <Children>
                  <AbstractNodeData Name="background_0" ActionTag="2126059617" Tag="234" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-200.5000" RightMargin="-200.5000" TopMargin="-181.0000" BottomMargin="-181.0000" LeftEage="165" RightEage="165" TopEage="169" BottomEage="169" Scale9OriginX="165" Scale9OriginY="169" Scale9Width="271" Scale9Height="224" ctype="ImageViewObjectData">
                    <Size X="601.0000" Y="562.0000" />
                    <Children>
                      <AbstractNodeData Name="title_bg" ActionTag="1686041215" Tag="235" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="120.3439" RightMargin="115.6561" TopMargin="-46.7693" BottomMargin="489.7693" LeftEage="55" RightEage="55" TopEage="45" BottomEage="45" Scale9OriginX="55" Scale9OriginY="45" Scale9Width="255" Scale9Height="29" ctype="ImageViewObjectData">
                        <Size X="365.0000" Y="119.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="302.8439" Y="549.2693" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5039" Y="0.9773" />
                        <PreSize X="0.6073" Y="0.2117" />
                        <FileData Type="Normal" Path="images/popup2.png" Plist="" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="title" ActionTag="1545365345" Tag="236" IconVisible="False" LeftMargin="147.2955" RightMargin="131.7045" TopMargin="-17.4598" BottomMargin="526.4598" LeftEage="56" RightEage="56" TopEage="16" BottomEage="16" Scale9OriginX="56" Scale9OriginY="16" Scale9Width="210" Scale9Height="21" ctype="ImageViewObjectData">
                        <Size X="322.0000" Y="53.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="308.2955" Y="552.9598" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5130" Y="0.9839" />
                        <PreSize X="0.5358" Y="0.0943" />
                        <FileData Type="Normal" Path="images/HIGH SCORE.png" Plist="" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="back_button" ActionTag="1525704702" CallBackType="Click" CallBackName="onCloseButtonClicked" Tag="246" IconVisible="False" LeftMargin="556.0538" RightMargin="-27.0538" TopMargin="-10.3433" BottomMargin="498.3433" TouchEnable="True" FontSize="14" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="42" Scale9Height="52" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                        <Size X="72.0000" Y="74.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="592.0538" Y="535.3433" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.9851" Y="0.9526" />
                        <PreSize X="0.1198" Y="0.1317" />
                        <TextColor A="255" R="65" G="65" B="70" />
                        <NormalFileData Type="Normal" Path="images/x_.png" Plist="" />
                        <OutlineColor A="255" R="255" G="0" B="0" />
                        <ShadowColor A="255" R="110" G="110" B="110" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="100.0000" Y="100.0000" />
                    <Scale ScaleX="0.8000" ScaleY="0.8000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.5000" />
                    <PreSize X="3.0050" Y="2.8100" />
                    <FileData Type="Normal" Path="images/popup1.png" Plist="" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank" ActionTag="845017081" Tag="229" IconVisible="False" LeftMargin="-114.2499" RightMargin="241.2499" TopMargin="-58.2631" BottomMargin="226.2631" FontSize="30" LabelText="Rank" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="73.0000" Y="32.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="-77.7499" Y="242.2631" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="121" G="208" B="150" />
                    <PrePosition X="-0.3887" Y="1.2113" />
                    <PreSize X="0.3650" Y="0.1600" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="121" G="208" B="150" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="score" ActionTag="-207824883" Tag="230" IconVisible="False" LeftMargin="56.9000" RightMargin="63.1000" TopMargin="-58.2631" BottomMargin="226.2631" FontSize="30" LabelText="Score" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="80.0000" Y="32.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="96.9000" Y="242.2631" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="121" G="208" B="150" />
                    <PrePosition X="0.4845" Y="1.2113" />
                    <PreSize X="0.4000" Y="0.1600" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="121" G="208" B="150" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="time" ActionTag="782662929" Tag="231" IconVisible="False" LeftMargin="231.8502" RightMargin="-101.8502" TopMargin="-58.2631" BottomMargin="226.2631" FontSize="30" LabelText="Time" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="70.0000" Y="32.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="266.8502" Y="242.2631" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="121" G="208" B="150" />
                    <PrePosition X="1.3343" Y="1.2113" />
                    <PreSize X="0.3500" Y="0.1600" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="121" G="208" B="150" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_1" ActionTag="-1311719010" Tag="54" IconVisible="False" LeftMargin="-135.6728" RightMargin="219.6728" TopMargin="-44.5357" BottomMargin="165.5357" LeftEage="28" RightEage="28" TopEage="8" BottomEage="8" Scale9OriginX="28" Scale9OriginY="8" Scale9Width="60" Scale9Height="63" ctype="ImageViewObjectData">
                    <Size X="116.0000" Y="79.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="-77.6728" Y="205.0357" />
                    <Scale ScaleX="0.5000" ScaleY="0.5000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="-0.3884" Y="1.0252" />
                    <PreSize X="0.5800" Y="0.3950" />
                    <FileData Type="Normal" Path="images/Rank1.png" Plist="" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_2" ActionTag="452969502" Tag="55" IconVisible="False" LeftMargin="-109.8483" RightMargin="245.8483" TopMargin="17.2256" BottomMargin="137.7744" LeftEage="28" RightEage="28" TopEage="8" BottomEage="8" Scale9OriginX="28" Scale9OriginY="8" Scale9Width="8" Scale9Height="29" ctype="ImageViewObjectData">
                    <Size X="64.0000" Y="45.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="-77.8483" Y="160.2744" />
                    <Scale ScaleX="0.8000" ScaleY="0.8000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="-0.3892" Y="0.8014" />
                    <PreSize X="0.3200" Y="0.2250" />
                    <FileData Type="Normal" Path="images/rank2.png" Plist="" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_3" ActionTag="208282896" Tag="56" IconVisible="False" LeftMargin="-110.7799" RightMargin="246.7799" TopMargin="61.2974" BottomMargin="93.7026" LeftEage="28" RightEage="28" TopEage="8" BottomEage="8" Scale9OriginX="28" Scale9OriginY="8" Scale9Width="8" Scale9Height="29" ctype="ImageViewObjectData">
                    <Size X="64.0000" Y="45.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="-78.7799" Y="116.2026" />
                    <Scale ScaleX="0.8000" ScaleY="0.8000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="-0.3939" Y="0.5810" />
                    <PreSize X="0.3200" Y="0.2250" />
                    <FileData Type="Normal" Path="images/rank3.png" Plist="" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_4" ActionTag="-826473543" Tag="232" IconVisible="False" LeftMargin="-90.7797" RightMargin="266.7797" TopMargin="104.7064" BottomMargin="58.2936" FontSize="35" LabelText="4" ShadowOffsetX="2.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="24.0000" Y="37.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="-78.7797" Y="76.7936" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="199" G="99" B="50" />
                    <PrePosition X="-0.3939" Y="0.3840" />
                    <PreSize X="0.1200" Y="0.1850" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="116" G="57" B="23" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_5" ActionTag="-975129542" Tag="233" IconVisible="False" LeftMargin="-88.0904" RightMargin="265.0904" TopMargin="147.1441" BottomMargin="15.8559" FontSize="35" LabelText="5" ShadowOffsetX="2.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="23.0000" Y="37.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="-76.5904" Y="34.3559" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="199" G="99" B="50" />
                    <PrePosition X="-0.3830" Y="0.1718" />
                    <PreSize X="0.1150" Y="0.1850" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="116" G="57" B="23" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="replay_button" ActionTag="-175605124" CallBackType="Click" CallBackName="onReplayButtonClicked" Tag="189" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="139.0200" RightMargin="-64.0200" TopMargin="190.3300" BottomMargin="-118.3300" TouchEnable="True" FontSize="14" LeftEage="15" RightEage="15" TopEage="5" BottomEage="5" Scale9OriginX="15" Scale9OriginY="5" Scale9Width="95" Scale9Height="118" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                    <Size X="125.0000" Y="128.0000" />
                    <Children>
                      <AbstractNodeData Name="rank_icon" ActionTag="634405956" Tag="193" IconVisible="False" LeftMargin="33.4235" RightMargin="31.5765" TopMargin="22.2929" BottomMargin="37.7071" LeftEage="17" RightEage="17" TopEage="14" BottomEage="14" Scale9OriginX="17" Scale9OriginY="14" Scale9Width="26" Scale9Height="40" ctype="ImageViewObjectData">
                        <Size X="60.0000" Y="68.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="63.4235" Y="71.7071" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5074" Y="0.5602" />
                        <PreSize X="0.4800" Y="0.5313" />
                        <FileData Type="Normal" Path="images/replay.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="201.5200" Y="-54.3300" />
                    <Scale ScaleX="0.8500" ScaleY="0.8500" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="1.0076" Y="-0.2717" />
                    <PreSize X="0.6250" Y="0.6400" />
                    <TextColor A="255" R="65" G="65" B="70" />
                    <PressedFileData Type="Normal" Path="images/button2.png" Plist="" />
                    <NormalFileData Type="Normal" Path="images/button.png" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="home_button" ActionTag="-1006946842" CallBackType="Click" CallBackName="onHomeButtonClicked" Tag="196" IconVisible="False" LeftMargin="-74.4939" RightMargin="149.4939" TopMargin="190.3300" BottomMargin="-118.3300" TouchEnable="True" FontSize="14" LeftEage="15" RightEage="15" TopEage="5" BottomEage="5" Scale9OriginX="15" Scale9OriginY="5" Scale9Width="95" Scale9Height="118" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                    <Size X="125.0000" Y="128.0000" />
                    <Children>
                      <AbstractNodeData Name="icon" ActionTag="-1076383731" Tag="197" IconVisible="False" LeftMargin="29.4230" RightMargin="27.5770" TopMargin="19.7932" BottomMargin="39.2068" LeftEage="17" RightEage="17" TopEage="14" BottomEage="14" Scale9OriginX="17" Scale9OriginY="14" Scale9Width="34" Scale9Height="41" ctype="ImageViewObjectData">
                        <Size X="68.0000" Y="69.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position X="63.4230" Y="73.7068" />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="255" G="255" B="255" />
                        <PrePosition X="0.5074" Y="0.5758" />
                        <PreSize X="0.5440" Y="0.5391" />
                        <FileData Type="Normal" Path="images/home.png" Plist="" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="-74.4939" Y="-54.3300" />
                    <Scale ScaleX="0.8500" ScaleY="0.8500" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="-0.3725" Y="-0.2717" />
                    <PreSize X="0.6250" Y="0.6400" />
                    <TextColor A="255" R="65" G="65" B="70" />
                    <PressedFileData Type="Normal" Path="images/button2.png" Plist="" />
                    <NormalFileData Type="Normal" Path="images/button.png" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_1_score" ActionTag="471841616" Tag="234" IconVisible="False" LeftMargin="59.4000" RightMargin="65.6000" TopMargin="-9.4706" BottomMargin="177.4706" FontSize="30" LabelText="6325" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="75.0000" Y="32.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="96.9000" Y="193.4706" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="199" G="99" B="50" />
                    <PrePosition X="0.4845" Y="0.9674" />
                    <PreSize X="0.3750" Y="0.1600" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_1_time" ActionTag="-960649260" Tag="235" IconVisible="False" LeftMargin="226.9800" RightMargin="-101.9800" TopMargin="-12.1339" BottomMargin="180.1339" FontSize="30" LabelText="6325" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="75.0000" Y="32.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="264.4800" Y="196.1339" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="199" G="99" B="50" />
                    <PrePosition X="1.3224" Y="0.9807" />
                    <PreSize X="0.3750" Y="0.1600" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_2_score" ActionTag="-997011739" Tag="89" IconVisible="False" LeftMargin="59.4005" RightMargin="65.5995" TopMargin="29.1474" BottomMargin="138.8526" FontSize="30" LabelText="6325" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="75.0000" Y="32.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="96.9005" Y="154.8526" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="199" G="99" B="50" />
                    <PrePosition X="0.4845" Y="0.7743" />
                    <PreSize X="0.3750" Y="0.1600" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_2_time" ActionTag="2102213275" Tag="90" IconVisible="False" LeftMargin="226.9800" RightMargin="-101.9800" TopMargin="26.4801" BottomMargin="141.5199" FontSize="30" LabelText="6325" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="75.0000" Y="32.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="264.4800" Y="157.5199" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="199" G="99" B="50" />
                    <PrePosition X="1.3224" Y="0.7876" />
                    <PreSize X="0.3750" Y="0.1600" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_3_score" ActionTag="67214552" Tag="91" IconVisible="False" LeftMargin="59.4000" RightMargin="65.6000" TopMargin="68.2171" BottomMargin="99.7829" FontSize="30" LabelText="6325" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="75.0000" Y="32.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="96.9000" Y="115.7829" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="199" G="99" B="50" />
                    <PrePosition X="0.4845" Y="0.5789" />
                    <PreSize X="0.3750" Y="0.1600" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_3_time" ActionTag="-1364709531" Tag="92" IconVisible="False" LeftMargin="226.9800" RightMargin="-101.9800" TopMargin="68.2171" BottomMargin="99.7829" FontSize="30" LabelText="6325" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="75.0000" Y="32.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="264.4800" Y="115.7829" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="199" G="99" B="50" />
                    <PrePosition X="1.3224" Y="0.5789" />
                    <PreSize X="0.3750" Y="0.1600" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_4_score" ActionTag="-1166072930" Tag="93" IconVisible="False" LeftMargin="59.3996" RightMargin="65.6004" TopMargin="109.0929" BottomMargin="58.9071" FontSize="30" LabelText="6325" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="75.0000" Y="32.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="96.8996" Y="74.9071" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="199" G="99" B="50" />
                    <PrePosition X="0.4845" Y="0.3745" />
                    <PreSize X="0.3750" Y="0.1600" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_4_time" ActionTag="1445451940" Tag="94" IconVisible="False" LeftMargin="226.9799" RightMargin="-101.9799" TopMargin="109.0929" BottomMargin="58.9071" FontSize="30" LabelText="6325" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="75.0000" Y="32.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="264.4799" Y="74.9071" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="199" G="99" B="50" />
                    <PrePosition X="1.3224" Y="0.3745" />
                    <PreSize X="0.3750" Y="0.1600" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_5_score" ActionTag="-953294367" Tag="95" IconVisible="False" LeftMargin="59.3997" RightMargin="65.6003" TopMargin="149.6400" BottomMargin="18.3600" FontSize="30" LabelText="6325" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="75.0000" Y="32.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="96.8997" Y="34.3600" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="199" G="99" B="50" />
                    <PrePosition X="0.4845" Y="0.1718" />
                    <PreSize X="0.3750" Y="0.1600" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="rank_5_time" ActionTag="852571629" Tag="96" IconVisible="False" LeftMargin="226.9798" RightMargin="-101.9798" TopMargin="149.6400" BottomMargin="18.3600" FontSize="30" LabelText="6325" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="75.0000" Y="32.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="264.4798" Y="34.3600" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="199" G="99" B="50" />
                    <PrePosition X="1.3224" Y="0.1718" />
                    <PreSize X="0.3750" Y="0.1600" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="567.9982" Y="364.9988" />
                <Scale ScaleX="0.9700" ScaleY="0.9700" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.4753" />
                <PreSize X="0.1761" Y="0.2604" />
                <FileData Type="Default" Path="Default/ImageFile.png" Plist="" />
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
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>