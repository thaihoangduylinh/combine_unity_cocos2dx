<GameFile>
  <PropertyGroup Name="LoadingScene" Type="Layer" ID="e3ea855d-dfd9-4412-893e-1cd98bf44028" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="0" Speed="1.0000" />
      <ObjectData Name="Layer" CustomClassName="LoadingScene" Tag="31" ctype="GameLayerObjectData">
        <Size X="1024.0000" Y="768.0000" />
        <Children>
          <AbstractNodeData Name="bg" ActionTag="-1780160007" Tag="82" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-363.0000" RightMargin="-363.0000" TouchEnable="True" ClipAble="False" ComboBoxIndex="1" ColorAngle="90.0000" LeftEage="528" RightEage="528" TopEage="253" BottomEage="253" Scale9OriginX="-528" Scale9OriginY="-253" Scale9Width="1056" Scale9Height="506" ctype="PanelObjectData">
            <Size X="1750.0000" Y="768.0000" />
            <Children>
              <AbstractNodeData Name="Image_2" ActionTag="-1240561219" Tag="9" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" PercentWidthEnable="True" PercentHeightEnable="True" PercentWidthEnabled="True" PercentHeightEnabled="True" LeftMargin="235.0000" RightMargin="235.0000" TopMargin="24.0000" BottomMargin="24.0000" LeftEage="528" RightEage="528" TopEage="253" BottomEage="253" Scale9OriginX="528" Scale9OriginY="253" Scale9Width="224" Scale9Height="214" ctype="ImageViewObjectData">
                <Size X="1280.0000" Y="720.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="875.0000" Y="384.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.5000" />
                <PreSize X="0.7314" Y="0.9375" />
                <FileData Type="Normal" Path="ui/scene/HelloWorld.jpg" Plist="" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="512.0000" Y="384.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="1.7090" Y="1.0000" />
            <SingleColor A="255" R="255" G="255" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="device_id" ActionTag="121561346" Tag="393" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="831.5200" RightMargin="20.4800" TopMargin="15.3600" BottomMargin="716.6400" FontSize="32" LabelText="DID:352152" VerticalAlignmentType="VT_Center" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
            <Size X="172.0000" Y="36.0000" />
            <AnchorPoint ScaleX="1.0000" ScaleY="1.0000" />
            <Position X="1003.5200" Y="752.6400" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="241" G="255" B="170" />
            <PrePosition X="0.9800" Y="0.9800" />
            <PreSize X="0.1680" Y="0.0469" />
            <OutlineColor A="255" R="255" G="0" B="0" />
            <ShadowColor A="255" R="110" G="110" B="110" />
          </AbstractNodeData>
          <AbstractNodeData Name="root_layout" ActionTag="-1028942784" Tag="10" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" TouchEnable="True" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="1024.0000" Y="768.0000" />
            <Children>
              <AbstractNodeData Name="loading_bar_background" ActionTag="-2015449330" Tag="146" IconVisible="False" PositionPercentXEnabled="True" PercentWidthEnable="True" PercentWidthEnabled="True" LeftMargin="102.4000" RightMargin="102.4000" TopMargin="636.5000" BottomMargin="82.5000" Scale9Enable="True" LeftEage="230" RightEage="230" TopEage="21" BottomEage="18" Scale9OriginX="-184" Scale9OriginY="21" Scale9Width="414" Scale9Height="7" ctype="ImageViewObjectData">
                <Size X="819.2000" Y="49.0000" />
                <Children>
                  <AbstractNodeData Name="loading_bar" ActionTag="-1551926290" Tag="80" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" PercentWidthEnable="True" PercentWidthEnabled="True" LeftMargin="15.4829" RightMargin="15.4828" TopMargin="3.7980" BottomMargin="23.2020" ProgressInfo="0" ctype="LoadingBarObjectData">
                    <Size X="788.2343" Y="22.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="409.6000" Y="34.2020" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.6980" />
                    <PreSize X="0.9622" Y="0.4490" />
                    <ImageFileData Type="Default" Path="Default/LoadingBarFile.png" Plist="" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="loading_text" ActionTag="2070708713" Tag="81" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="336.1000" RightMargin="336.1000" TopMargin="44.0002" BottomMargin="-23.0002" FontSize="25" LabelText="Loading 50%" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                    <Size X="147.0000" Y="28.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="409.6000" Y="-9.0002" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="226" G="241" B="144" />
                    <PrePosition X="0.5000" Y="-0.1837" />
                    <PreSize X="0.1794" Y="0.5714" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="loading_debug_text" ActionTag="1211035300" Tag="92" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="315.0435" RightMargin="318.1565" TopMargin="77.4070" BottomMargin="-56.4070" FontSize="25" LabelText="callAppInfoAPI..." ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                    <Size X="186.0000" Y="28.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="408.0435" Y="-42.4070" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="237" G="28" B="36" />
                    <PrePosition X="0.4981" Y="-0.8654" />
                    <PreSize X="0.2271" Y="0.5714" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="512.0000" Y="107.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.1393" />
                <PreSize X="0.8000" Y="0.0638" />
                <FileData Type="Default" Path="Default/ImageFile.png" Plist="" />
              </AbstractNodeData>
              <AbstractNodeData Name="logo" ActionTag="-1888333765" Tag="23" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="489.0000" RightMargin="489.0000" TopMargin="275.5000" BottomMargin="446.5000" ctype="SpriteObjectData">
                <Size X="46.0000" Y="46.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="512.0000" Y="469.5000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.6113" />
                <PreSize X="0.0449" Y="0.0599" />
                <FileData Type="Default" Path="Default/Sprite.png" Plist="" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="512.0000" Y="384.0000" />
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