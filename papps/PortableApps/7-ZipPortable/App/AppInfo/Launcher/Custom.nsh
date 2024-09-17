${SegmentFile}

${SegmentInit}
	ReadRegStr $0 HKLM "HARDWARE\DESCRIPTION\System" "Identifier"
	StrCpy $1 $0 3 0
		
	${If} $1 == "ARM"
		${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\7-ZipARM64"
		Rename "$EXEDIR\App\7-Zip\Lang" "$EXEDIR\App\7-ZipARM64\Lang"
		Rename "$EXEDIR\App\7-Zip64\Lang" "$EXEDIR\App\7-ZipARM64\Lang"
	${Else}
		${If} $Bits = 64
			${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\7-Zip64"
			Rename "$EXEDIR\App\7-Zip\Lang" "$EXEDIR\App\7-Zip64\Lang"
			Rename "$EXEDIR\App\7-ZipARM64\Lang" "$EXEDIR\App\7-Zip64\Lang"
		${Else}
			${SetEnvironmentVariablesPath} FullAppDir "$EXEDIR\App\7-Zip"
			Rename "$EXEDIR\App\7-Zip64\Lang" "$EXEDIR\App\7-Zip\Lang"
			Rename "$EXEDIR\App\7-ZipARM64\Lang" "$EXEDIR\App\7-Zip\Lang"
		${EndIf}
	${EndIf}
!macroend

${SegmentPre}
	ReadRegStr $0 HKLM "HARDWARE\DESCRIPTION\System" "Identifier"
	StrCpy $1 $0 3 0
		
	${If} $1 == "ARM"
		${ReadLauncherConfig} $ProgramExecutable Launch ProgramExecutableARM64
	${EndIf}

	${Registry::StrToHex} ":" $9 ;$9 now contains the ASCII code for :
	ExpandEnvStrings $0 "%PAL:Drive%"
	${Registry::StrToHex} $0 $1 ;$1 now contains the ASCII code for current drive
	${WordReplace} $1 $9 "" "+" $2
		
	ExpandEnvStrings $3 "%PAL:LastDrive%"
	${Registry::StrToHex} $3 $4 ;$4 now contains the ASCII code for last drive
	${WordReplace} $4 $9 "" "+" $5
	
	System::Call 'Kernel32::SetEnvironmentVariable(t, t) i("PAL:DriveHex", "$2").r0'
	System::Call 'Kernel32::SetEnvironmentVariable(t, t) i("PAL:LastDriveHex", "$5").r0'
!macroend