<GameFile>
  <PropertyGroup Name="JungleGameScene" Type="Layer" ID="202f8a5d-0fde-49bb-9fbb-f61270744b03" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="0" Speed="1.0000" />
      <ObjectData Name="Layer" CustomClassName="JungleGameScene" Tag="14" ctype="GameLayerObjectData">
        <Size X="1136.0000" Y="768.0000" />
        <Children>
          <AbstractNodeData Name="background" ActionTag="898795379" Tag="272" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-236.8784" RightMargin="-187.1216" TopMargin="-178.0208" BottomMargin="-11.9792" LeftEage="514" RightEage="514" TopEage="316" BottomEage="316" Scale9OriginX="514" Scale9OriginY="316" Scale9Width="532" Scale9Height="326" ctype="ImageViewObjectData">
            <Size X="1560.0000" Y="958.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="543.1216" Y="467.0208" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.4781" Y="0.6081" />
            <PreSize X="1.3732" Y="1.2474" />
            <FileData Type="Normal" Path="images/bgr_dat.png" Plist="" />
          </AbstractNodeData>
          <AbstractNodeData Name="left_wall" ActionTag="-1862886" Tag="275" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" RightMargin="924.0000" TopMargin="-216.0000" BottomMargin="-216.0000" LeftEage="70" RightEage="70" TopEage="316" BottomEage="316" Scale9OriginX="70" Scale9OriginY="316" Scale9Width="72" Scale9Height="568" ctype="ImageViewObjectData">
            <Size X="212.0000" Y="1200.0000" />
            <AnchorPoint ScaleY="0.5000" />
            <Position Y="384.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition Y="0.5000" />
            <PreSize X="0.1866" Y="1.5625" />
            <FileData Type="Normal" Path="images/bgr_co3.png" Plist="" />
          </AbstractNodeData>
          <AbstractNodeData Name="right_wall" ActionTag="-1687764346" Tag="276" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="1136.0000" RightMargin="-212.0000" TopMargin="-216.0000" BottomMargin="-216.0000" LeftEage="70" RightEage="70" TopEage="316" BottomEage="316" Scale9OriginX="70" Scale9OriginY="316" Scale9Width="72" Scale9Height="568" ctype="ImageViewObjectData">
            <Size X="212.0000" Y="1200.0000" />
            <AnchorPoint ScaleY="0.5000" />
            <Position X="1136.0000" Y="384.0000" />
            <Scale ScaleX="-1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="1.0000" Y="0.5000" />
            <PreSize X="0.1866" Y="1.5625" />
            <FileData Type="Normal" Path="images/bgr_co3.png" Plist="" />
          </AbstractNodeData>
          <AbstractNodeData Name="top_bar" ActionTag="1201034431" Tag="273" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" PercentWidthEnable="True" PercentWidthEnabled="True" BottomMargin="668.0100" TouchEnable="True" ClipAble="False" BackColorAlpha="76" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="1136.0000" Y="99.9900" />
            <Children>
              <AbstractNodeData Name="Button_1" ActionTag="1624049078" Tag="249" IconVisible="False" LeftMargin="1012.9012" RightMargin="-1.9012" TopMargin="-8.8671" BottomMargin="-16.1429" TouchEnable="True" FontSize="14" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="5" BottomEage="5" Scale9OriginX="15" Scale9OriginY="5" Scale9Width="11" Scale9Height="6" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="125.0000" Y="125.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="1075.4012" Y="46.3571" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.9467" Y="0.4636" />
                <PreSize X="0.1100" Y="1.2501" />
                <TextColor A="255" R="65" G="65" B="70" />
                <DisabledFileData Type="Default" Path="Default/Button_Disable.png" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="pause_button" ActionTag="-626570110" CallBackType="Click" CallBackName="onPauseButtonClicked" Tag="54" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="988.3199" RightMargin="22.7201" TopMargin="10.0752" BottomMargin="-38.0853" TouchEnable="True" FontSize="14" LeftEage="15" RightEage="15" TopEage="5" BottomEage="5" Scale9OriginX="15" Scale9OriginY="5" Scale9Width="95" Scale9Height="118" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="124.9600" Y="128.0000" />
                <Children>
                  <AbstractNodeData Name="icon" ActionTag="-665182391" CallBackType="Click" CallBackName="onPauseButtonClicked" Tag="55" IconVisible="False" LeftMargin="41.9221" RightMargin="40.0379" TopMargin="35.7930" BottomMargin="45.2070" LeftEage="17" RightEage="17" TopEage="14" BottomEage="14" Scale9OriginX="17" Scale9OriginY="14" Scale9Width="9" Scale9Height="19" ctype="ImageViewObjectData">
                    <Size X="43.0000" Y="47.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="63.4221" Y="68.7070" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5075" Y="0.5368" />
                    <PreSize X="0.3441" Y="0.3672" />
                    <FileData Type="Normal" Path="images/pause1.png" Plist="" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="1.0000" ScaleY="1.0000" />
                <Position X="1113.2799" Y="89.9147" />
                <Scale ScaleX="0.7500" ScaleY="0.7500" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.9800" Y="0.8992" />
                <PreSize X="0.1100" Y="1.2801" />
                <TextColor A="255" R="65" G="65" B="70" />
                <PressedFileData Type="Normal" Path="images/button2.png" Plist="" />
                <NormalFileData Type="Normal" Path="images/button.png" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="back_button" ActionTag="1484043827" VisibleForFrame="False" CallBackType="Click" CallBackName="onBackButtonClicked" Tag="277" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="1006.2800" RightMargin="22.7200" TopMargin="26.0654" BottomMargin="39.9246" TouchEnable="True" FontSize="14" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="77" Scale9Height="12" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="107.0000" Y="34.0000" />
                <Children>
                  <AbstractNodeData Name="icon" ActionTag="-383163563" Tag="278" IconVisible="False" LeftMargin="-63.3416" RightMargin="116.3416" TopMargin="-7.4887" BottomMargin="-3.5113" LeftEage="17" RightEage="17" TopEage="14" BottomEage="14" Scale9OriginX="17" Scale9OriginY="14" Scale9Width="20" Scale9Height="17" ctype="ImageViewObjectData">
                    <Size X="54.0000" Y="45.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="-36.3416" Y="18.9887" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="-0.3396" Y="0.5585" />
                    <PreSize X="0.5047" Y="1.3235" />
                    <FileData Type="Normal" Path="images/back.png" Plist="" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="1.0000" ScaleY="0.5000" />
                <Position X="1113.2800" Y="56.9246" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.9800" Y="0.5693" />
                <PreSize X="0.0942" Y="0.3400" />
                <TextColor A="255" R="65" G="65" B="70" />
                <DisabledFileData Type="Default" Path="Default/Button_Disable.png" Plist="" />
                <NormalFileData Type="Normal" Path="images/back_text.png" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="hp_bar_bg" ActionTag="1827734314" Tag="26" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="407.0000" RightMargin="407.0000" TopMargin="30.9950" BottomMargin="30.9950" LeftEage="106" RightEage="106" TopEage="12" BottomEage="12" Scale9OriginX="106" Scale9OriginY="12" Scale9Width="110" Scale9Height="14" ctype="ImageViewObjectData">
                <Size X="322.0000" Y="38.0000" />
                <Children>
                  <AbstractNodeData Name="hp_loading_bar" ActionTag="1638654301" Tag="25" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" ProgressInfo="100" ctype="LoadingBarObjectData">
                    <Size X="322.0000" Y="38.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="161.0000" Y="19.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.5000" />
                    <PreSize X="1.0000" Y="1.0000" />
                    <ImageFileData Type="Normal" Path="images/hp_bar.png" Plist="" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="hp_text" ActionTag="-1135327559" Tag="27" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="145.5000" RightMargin="145.5000" TopMargin="1.4992" BottomMargin="11.5008" FontSize="24" LabelText="10" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="31.0000" Y="25.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="161.0000" Y="24.0008" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6316" />
                    <PreSize X="0.0963" Y="0.6579" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="108" G="40" B="45" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="568.0000" Y="49.9950" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.5000" />
                <PreSize X="0.2835" Y="0.3800" />
                <FileData Type="Normal" Path="images/hp_bar_bg.png" Plist="" />
              </AbstractNodeData>
              <AbstractNodeData Name="score_image" ActionTag="-1467488641" Tag="279" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="5.0000" RightMargin="976.0000" TopMargin="33.9950" BottomMargin="33.9950" LeftEage="51" RightEage="51" TopEage="10" BottomEage="10" Scale9OriginX="51" Scale9OriginY="10" Scale9Width="53" Scale9Height="12" ctype="ImageViewObjectData">
                <Size X="155.0000" Y="32.0000" />
                <Children>
                  <AbstractNodeData Name="score_text" ActionTag="-1837360030" Tag="310" IconVisible="False" PositionPercentYEnabled="True" LeftMargin="172.0100" RightMargin="-41.0100" TopMargin="-3.5000" BottomMargin="-3.5000" FontSize="35" LabelText="0" OutlineEnabled="True" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                    <Size X="24.0000" Y="39.0000" />
                    <AnchorPoint ScaleY="0.5000" />
                    <Position X="172.0100" Y="16.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="236" G="255" B="25" />
                    <PrePosition X="1.1097" Y="0.5000" />
                    <PreSize X="0.1548" Y="1.2188" />
                    <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                    <OutlineColor A="255" R="108" G="40" B="45" />
                    <ShadowColor A="255" R="116" G="57" B="23" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleY="0.5000" />
                <Position X="5.0000" Y="49.9950" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.0044" Y="0.5000" />
                <PreSize X="0.1364" Y="0.3200" />
                <FileData Type="Normal" Path="images/SCORE_.png" Plist="" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="1.0000" />
            <Position X="568.0000" Y="768.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="1.0000" />
            <PreSize X="1.0000" Y="0.1302" />
            <SingleColor A="255" R="0" G="0" B="0" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="vachdich" ActionTag="599769043" Tag="29" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="1647.9464" RightMargin="-1242.9463" TopMargin="341.5000" BottomMargin="341.5000" LeftEage="241" RightEage="241" TopEage="28" BottomEage="28" Scale9OriginX="241" Scale9OriginY="28" Scale9Width="249" Scale9Height="29" ctype="ImageViewObjectData">
            <Size X="731.0000" Y="85.0000" />
            <Children>
              <AbstractNodeData Name="level_num" ActionTag="-13225531" Tag="30" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="333.0000" RightMargin="333.0000" TopMargin="12.0000" BottomMargin="12.0000" FontSize="48" LabelText="10" OutlineSize="5" OutlineEnabled="True" ShadowOffsetX="1.0000" ShadowOffsetY="0.0000" ctype="TextObjectData">
                <Size X="65.0000" Y="61.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="365.5000" Y="42.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.5000" />
                <PreSize X="0.0889" Y="0.7176" />
                <FontResource Type="Normal" Path="fonts/ChangaOne-Regular.ttf" Plist="" />
                <OutlineColor A="255" R="108" G="40" B="45" />
                <ShadowColor A="255" R="116" G="57" B="23" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="2013.4464" Y="384.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="1.7724" Y="0.5000" />
            <PreSize X="0.6435" Y="0.1107" />
            <FileData Type="Normal" Path="images/vachdich.png" Plist="" />
          </AbstractNodeData>
          <AbstractNodeData Name="touch_node" ActionTag="-578428318" Tag="24" IconVisible="False" LeftMargin="-25.0000" RightMargin="1111.0000" TopMargin="743.0000" BottomMargin="-25.0000" TouchEnable="True" FontSize="14" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="5" BottomEage="5" Scale9OriginX="-15" Scale9OriginY="-5" Scale9Width="30" Scale9Height="10" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
            <Size X="50.0000" Y="50.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition />
            <PreSize X="0.0440" Y="0.0651" />
            <TextColor A="255" R="65" G="65" B="70" />
            <DisabledFileData Type="Default" Path="Default/Button_Disable.png" Plist="" />
            <OutlineColor A="255" R="255" G="0" B="0" />
            <ShadowColor A="255" R="110" G="110" B="110" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>