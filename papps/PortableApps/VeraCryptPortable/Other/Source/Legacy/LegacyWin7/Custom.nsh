${SegmentFile}

${SegmentPrePrimary}
	${If} ${AtLeastWin8}
		${If} ${FileExists} "$EXEDIR\App\VeraCrypt\VeraCrypt-modern.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt-legacy.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt-modern.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt.exe"
		${EndIf}
		${If} ${FileExists} "$EXEDIR\App\VeraCrypt\VeraCrypt-x64-modern.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt-x64.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt-x64-legacy.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt-x64-modern.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt-x64.exe"
		${EndIf}
		${If} ${FileExists} "$EXEDIR\App\VeraCrypt\VeraCryptExpander-modern.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCryptExpander.exe" "$EXEDIR\App\VeraCrypt\VeraCryptExpander-legacy.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCryptExpander-modern.exe" "$EXEDIR\App\VeraCrypt\VeraCryptExpander.exe"
		${EndIf}
		${If} ${FileExists} "$EXEDIR\App\VeraCrypt\VeraCryptExpander-x64-modern.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCryptExpander-x64.exe" "$EXEDIR\App\VeraCrypt\VeraCryptExpander-x64-legacy.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCryptExpander-x64-modern.exe" "$EXEDIR\App\VeraCrypt\VeraCryptExpander-x64.exe"
		${EndIf}		
		${If} ${FileExists} "$EXEDIR\App\VeraCrypt\VeraCrypt Format-modern.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt Format.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt Format-legacy.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt Format-modern.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt Format.exe"
		${EndIf}		
		${If} ${FileExists} "$EXEDIR\App\VeraCrypt\VeraCrypt Format-x64-modern.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt Format-x64.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt Format-x64-legacy.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt Format-x64-modern.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt Format-x64.exe"
		${EndIf}		
	${Else}
		${If} ${FileExists} "$EXEDIR\App\VeraCrypt\VeraCrypt-legacy.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt-modern.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt-legacy.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt.exe"
		${EndIf}
		${If} ${FileExists} "$EXEDIR\App\VeraCrypt\VeraCrypt-x64-legacy.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt-x64.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt-x64-modern.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt-x64-legacy.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt-x64.exe"
		${EndIf}
		${If} ${FileExists} "$EXEDIR\App\VeraCrypt\VeraCryptExpander-legacy.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCryptExpander.exe" "$EXEDIR\App\VeraCrypt\VeraCryptExpander-modern.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCryptExpander-legacy.exe" "$EXEDIR\App\VeraCrypt\VeraCryptExpander.exe"
		${EndIf}
		${If} ${FileExists} "$EXEDIR\App\VeraCrypt\VeraCryptExpander-x64-legacy.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCryptExpander-x64.exe" "$EXEDIR\App\VeraCrypt\VeraCryptExpander-x64-modern.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCryptExpander-x64-legacy.exe" "$EXEDIR\App\VeraCrypt\VeraCryptExpander-x64.exe"
		${EndIf}		
		${If} ${FileExists} "$EXEDIR\App\VeraCrypt\VeraCrypt Format-legacy.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt Format.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt Format-modern.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt Format-legacy.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt Format.exe"
		${EndIf}		
		${If} ${FileExists} "$EXEDIR\App\VeraCrypt\VeraCrypt Format-x64-legacy.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt Format-x64.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt Format-x64-modern.exe"
			Rename "$EXEDIR\App\VeraCrypt\VeraCrypt Format-x64-legacy.exe" "$EXEDIR\App\VeraCrypt\VeraCrypt Format-x64.exe"
		${EndIf}	
	${EndIf}
!macroend