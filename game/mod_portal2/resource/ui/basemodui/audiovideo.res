"Resource/UI/AudioVideo.res"
{
	"AudioVideo"
	{
		"ControlName"		"Frame"
		"fieldName"			"AudioVideo"
		"xpos"				"0"
		"ypos"				"0"
		"wide"				"f0"
		"tall"				"330"	[$WIN32]
		// matches the audio localizations to enable the extra height for language dropdown
		"tall"				"330"	[$X360 && !( $FRENCH || $GERMAN || $RUSSIAN || $SPANISH )]
		"tall"				"350"	[$X360 && ( $FRENCH || $GERMAN || $RUSSIAN || $SPANISH )]
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
	}
		
	"SldBrightness"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldBrightness"
		"xpos"					"c-175"
		"ypos"					"110"
		"zpos"					"3"
		"wide"					"350"
		"tall"					"20"
		"visible"				"1"
		"enabled"				"1"
		"usetitlesafe"			"0"
		"tabPosition"			"0"
		"minValue"				"1.8"
		"maxValue"				"2.6"
		"stepSize"				"0.05"
		"navUp"					"DrpLanguage"
		"navDown"				"DrpColorMode"
		"conCommand"			"mat_monitorgamma"
		"usetitlesafe"			"0"
		"inverseFill"			"1"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"BaseModHybridButton"
			"fieldName"				"BtnDropButton"
			"xpos"					"0"
			"ypos"					"0"
			"zpos"					"0"
			"wide"					"350"
			"tall"					"20"
			"autoResize"			"1"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"1"
			"labelText"				"#L4D360UI_VideoOptions_Brightness"
			"tooltiptext"			"#L4D360UI_VideoOptions_Tooltip_Brightness"
			"disabled_tooltiptext"	"#L4D360UI_VideoOptions_Tooltip_Brightness_Disabled"
			"style"					"DefaultButton"
			"command"				""
			"ActivationType"		"1"
			"OnlyActiveUser"		"1"
			"usablePlayerIndex"		"nobody"
		}
	}

	"DrpColorMode"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpColorMode"
		"xpos"				"c-175"
		"ypos"				"135"
		"zpos"				"1"
		"wide"				"350"
		"tall"				"20"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"navUp"				"SldBrightness"
		"navDown"			"SldFilmGrain"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"BaseModHybridButton"
			"fieldName"				"BtnDropButton"
			"xpos"					"0"
			"ypos"					"0"
			"zpos"					"2"
			"wide"					"350"
			"wideatopen"			"280"	[$X360 && !$X360WIDE]
			"tall"					"20"
			"autoResize"			"1"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"1"
			"labelText"				"#L4D360UI_VideoOptions_ColorMode"
			"tooltiptext"			"#L4D360UI_VideoOptions_Tooltip_ColorMode"
			"disabled_tooltiptext"	"#L4D360UI_VideoOptions_Tooltip_ColorMode_Disabled"
			"style"					"DropDownButton"
			"command"				"FlmColorMode"
			"ActivationType"		"1"	
			"OnlyActiveUser"		"1"
		}
	}
	
	//flyouts		
	"FlmColorMode"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmColorMode"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnTelevision"
		"ResourceFile"			"resource/UI/basemodui/DropDownColorMode.res"
		"OnlyActiveUser"		"1"
	}
	
	"SldFilmGrain"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldFilmGrain"
		"xpos"					"c-175"
		"ypos"					"160"
		"zpos"					"3"
		"wide"					"350"
		"tall"					"20"
		"visible"				"1"
		"enabled"				"1"
		"usetitlesafe"			"0"
		"tabPosition"			"0"
		"minValue"				"0.0"
		"maxValue"				"3.0"
		"stepSize"				"0.2"
		"navUp"					"DrpColorMode"
		"navDown"				"DrpSplitScreenDirection"
		"conCommand"			"mat_grain_scale_override"
		"usetitlesafe"			"0"
		"inverseFill"			"0"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"BaseModHybridButton"
			"fieldName"				"BtnDropButton"
			"xpos"					"0"
			"ypos"					"0"
			"zpos"					"0"
			"wide"					"350"
			"tall"					"20"
			"autoResize"			"1"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"1"
			"labelText"				"#L4D360UI_VideoOptions_FilmGrain"
			"tooltiptext"			"#L4D360UI_VideoOptions_Tooltip_FilmGrain"
			"disabled_tooltiptext"	"#L4D360UI_VideoOptions_Tooltip_FilmGrain_Disabled"
			"style"					"DefaultButton"
			"command"				""
			"ActivationType"		"1"	
			"OnlyActiveUser"		"1"
			"usablePlayerIndex"		"nobody"
		}
	}
	
	"DrpSplitScreenDirection"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpSplitScreenDirection"
		"xpos"				"c-175"
		"ypos"				"185"
		"zpos"				"1"
		"wide"				"350"
		"tall"				"20"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		"navUp"				"SldFilmGrain"
		"navDown"			"SldGameVolume"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"BaseModHybridButton"
			"fieldName"				"BtnDropButton"
			"xpos"					"0"
			"ypos"					"0"
			"zpos"					"0"
			"wide"					"350"
			"wideatopen"			"280"	[$X360 && !$X360WIDE]
			"tall"					"20"
			"autoResize"			"1"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"1"
			"labelText"				"#L4D360UI_VideoOptions_SplitScreenDirection"
			"tooltiptext"			"#L4D360UI_VideoOptions_Tooltip_SplitScreenDirection"
			"disabled_tooltiptext"	"#L4D360UI_VideoOptions_Tooltip_SplitScreenDirection_Disabled"
			"style"					"DropDownButton"
			"command"				"FlmSplitScreenDirection"
			"ActivationType"		"1"
			"OnlyActiveUser"		"1"
		}
	}
	
	//flyouts		
	"FlmSplitScreenDirection"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmSplitScreenDirection"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnDefault"
		"ResourceFile"			"resource/UI/basemodui/DropDownSplitScreenDirection.res"
		"OnlyActiveUser"		"1"
	}
	
	"SldGameVolume"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldGameVolume"
		"xpos"					"c-175"
		"ypos"					"210"
		"zpos"					"3"
		"wide"					"350"
		"tall"					"20"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"minValue"				"0.0"
		"maxValue"				"1.0"
		"stepSize"				"0.05"
		"navUp"					"DrpSplitScreenDirection"
		"navDown"				"SldMusicVolume"
		"conCommand"			"volume"
		"inverseFill"			"0"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"BaseModHybridButton"
			"fieldName"				"BtnDropButton"
			"xpos"					"0"
			"ypos"					"0"
			"zpos"					"0"
			"wide"					"350"
			"tall"					"20"
			"autoResize"			"1"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"1"
			"labelText"				"#L4D360UI_AudioOptions_Volume"
			"tooltiptext"			"#L4D360UI_AudioOptions_Tooltip_Volume"
			"disabled_tooltiptext"	"#L4D360UI_AudioOptions_Tooltip_Volume_Disabled"
			"style"					"DefaultButton"
			"command"				""
			"ActivationType"		"1"
			"OnlyActiveUser"		"1"
			"usablePlayerIndex"		"nobody"
		}
	}
	
	"SldMusicVolume"
	{
		"ControlName"			"SliderControl"
		"fieldName"				"SldMusicVolume"
		"xpos"					"c-175"
		"ypos"					"235"
		"zpos"					"3"
		"wide"					"350"
		"tall"					"20"
		"visible"				"1"
		"enabled"				"1"
		"usetitlesafe"			"0"
		"tabPosition"			"0"
		"minValue"				"0.0"
		"maxValue"				"1.0"
		"stepSize"				"0.05"
		"navUp"					"SldGameVolume"
		"navDown"				"DrpCaptioning"
		"conCommand"			"snd_musicvolume"
		"inverseFill"			"0"
		
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"BaseModHybridButton"
			"fieldName"				"BtnDropButton"
			"xpos"					"0"
			"ypos"					"0"
			"zpos"					"0"
			"wide"					"350"
			"tall"					"20"
			"autoResize"			"1"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"1"
			"labelText"				"#L4D360UI_AudioOptions_MusicVolume"
			"tooltiptext"			"#L4D360UI_AudioOptions_Tooltip_MusicVolume"
			"disabled_tooltiptext"	"#L4D360UI_AudioOptions_Tooltip_MusicVolume_Disabled"
			"style"					"DefaultButton"
			"command"				""
			"ActivationType"		"1"
			"OnlyActiveUser"		"1"
			"usablePlayerIndex"		"nobody"
		}
	}
	
	"DrpCaptioning"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpCaptioning"
		"xpos"				"c-175"
		"ypos"				"260"
		"zpos"				"3"
		"wide"				"350"
		"tall"				"20"
		"visible"			"1"
		"enabled"			"1"
		"usetitlesafe"		"0"
		"tabPosition"		"0"
		"navUp"				"SldMusicVolume"
		"navDown"			"DrpGore"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"BaseModHybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"0"
			"wide"						"350"
			"wideatopen"				"280"	[$X360 && !$X360WIDE]
			"tall"						"20"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"labelText"					"#L4D360UI_AudioOptions_Caption"
			"tooltiptext"				"#L4D360UI_AudioOptions_Tooltip_Caption"
			"disabled_tooltiptext"		"#L4D360UI_AudioOptions_Tooltip_Caption_Disabled"
			"style"						"DropDownButton"
			"command"					"FlmCaption"
			"ActivationType"			"1"
			"OnlyActiveUser"			"1"
		}
	}
	
	//flyouts		
	"FlmCaption"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmCaption"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnOff"
		"ResourceFile"			"resource/UI/basemodui/DropDownCaption.res"
		"OnlyActiveUser"		"1"
	}
	
	"DrpGore"
	{
		"ControlName"		"DropDownMenu"
		"fieldName"			"DrpGore"
		"xpos"				"c-175"
		"ypos"				"285"
		"zpos"				"1"
		"wide"				"350"
		"tall"				"20"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"navUp"				"DrpCaptioning"
		"navDown"			"DrpLanguage"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"			"BaseModHybridButton"
			"fieldName"				"BtnDropButton"
			"xpos"					"0"
			"ypos"					"0"
			"zpos"					"2"
			"wide"					"350"
			"wideatopen"			"280"	[$X360 && !$X360WIDE]
			"tall"					"20"
			"autoResize"			"1"
			"pinCorner"				"0"
			"visible"				"1"
			"enabled"				"1"
			"tabPosition"			"1"
			"labelText"				"#L4D360UI_VideoOptions_Gore"
			"tooltiptext"			"#L4D360UI_VideoOptions_Tooltip_Gore"
			"disabled_tooltiptext"	"#L4D360UI_VideoOptions_Tooltip_Gore_Disabled"
			"style"					"DropDownButton"
			"command"				"FlmGore"
			"ActivationType"		"1"	
			"OnlyActiveUser"		"1"
		}
	}
	
	//flyouts		
	"FlmGore"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmGore"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnGoreHigh"
		"ResourceFile"			"resource/UI/basemodui/DropDownGore.res"
		"OnlyActiveUser"		"1"
	}
	
	"DrpLanguage"
	{
		"ControlName"			"DropDownMenu"
		"fieldName"				"DrpLanguage"
		"xpos"					"c-175"
		"ypos"					"310"
		"zpos"					"3"
		"wide"					"350"
		"tall"					"20"
		"visible"				"1"
		"enabled"				"1"
		"usetitlesafe"			"0"
		"tabPosition"			"0"
		"navUp"					"DrpGore"
		"navDown"				"SldBrightness"
				
		//button and label
		"BtnDropButton"
		{
			"ControlName"				"BaseModHybridButton"
			"fieldName"					"BtnDropButton"
			"xpos"						"0"
			"ypos"						"0"
			"zpos"						"0"
			"wide"						"350"
			"wideatopen"				"280"	[$X360 && !$X360WIDE]
			"tall"						"20"
			"autoResize"				"1"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"tabPosition"				"1"
			"labelText"					"#L4D360UI_AudioOptions_Language"
			"tooltiptext"				"#L4D360UI_AudioOptions_Tooltip_Language"
			"disabled_tooltiptext"		"#L4D360UI_AudioOptions_Tooltip_Language_Disabled"
			"style"						"DropDownButton"
			"command"					"FlmLanguage"
			"ActivationType"			"1"
			"OnlyActiveUser"			"1"
		}
	}

	//flyouts		
	"FlmLanguage"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmLanguage"
		"visible"				"0"
		"wide"					"0"
		"tall"					"0"
		"zpos"					"4"
		"InitialFocus"			"BtnOtherLanguage"
		"ResourceFile"			"resource/UI/basemodui/DropDownLanguage.res"
		"OnlyActiveUser"		"1"
	}
}