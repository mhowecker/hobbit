CoDeSys+1                     @        @   2.3.9.41    @?    @                                     аГ8U с   c:\documents and settings\administrator\desktop\hobbit\programm\libs\;k:\01_projects\514006(hobbit)\01_software\plc\libs\;s:\hella.automation\20127 - hobbit\software\plc_tu_svn\libs\ @      Cюн3Рpй             KбQ        EЉ  @   t   C:\TWINCAT\PLC\LIB\TcUtilities.lib @                                                                                ђ          ARG_TO_CSVFIELD           pSrc               ` §џ           Pointer to the source buffer    pDest               ` §џ       #    Pointer to the destination buffer    cbMax         ` §џ           Max. number of input bytes    cbScan         ` §џ           Input stream data byte number    cbReturn         ` §џ           Number of result data bytes       in                 T_Arg   §џ       T    Input data in PLC format (any data type, string, integer, floating point value...)    bQM            §џ	       h    TRUE => Enclose result data in quotation marks, FALSE => Don't enclose result data in quotation marks.    pOutput           §џ
       /    Address of output buffer (destination buffer)    cbOutput           §џ       !    Max. byte size of output buffer       ARG_TO_CSVFIELD                                     яP      џџџџ        
   BCD_TO_DEC        
   RisingEdge                 R_TRIG ` §џ                 START            §џ              BIN           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ	              DOUT           §џ
       П   
	Error codes:
		0x00		: No Errors
		0x0F	: Parameter value NOT correct. Wrong BCD input value in Low Nibble.
		0xF0	: Parameter value NOT correct. Wrong BCD input value in High Nibble.
            яP      џџџџ           BE128_TO_HOST               in                T_UHUGE_INTEGER   §џ                 BE128_TO_HOST                T_UHUGE_INTEGER                             яP      џџџџ           BE16_TO_HOST               in           §џ                 BE16_TO_HOST                                     яP      џџџџ           BE32_TO_HOST           parr    	                            ` §џ                 in           §џ                 BE32_TO_HOST                                     яP      џџџџ           BE64_TO_HOST               in                T_ULARGE_INTEGER   §џ                 BE64_TO_HOST                T_ULARGE_INTEGER                             яP      џџџџ           BYTEARR_TO_MAXSTRING               in   	  џ                       §џ                 BYTEARR_TO_MAXSTRING               T_MaxString                             яP     џџџџ           CSVFIELD_TO_ARG           pSrc               ` §џ           Pointer to the source buffer    pDest               ` §џ       $     Pointer to the destination buffer    cbMax         ` §џ           Max. number of output bytes    cbScan         ` §џ           Input stream data byte number    cbReturn         ` §џ           Number of result data bytes    bQMPrior          ` §џ       c    TRUE => Previous character was quotation mark. FALSE => Previous character was not quotation mark       pInput           §џ       G    Address of input buffer with data in CSV field format (source buffer )   cbInput           §џ	           Byte size of input data    bQM            §џ
       \    TRUE => Remove enclosing quotation marks. FALSE => Don't remove enclosing quotation marks.    out                 T_Arg   §џ       U    Output data in PLC format (any data type, string, integer, floating point value...)       CSVFIELD_TO_ARG                                     яP      џџџџ           CSVFIELD_TO_STRING           cbField         ` §џ                 in               T_MaxString   §џ       "    Input string in CSV field format    bQM            §џ	       \    TRUE => Remove enclosing quotation marks. FALSE => Don't remove enclosing quotation marks.       CSVFIELD_TO_STRING               T_MaxString                             яP      џџџџ           DATA_TO_HEXSTR           iCase         ` §џ              pCells    	  џ                          ` §џ              idx         ` §џ                 pData           §џ           Pointer to data buffer    cbData             U              §џ           Byte size of data buffer    bLoCase            §џ       9    Default: use "ABCDEF", if TRUE use "abcdef" characters.       DATA_TO_HEXSTR               T_MaxString                             яP     џџџџ        
   DCF77_TIME     "      DataBits   	  <                         §џ              BitNo            §џ              dtCurr            §џ              dtNext            §џ              tziCurr               E_TimeZoneID    §џ       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID    §џ       8    Time zone information extracted from previous telegram    tDiff            §џ           Two telegram time difference    bCheck             §џ              Step         ` §џ!           	   StartEdge                 R_TRIG ` §џ"              RisingPulse                 R_TRIG ` §џ$              FallingPulse                 F_TRIG ` §џ%           	   LongPulse                    TON ` §џ&           
   ShortPulse                    TON ` §џ'           
   DetectSync                    TOF ` §џ(              NoDCFSignal                    TON ` §џ)              DCFCycleLen                    TON ` §џ*           	   bIsRising          ` §џ,           
   bIsFalling          ` §џ-              bIsLong          ` §џ.              bIsShort          ` §џ/              Working          ` §џ0           	   DataValid          ` §џ2           
   ParitySum1         ` §џ3           
   ParitySum2         ` §џ4           
   ParitySum3         ` §џ5              i         ` §џ7           	   DummyByte         ` §џ8              DummyString    Q       Q  ` §џ9              Hour         ` §џ;              Minute         ` §џ<              Year         ` §џ=              Month         ` §џ>              Day         ` §џ?              	   DCF_PULSE            §џ           DCF77 pulse: 101010101...    RUN            §џ       *    Enable/disable function block execution.       BUSY            §џ           TRUE = Decoding in progress    ERR            §џ	       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           §џ
           Error code    ERRCNT           §џ           Error counter    READY            §џ       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           §џ           date and time information             яP      џџџџ           DCF77_TIME_EX     #      DataBits   	  <                         §џ           Decoded data bits    BitNo            §џ           Decoded bit number    dtCurr            §џ       %    Time extracted from latest telegram    dtNext            §џ            Supposed next time    tziCurr               E_TimeZoneID    §џ!       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID    §џ"       8    Time zone information extracted from previous telegram    tDiff            §џ#       )    Time difference of two latest telegrams    bCheck             §џ$       H    TRUE = Plausibility check over two telegrams enabled, FALSE = disabled    Step         ` §џ&           	   StartEdge                 R_TRIG ` §џ'              RisingPulse                 R_TRIG ` §џ)              FallingPulse                 F_TRIG ` §џ*           	   LongPulse                    TON ` §џ+           
   ShortPulse                    TON ` §џ,           
   DetectSync                    TOF ` §џ-              NoDCFSignal                    TON ` §џ.              DCFCycleLen                    TON ` §џ/           	   bIsRising          ` §џ1           
   bIsFalling          ` §џ2              bIsLong          ` §џ3              bIsShort          ` §џ4              Working          ` §џ5           	   DataValid          ` §џ7           
   ParitySum1         ` §џ8           
   ParitySum2         ` §џ9           
   ParitySum3         ` §џ:              i         ` §џ<           	   DummyByte         ` §џ=              DummyString    Q       Q  ` §џ>              Hour         ` §џ@              Minute         ` §џA              Year         ` §џB              Month         ` §џC              Day         ` §џD           	   DayOfWeek         ` §џE              	   DCF_PULSE            §џ           DCF77 pulse: 101010101...    RUN            §џ       *    Enable/disable function block execution.    TLP          §џ           Short/long pulse split point       BUSY            §џ	           TRUE = Decoding in progress    ERR            §џ
       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           §џ           Error code    ERRCNT           §џ           Error counter    READY            §џ       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           §џ           date and time information    DOW                         §џ       0     ISO 8601 day of week: 1 = Monday.. 7 = Sunday    TZI               E_TimeZoneID   §џ           time zone information    ADVTZI            §џ       1    MEZ->MESZ or MESZ->MEZ time change notification    LEAPSEC            §џ           TRUE = Leap second    RAWDT   	  <                        §џ           Raw decoded data bits             яP      џџџџ        
   DEC_TO_BCD        
   RisingEdge                 R_TRIG ` §џ                 START            §џ              DIN           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ	              BOUT           §џ
       h   
	Error codes:
		0x00		: No errors
		0xFF	: Parameter value NOT correct. Wrong DECIMAL input value.
            яP      џџџџ        
   DEG_TO_RAD               ANGLE                        §џ              
   DEG_TO_RAD                                                  яP      џџџџ           DINT_TO_DECSTR               in           §џ           
   iPrecision           §џ	                 DINT_TO_DECSTR               T_MaxString                             яP      џџџџ           DT_TO_FILETIME           ui64                T_ULARGE_INTEGER ` §џ                 DTIN           §џ                 DT_TO_FILETIME             
   T_FILETIME                             яP      џџџџ           DT_TO_SYSTEMTIME           sDT             ` §џ              nDay         ` §џ              b   	                 
    24(16#30)      0    ` §џ              TS                   
   TIMESTRUCT ` §џ           	   Index7001                            DTIN           §џ                 DT_TO_SYSTEMTIME                   
   TIMESTRUCT                             яP      џџџџ           DWORD_TO_BINSTR           bits   	                        ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant bits    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_BINSTR               T_MaxString                             яP      џџџџ           DWORD_TO_DECSTR           dec   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ              divider     Ъ; ` §џ              number         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_DECSTR               T_MaxString                             яP      џџџџ           DWORD_TO_HEXSTR           hex   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ              bLoCase            §џ	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       DWORD_TO_HEXSTR               T_MaxString                             яP      џџџџ           DWORD_TO_LREALEX               in           §џ                 DWORD_TO_LREALEX                                                  яP      џџџџ           DWORD_TO_OCTSTR           oct   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_OCTSTR               T_MaxString                             яP      џџџџ           F_ARGCMP               typeSafe            §џ              arg1                 T_Arg   §џ              arg2                 T_Arg   §џ                 F_ARGCMP                                     яP      џџџџ           F_ARGCPY               typeSafe            §џ                 F_ARGCPY                               dest                  T_Arg  §џ
              src                  T_Arg  §џ                   яP      џџџџ           F_ARGISZERO               arg                 T_Arg   §џ                 F_ARGIsZero                                      яP      џџџџ        	   F_BIGTYPE               pData           §џ            Address pointer of data buffer    cbLen           §џ           Byte length of data buffer    	   F_BIGTYPE                 T_Arg                             яP      џџџџ           F_BOOL                   F_BOOL                 T_Arg                       in            §џ                   яP      џџџџ           F_BYTE                   F_BYTE                 T_Arg                       in           §џ                   яP      џџџџ           F_BYTE_TO_CRC16_CCITT               value           §џ           Data value    crc           §џ       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_BYTE_TO_CRC16_CCITT                                     яP      џџџџ           F_CHECKSUM16        	   wChkSum_I         ` §џ	       %    internal ChkSum                        dataWord         ` §џ
       %    current data byte                      iIdx         ` §џ       %    current data buffer index              ptrData               ` §џ       %    pointer to current data byte           	   dwSrcAddr           §џ       %    address of data buffer                 cbLen           §џ       %    length of data buffer                  wChkSum           §џ       %    init value (16#0000) or last ChkSum       F_CheckSum16                                     яP      џџџџ           F_CRC16_CCITT           wCRC_I         ` §џ
       $    internal CRC                          dataWord         ` §џ       $    current data byte                     iIdx         ` §џ       $    current data buffer index             ptrData               ` §џ       $    pointer to current data byte          	   dwSrcAddr           §џ       $    address of data buffer                cbLen           §џ       $    length of data buffer                 wLastCRC           §џ       $    init value (16#FFFF) or last CRC16       F_CRC16_CCITT                                     яP      џџџџ           F_CREATEHASHTABLEHND           p                     T_HashTableEntry      ` §џ              i         ` §џ                 pEntries                     T_HashTableEntry        §џ       C    Pointer to the first entry of hash table database (element array) 	   cbEntries           §џ       ;    Byte size (length) of hash table database (element array)       F_CreateHashTableHnd                                hTable         	               T_HHASHTABLE  §џ           Hash table handle         яP      џџџџ           F_CREATELINKEDLISTHND           p                   T_LinkedListEntry      ` §џ           Temp. previous node    n                   T_LinkedListEntry      ` §џ           Temp. next node    i         ` §џ           loop iterator       pEntries                   T_LinkedListEntry        §џ       @    Pointer to the first linked list node database (element array) 	   cbEntries           §џ       <    Byte size (length) of linked list database (element array)       F_CreateLinkedListHnd                                hList         	               T_HLINKEDLIST  §џ           Linked list handle         яP      џџџџ           F_DATA_TO_CRC16_CCITT           i         ` §џ                 pData           §џ           Pointer to data    cbData           §џ           Length of data    crc           §џ       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_DATA_TO_CRC16_CCITT                                     яP      џџџџ           F_DINT                   F_DINT                 T_Arg                       in           §џ                   яP      џџџџ           F_DWORD                   F_DWORD                 T_Arg                       in           §џ                   яP      џџџџ           F_FORMATARGTOSTR     	      pOut               ` §џ              longword         ` §џ              double                      ` §џ              single          ` §џ              short         ` §џ              small         ` §џ              longint         ` §џ              iPaddingLen         ` §џ              iCurrLen         ` §џ           
      bSign            §џ           Sign prefix flag    bBlank            §џ           Blank prefix flag    bNull            §џ           Null prefix flag    bHash            §џ           Hash prefix flag    bLAlign            §џ       4    FALSE => Right align (default), TRUE => Left align    bWidth            §џ       C    FALSE => no width padding, TRUE => blank or zeros padding enabled    iWidth           §џ	           Width length parameter 
   iPrecision           §џ
           Precision length parameter    eFmtType               E_TypeFieldParam   §џ           Format type field parameter    arg                 T_Arg   §џ           Format argument       F_FormatArgToStr                               sOut                 T_MaxString  §џ                   яP      џџџџ           F_GETDAYOFMONTHEX           dom         ` §џ           Day of month    dow         ` §џ           Day of week    n         ` §џ              dwYears         ` §џ              dwDays         ` §џ                 wYear     A  A  kx             §џ           Year: 1601..30827    wMonth                         §џ           Month: 1..12    wWOM                         §џ       Г     Week of month. Occurrence of the day of the week within the month (1..5, where 5 indicates the final occurrence during the month if that day of the week does not occur 5 times).   wDOW                           §џ       4    Day of week (0 = Sunday, 1 = Monday.. 6 = Saturday       F_GetDayOfMonthEx                                     яP      џџџџ           F_GETDAYOFWEEK           sysTime                   
   TIMESTRUCT ` §џ	                 in           §џ                 F_GetDayOfWeek                                     яP      џџџџ           F_GETDOYOFYEARMONTHDAY           bLY          ` §џ
                 wYear           §џ           Year: 0..2xxx    wMonth           §џ           Month 1..12    wDay           §џ           Day: 1..31       F_GetDOYOfYearMonthDay                                     яP      џџџџ           F_GETFLOATREC     
   	   ptrDouble    	                               §џ              fValue                         §џ
              fBegin                         §џ              nBegin            §џ              fDiv                         §џ              nDig            §џ              nDigit            §џ              fMaxPrecision                         §џ              i            §џ              nLastDecDigit            §џ                 fVal                        §џ           
   iPrecision           §џ              bRound            §џ                 F_GetFloatRec              
   T_FloatRec                             яP      џџџџ           F_GETMAXMONTHDAYS               wYear           §џ	              wMonth           §џ
                 F_GetMaxMonthDays                                     яP      џџџџ           F_GETMONTHOFDOY           bLY          ` §џ	              wMonth         ` §џ
                 wYear           §џ           Year: 0..2xxx    wDOY           §џ           Year's day number: 1..366       F_GetMonthOfDOY                                     яP      џџџџ           F_GETVERSIONTCUTILITIES               nVersionElement           §џ       d   
	Possible nVersionElement parameter:
	1	:	major number
	2	:	minor number
	3	:	revision number
      F_GetVersionTcUtilities                                     яP      џџџџ           F_GETWEEKOFTHEYEAR           date_sec         ` §џ           date seconds    dow         ` §џ	           day of week    year         ` §џ
              KWStart         ` §џ              first    yG ` §џ              ff                      ` §џ                 in           §џ                 F_GetWeekOfTheYear                                     яP      џџџџ           F_HUGE                   F_HUGE                 T_Arg                       in                 T_HUGE_INTEGER  §џ                   яP      џџџџ           F_INT                   F_INT                 T_Arg                       in           §џ                   яP      џџџџ           F_LARGE                   F_LARGE                 T_Arg                       in                 T_LARGE_INTEGER  §џ                   яP      џџџџ           F_LREAL                   F_LREAL                 T_Arg                       in                        §џ                   яP      џџџџ           F_LTRIM           pChar               ` §џ              pStr                 T_MaxString      ` §џ	                 in               T_MaxString   §џ                 F_LTrim               T_MaxString                             яP      џџџџ           F_REAL                   F_REAL                 T_Arg                       in            §џ                   яP      џџџџ           F_RTRIM           n         ` §џ              pChar               ` §џ	                 in               T_MaxString   §џ                 F_RTrim               T_MaxString                             яP      џџџџ           F_SINT                   F_SINT                 T_Arg                       in           §џ                   яP      џџџџ           F_STRING                   F_STRING                 T_Arg                       in                 T_MaxString  §џ                   яP      џџџџ        
   F_SWAPREAL           pReal    	                               §џ              pResult    	                               §џ                 fVal            §џ              
   F_SwapReal                                      яP      џџџџ           F_SWAPREALEX           pIN    	                            ` §џ              wSave         ` §џ	                     F_SwapRealEx                                fVal            §џ                   яP      џџџџ        	   F_TOLCASE           pDest               ` §џ              idx                 MIN_SBCS_TABLE   MAX_SBCS_TABLE ` §џ	                 in               T_MaxString   §џ              	   F_ToLCase               T_MaxString                             яP     џџџџ        	   F_TOUCASE           pDest               ` §џ              idx                 MIN_SBCS_TABLE   MAX_SBCS_TABLE ` §џ	                 in               T_MaxString   §џ              	   F_ToUCase               T_MaxString                             яP     џџџџ           F_TRANSLATEFILETIMEBIAS           ui64In                T_ULARGE_INTEGER ` §џ       E    Input file time as 64 bit unsigned integer (number of 100ns ticks)     ui64Bias                T_ULARGE_INTEGER ` §џ       ?    Bias value as 64 bit unsigned integer (number of 100ns ticks)    ui64Out                T_ULARGE_INTEGER ` §џ       @    Local time as 64 bit unsigned integer (number of 100ns ticks)        in             
   T_FILETIME   §џ       1    Input time in file time format to be translated    bias           §џ       y    Bias value in minutes. The bias is the difference, in minutes, between Coordinated Universal Time (UTC) and local time.    toUTC            §џ       U    TRUE => Translate from local time to UTC, FALSE => Translate from UTC to local Time       F_TranslateFileTimeBias             
   T_FILETIME                             яP      џџџџ           F_UDINT                   F_UDINT                 T_Arg                       in           §џ                   яP      џџџџ           F_UHUGE                   F_UHUGE                 T_Arg                       in                 T_UHUGE_INTEGER  §џ                   яP      џџџџ           F_UINT                   F_UINT                 T_Arg                       in           §џ                   яP      џџџџ           F_ULARGE                   F_ULARGE                 T_Arg                       in                 T_ULARGE_INTEGER  §џ                   яP      џџџџ           F_USINT                   F_USINT                 T_Arg                       in           §џ                   яP      џџџџ           F_WORD                   F_WORD                 T_Arg                       in           §џ                   яP      џџџџ           F_YEARISLEAPYEAR               wYear           §џ                 F_YearIsLeapYear                                      яP      џџџџ           FB_ADDROUTEENTRY        
   fbAdsWrite       P    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_ADDREMOTE, IDXOFFS := 0 )              	   T_AmsPort         !                 ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ           	   dataEntry                ST_AmsRouteSystemEntry ` §џ                 sNetID            
   T_AmsNetID   §џ       &    TwinCAT network address (ams net id)    stRoute                    ST_AmsRouteEntry   §џ       !    Structure with route parameters    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ                       яP     џџџџ           FB_AMSLOGGER        
   fbAdsWrite       [    ( PORT:= AMSPORT_AMSLOGGER, IDXGRP:= AMSLOGGER_IGR_GENERAL, IDXOFFS:= AMSLOGGER_IOF_MODE )              	   T_AmsPort                          ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              stReq                ST_AmsLoggerReq ` §џ                 sNetId           ''    
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    eMode           AMSLOGGER_RUN       E_AmsLoggerMode   §џ              sCfgFilePath           ''       T_MaxString   §џ              bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrId           §џ                       яP     џџџџ           FB_BASICPID           nERR_NOERROR           §џ           no error						   nERR_INVALIDPARAM          §џ           invalid parameter				   nERR_INVALIDCYCLETIME          §џ           invalid cycle time				   fE               0.0            §џ            error input					   fE_1               0.0            §џ!           error input z^(-1)				   fY               0.0            §џ"           control output				   fY_1               0.0            §џ#           control output  z^(-1)			   fYP               0.0            §џ$           P-part						   fYI               0.0            §џ%           I-part						   fYI_1               0.0            §џ&           I-part  z^(-1)					   fYD               0.0            §џ'           D-T1-part					   fYD_1               0.0            §џ(           D-T1-part  z^(-1)				   bInit            §џ*       %    initialization flag for first cycle	   bIsIPart             §џ+           I-part active ?				   bIsDPart             §џ,           D-part active ?				   fDi               0.0            §џ.           internal I param				   fDd               0.0            §џ/           internal D param				   fCd               0.0            §џ0           internal D param				   fCtrlCycleTimeOld               0.0            §џ2              fKpOld               0.0            §џ3              fTnOld               0.0            §џ4              fTvOld               0.0            §џ5              fTdOld               0.0            §џ6                 fSetpointValue                        §џ           setpoint value							   fActualValue                        §џ           actual value							   bReset            §џ           controller values    fCtrlCycleTime                        §џ	       (    controller cycle time in seconds [s]			   fKp                        §џ           proportional gain Kp	(P)					   fTn                        §џ           integral gain Tn (I) [s]						   fTv                        §џ       "    derivative gain Tv (D-T1) [s]				   fTd                        §џ       (    derivative damping time Td (D-T1) [s]		      fCtrlOutput                        §џ           controller output command				   nErrorStatus           §џ       1    controller error output (0: no error; >0:error)	            яP      џџџџ           FB_BUFFEREDTEXTFILEWRITER           fbFile                               FB_TextFileRingBuffer ` §џ           
   closeTimer                    TON ` §џ           auto close timer    bRemove          ` §џ              nStep         ` §џ                 sNetId           ''    
   T_AmsNetId ` §џ           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString ` §џ	       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath ` §џ
           default: Open generic file    bAppend         ` §џ       )    TRUE = append lines, FALSE = not append 
   tAutoClose       ` §џ              tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ                 fbBuffer                 FB_StringRingBuffer` §џ           string ring buffer         яP     џџџџ           FB_CONNECTSCOPESERVER           stRecordDesc       d    (nRunMode:=0, nSopMode:=0, bStoreOnDisk:=FALSE, bUseLocalServer:=FALSE, bStartServerFromFile:=TRUE)                                #   ST_ScopeServerRecordModeDescription    §џ              nState            §џ              nErrorState            §џ           
   fbAdsWrite                          ADSWRITE    §џ              fbQueryRegistry                                 FB_RegQueryValue    §џ              sScopeServerDir                §џ              sScopeServerPath                §џ              fbStartServer                              NT_StartProcess    §џ              fbWait                    TON    §џ               bTriggerServerStart            §џ!              nDwellTimeCounter            §џ"              nPort           27110    	   T_AmsPort   §џ%              Connect_IdxGrp     u     §џ&          0x7500      sNetId           ''    
   T_AmsNetId   §џ              bExecute            §џ              sConfigFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ              bError            §џ              nErrorId           §џ                       яP     џџџџ           FB_CSVMEMBUFFERREADER           state         ` §џ              getBufferIndex         ` §џ              scanPtr               ` §џ              scanSize         ` §џ              bField          ` §џ              cbCopied         ` §џ           
   bFirstChar          ` §џ              bDQField          ` §џ           	   bDQBefore          ` §џ              pField         ` §џ       U    If successfull then this variable returns the address of the first/next field value    cbField         ` §џ       W    If successfull then this variable returns the byte size of the first/next field value    bEOF          ` §џ           TRUE => End of field found    bBreak          ` §џ                 eCmd           eEnumCmd_First       E_EnumCmdType   §џ       )    Command type: read first or next field ?   pBuffer           §џ       #    Address ( pointer) of data buffer    cbBuffer           §џ           Max. byte size of data buffer       bOk            §џ	       &    TRUE => Successfull, FALSE => Failed    getValue           ''       T_MaxString   §џ
       N    If successfull then this output returns the first/next field value as string    pValue           §џ       s    Pointer to the first value byte (HINT: String values are not null terminated. Empty string returns Null pointer )    cbValue           §џ           Field value byte size    bCRLF            §џ       .    TRUE => End of record separator found (CRLF)    cbRead           §џ       )    Number of successfully parse data bytes             яP      џџџџ           FB_CSVMEMBUFFERWRITER           fbReader                                    FB_CSVMemBufferReader ` §џ              temp   	  ,                    ` §џ           Temp buffer    cbTemp         ` §џ       %    Number of data bytes in temp buffer    cbCopied         ` §џ       9    Number of data bytes copied to the external data buffer    bNewLine         ` §џ           TRUE => start with new line       eCmd           eEnumCmd_First       E_EnumCmdType   §џ       *    Command type: write first or next field ?   putValue           ''       T_MaxString   §џ       &    New first/next field value as string    pValue           §џ       C    OPTIONAL: Pointer to external buffer containing field value data.    cbValue           §џ       F    OPTIONAL: Byte size of external buffer containing field value data.     bCRLF            §џ       0    TRUE = > Append end of record separator (CRLF)    pBuffer           §џ	       #    Address ( pointer) of data buffer    cbBuffer           §џ
           Max. byte size of data buffer       bOk            §џ       &    TRUE => Successfull, FALSE => Failed    cbSize           §џ           Number fo used data bytes    cbFree           §џ           Number of free data bytes    nFields           §џ           Number of fields    nRecords           §џ           Number of records    cbWrite           §џ       +    Number of successfully written data bytes             яP      џџџџ           FB_DBGOUTPUTCTRL           fbFormat                                     FB_FormatString ` §џ              fbBuffer        	               FB_StringRingBuffer ` §џ              fbFile       +    (ePath := PATH_BOOTPATH, bAppend := TRUE )                 PATH_GENERIC    
   E_OpenPath                      FB_BufferedTextFileWriter ` §џ              buffer   	  '                   ` §џ              state         ` §џ              nItems         ` §џ              k         ` §џ               bInit         ` §џ!           Hex logging    i         ` §џ$              cells   	                               ` §џ%              pCells                 T_MaxString      ` §џ&              cbL1         ` §џ'              cbL2         ` §џ'              idx         ` §џ'              pSrc1               ` §џ(              pSrc2               ` §џ(                 dwCtrl         ` §џ       &    Debug message target: DBG_OUTPUT_LOG    sFormat           ''       T_MaxString ` §џ           Debug message format string    arg1                 T_Arg ` §џ           Format string argument    arg2                 T_Arg ` §џ              arg3                 T_Arg ` §џ	              arg4                 T_Arg ` §џ
              arg5                 T_Arg ` §џ              arg6                 T_Arg ` §џ              arg7                 T_Arg ` §џ              arg8                 T_Arg ` §џ              arg9                 T_Arg ` §џ              arg10                 T_Arg ` §џ              sFilter           ''       T_MaxString ` §џ                 bError          ` §џ              nError         ` §џ           	   nOverflow         ` §џ                       яP     џџџџ           FB_DISCONNECTSCOPESERVER        
   fbAdsWrite                          ADSWRITE    §џ              nState            §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       яP     џџџџ           FB_ENUMFINDFILEENTRY        
   fbAdsRdWrt       B    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_FFILEFIND )              	   T_AmsPort                         ADSRDWRT ` §џ           
   fbAdsWrite       D    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_CLOSEHANDLE )              	   T_AmsPort         o              ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ           	   dataEntry                            ST_AmsFindFileSystemEntry ` §џ              eFindCmd               E_EnumCmdType ` §џ                 sNetId            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id) 	   sPathName               T_MaxString   §џ       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ              bError            §џ              nErrID           §џ              bEOE            §џ           End of enumeration 
   stFindFile                     ST_FindFileEntry   §џ           Find file entry             яP     џџџџ           FB_ENUMFINDFILELIST           fbEnum                              FB_EnumFindFileEntry ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              cbEntry         ` §џ              nEntries         ` §џ              pEntry                      ST_FindFileEntry      ` §џ                 sNetId            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id) 	   sPathName               T_MaxString   §џ       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command 	   pFindList           §џ       &    POINTER TO ARRAY OF ST_FindFileEntry 
   cbFindList           §џ       (    Byte size of ARRAY OF ST_FindFileEntry    bExecute            §џ	       6    Rising edge on this input activates the fb execution    tTimeout         §џ
           Max fb execution time       bBusy            §џ              bError            §џ              nErrID           §џ              bEOE            §џ           End of enumeration 
   nFindFiles           §џ           Number of find files             яP     џџџџ           FB_ENUMROUTEENTRY        	   fbAdsRead       Z    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_ENUMREMOTE (*, IDXGRP := index *) )              	   T_AmsPort         #             ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              index    џџџџ ` §џ           	   dataEntry                ST_AmsRouteSystemEntry ` §џ                 sNetID            
   T_AmsNetID   §џ       '    TwinCAT network address (ams net id )    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ              bEOE            §џ       l    End of enumeration. This value is TRUE after the first read that attempts to read next non existing entry.    stRoute                    ST_AmsRouteEntry   §џ       !    Structure with route parameters             яP     џџџџ           FB_ENUMSTRINGNUMBERS           pSrc               ` §џ              pDest               ` §џ              pNext               ` §џ              char         ` §џ              state         ` §џ              bEat          ` §џ                 sSearch               T_MaxString   §џ           Source string    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command    eType           eNumGroup_Float       E_NumGroupTypes   §џ           String number format type       sNumber               T_MaxString   §џ           Found string number    nPos           §џ	       )    <> 0 => Next scan/search start position    bEOS            §џ
           TRUE = End of string             яP      џџџџ           FB_FILERINGBUFFER           fbOpen                             FB_FileOpen ` §џ              fbClose                      FB_FileClose ` §џ              fbWrite                           FB_FileWrite ` §џ              fbRead                            FB_FileRead ` §џ               fbSeek                         FB_FileSeek ` §џ!              nStep         ` §џ"       X    0=idle, 1=init, 10,11=open, 20,21=seek, 30,31=read, 40,41=write, 50,51=close, 100=exit    bInit          ` §џ#       5    TRUE=reading length chunk, FALSE=reading data chunk    bExit          ` §џ$       O    FALSE=repeat reading/writing, TRUE=abort reading/writing, go to the exit step    bReopen          ` §џ%       t    Open mode: TRUE=try to open existing file, FALSE=create new file, if open fails => try to create and open new file    bOpen          ` §џ&       %    TRUE=file opened, FALSE=file closed    bGet          ` §џ'       $    TRUE=get entry, FALSE=remove entry    bOW          ` §џ(       b    TRUE=removing oldest entry (bOverwrite=TRUE), FALSE=don't remove oldest entry (bOverwrite=FALSE)    cbOW         ` §џ)       /    Temp length of ovwerwritten length/data chunk    cbMoved         ` §џ*       =    Number of successfully read/written length/data chunk bytes    ptrSaved         ` §џ+       M    Seek pointer previous position (used by A_GetHead or read buffer underflow)    ptrMax         ` §џ,       D    Seek pointer max. position = SIZEOF(ring buffer header) + cbBuffer    eCmd           eFileRBuffer_None       E_FileRBufferCmd ` §џ-              eOldCmd           eFileRBuffer_None       E_FileRBufferCmd ` §џ.                 sNetId           ''    
   T_AmsNetId   §џ           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString   §џ       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath   §џ           default: Open generic file    nID           §џ           user defined version ID    cbBuffer          §џ           max. file buffer byte size 
   bOverwrite            §џ	       :    FALSE = don't overwrite, TRUE = overwrite oldest entries 
   pWriteBuff           §џ
       "    pointer to external write buffer 
   cbWriteLen           §џ       $    byte size of external write buffer 	   pReadBuff           §џ       !    pointer to external read buffer 	   cbReadLen           §џ       #    byte size of external read buffer    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrID           §џ       х    ADS or function specific error codes:
	16#8000	= (File) buffer empty or overflow 
	16#8001 = (Application) buffer underflow (cbReadLen to small),  	
	16#8002	= Buffer is not opened  
	16#8003	= Invalid input parameter value    cbReturn           §џ       !    number of recend read data bytes   stHeader                          ST_FileRBufferHead   §џ           buffer status             яP     џџџџ            FB_FILETIMETOTZSPECIFICLOCALTIME           fbBase       !    ( wStdYear := 0, wDldYear := 0 )                                   "   FB_TranslateUtcToLocalTimeByZoneID ` §џ           Underlaid base function block       in             
   T_FILETIME   §џ           Time to be converted (UTC, file time format), 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601   tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out             
   T_FILETIME   §џ       *    Converted time in local file time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            яP      џџџџ           FB_FORMATSTRING     	      pFormat               ` §џ           pointer to the format string    pOut               ` §џ           pointer to the result string 
   iRemOutLen         ` §џ       $    Max remaining length of sOut buffer   bValid          ` §џ       8    if set, the string character is valid format parameter    stFmt                              ST_FormatParameters ` §џ           
   nArrayElem         ` §џ           	   nArgument         ` §џ              parArgs   	  
                     T_Arg              ` §џ              sArgStr               T_MaxString ` §џ                 sFormat               T_MaxString   §џ              arg1                 T_Arg   §џ              arg2                 T_Arg   §џ              arg3                 T_Arg   §џ              arg4                 T_Arg   §џ              arg5                 T_Arg   §џ              arg6                 T_Arg   §џ	              arg7                 T_Arg   §џ
              arg8                 T_Arg   §џ              arg9                 T_Arg   §џ              arg10                 T_Arg   §џ                 bError            §џ              nErrId           §џ              sOut               T_MaxString   §џ                       яP     џџџџ           FB_GETADAPTERSINFO     
   	   fbAdsRead       f    ( PORT:=AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_IPHELPERAPI, IDXOFFS:= IPHELPERAPI_ADAPTERSINFO )              	   T_AmsPort         Н                ADSREAD ` §џ           
   fbRegQuery       P    ( sSubKey:= '\Software\Beckhoff\TwinCAT\Remote', sValName := 'DefaultAdapter' )                        T_MaxString                    T_MaxString                   FB_RegQueryValue ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              cbInfo         ` §џ              idx         ` §џ              info   	                                      ST_IP_ADAPTER_INFO         ` §џ           buffer for 12 entries    pInfo                                 ST_IP_ADAPTER_INFO      ` §џ           
   nRealCount         ` §џ           	   sDefaultA               T_MaxString ` §џ                 sNetID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ	              bError            §џ
              nErrID           §џ              arrAdapters   	                                    ST_IpAdapterInfo           §џ              nCount           §џ           Max. number of found adapters    nGet           §џ       %    Number of read adapter info entries             яP     џџџџ           FB_GETDEVICEIDENTIFICATION        	   iDataSize       @` §џ           
   byTagStart    <    ` §џ           '<'    byTagEnd    >    ` §џ           '>' 
   byTagSlash    /    ` §џ           '/' 	   fbAdsRead                          ADSREAD ` §џ              bExecutePrev          ` §џ              iState         ` §џ              iData   	                      ` §џ           
   strActPath             ` §џ              iLoopEndIdx         ` §џ              iStructSize         ` §џ              strHardwareCPU             ` §џ              strTags   	  	        )       )          ` §џ           	   iTagsSize   	  	                     ` §џ              iCurrTag   	  (                     ` §џ               iCurrTagData   	  P                     ` §џ!           	   iPathSize         ` §џ"              iTagIdx         ` §џ$              iCurrTagIdx         ` §џ%              iDataIdx         ` §џ&              iCurrTagDataIdx         ` §џ'              k         ` §џ(              iMinCurrData         ` §џ)           	   iFirstIdx         ` §џ*              iLastIdx         ` §џ+           	   bTagStart          ` §џ-              bTagEnd          ` §џ.           	   bTagSlash          ` §џ/              bTagOpen          ` §џ0                 bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ              sNetId            
   T_AmsNetId   §џ           ams net id of target system       bBusy            §џ              bError            §џ	              nErrorID           §џ
           
   stDevIdent                              ST_DeviceIdentification   §џ       5    structure with available device identification data             яP     џџџџ           FB_GETDEVICEIDENTIFICATIONEX        	   iDataSize       @` §џ           
   byTagStart    <    ` §џ           '<'    byTagEnd    >    ` §џ           '>' 
   byTagSlash    /    ` §џ           '/' 	   fbAdsRead                          ADSREAD ` §џ              bExecutePrev          ` §џ              iState         ` §џ              iData   	                      ` §џ           
   strActPath             ` §џ              iLoopEndIdx         ` §џ              iStructSize         ` §џ              strHardwareCPU             ` §џ              strTags   	  	        )       )          ` §џ           	   iTagsSize   	  	                     ` §џ              iCurrTag   	  (                     ` §џ               iCurrTagData   	  P                     ` §џ!           	   iPathSize         ` §џ"              iTagIdx         ` §џ$              iCurrTagIdx         ` §џ%              iDataIdx         ` §џ&              iCurrTagDataIdx         ` §џ'              k         ` §џ(              iMinCurrData         ` §џ)           	   iFirstIdx         ` §џ*              iLastIdx         ` §џ+           	   bTagStart          ` §џ-              bTagEnd          ` §џ.           	   bTagSlash          ` §џ/              bTagOpen          ` §џ0                 bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ              sNetId            
   T_AmsNetId   §џ           Ams net id of target system       bBusy            §џ              bError            §џ	              nErrorID           §џ
           
   stDevIdent                              ST_DeviceIdentificationEx   §џ       5    structure with available device identification data             яP     џџџџ           FB_GETHOSTADDRBYNAME           fbAdsRW       j    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP:= SYSTEMSERVICE_IPHELPERAPI, IDXOFFS:= IPHELPERAPI_IPADDRBYHOSTNAME )              	   T_AmsPort         Н                
   ADSRDWRTEX ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id) 	   sHostName           ''       T_MaxString   §џ       1    String containing host name. E.g. 'DataServer1'    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout    ШЏ     §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ              sAddr           ''    
   T_IPv4Addr   §џ       S    String containing an (Ipv4) Internet Protocol dotted address. E.g. '172.16.7.199'    arrAddr           0, 0, 0, 0       T_IPv4AddrArr   §џ       C    Byte array containing an (Ipv4) Internet Protocol dotted address.             яP     џџџџ           FB_GETHOSTNAME        	   fbAdsRead       R    ( PORT :=  AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_IPHOSTNAME, IDXOFFS := 0 )              	   T_AmsPort         О                 ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ	              bError            §џ
              nErrID           §џ           	   sHostName               T_MaxString   §џ           The local host name             яP     џџџџ           FB_GETLOCALAMSNETID           fbRegQueryValue       W    ( sNetId:= '', sSubKey := 'SOFTWARE\Beckhoff\TwinCAT\System', sValName := 'AmsNetId' )                    
   T_AmsNetId                    T_MaxString                    T_MaxString                   FB_RegQueryValue ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              tmpBytes               T_AmsNetIdArr ` §џ                 bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeOut         §џ           Max fb execution time       bBusy            §џ              bError            §џ	              nErrId           §џ
           
   AddrString           '0.0.0.0.0.0'    
   T_AmsNetId   §џ       -    TwinCAT -specific network address as string 	   AddrBytes           0,0,0,0,0,0       T_AmsNetIdArr   §џ       3    TwinCAT-specific network address as array of byte             яP     џџџџ           FB_GETROUTERSTATUSINFO        	   fbAdsRead       &    ( PORT:= 1, IDXGRP:= 1, IDXOFFS:= 1 )              	   T_AmsPort                          ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              adsRes   	                       ` §џ                 sNetId           ''    
   T_AmsNetID   §џ           Ams net id    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ	              bError            §џ
              nErrID           §џ              info                   ST_TcRouterStatusInfo   §џ       #    TwinCAT Router status information             яP     џџџџ           FB_GETTIMEZONEINFORMATION        	   fbAdsRead       p    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS := TIMESERVICE_TIMEZONINFORMATION )              	   T_AmsPort                         ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              res                ST_AmsGetTimeZoneInformation ` §џ                 sNetID            
   T_AmsNetID   §џ       &    TwinCAT network address (ams net id)    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ              bError            §џ	              nErrID           §џ
              tzID               E_TimeZoneID   §џ              tzInfo                     ST_TimeZoneInformation   §џ                       яP     џџџџ           FB_HASHTABLECTRL           p                     T_HashTableEntry      ` §џ              n                     T_HashTableEntry      ` §џ              nHash         ` §џ                 key           §џ       d    Entry key: used by A_Lookup, A_Remove method, the key.lookup variable is also used by A_Add method    putValue           §џ           Entry value 	   putPosPtr                     T_HashTableEntry        §џ	                 bOk            §џ           TRUE = success, FALSE = error    getValue           §џ           	   getPosPtr                     T_HashTableEntry        §џ       R    returned by A_GetFirstEntry, A_GetNextEntry, A_Add, A_Lookup and A_Remove method       hTable         	               T_HHASHTABLE  §џ           Hash table handle variable         яP      џџџџ           FB_LINKEDLISTCTRL           p                   T_LinkedListEntry      ` §џ           Temp. previous node    n                   T_LinkedListEntry      ` §џ           Temp. next node       putValue           §џ           Linked list node value 	   putPosPtr                   T_LinkedListEntry        §џ           Linked list node pointer       bOk            §џ           TRUE = success, FALSE = error    getValue           §џ           Linked list node value 	   getPosPtr                   T_LinkedListEntry        §џ           Linked list node pointer       hList         	               T_HLINKEDLIST  §џ           Linked list table handle         яP      џџџџ           FB_LOCALSYSTEMTIME     	      rtrig                 R_TRIG ` §џ              state         ` §џ              fbNT                   
   NT_GetTime ` §џ              fbTZ                          FB_GetTimeZoneInformation ` §џ              fbSET                           NT_SetTimeToRTCTime ` §џ              fbRTC                             RTC_EX2 ` §џ              timer                    TON ` §џ              nSync         ` §џ              bNotSup          ` §џ                 sNetID           ''    
   T_AmsNetID   §џ       +    The target TwinCAT system network address    bEnable            §џ       `    Enable/start cyclic time synchronisation (output is synchronized to Local Windows System Time)    dwCycle           Q            §џ       &    Time synchronisation cycle (seconds)    dwOpt          §џ       R    Additional option flags: If bit 0 is set => Synchronize Windows Time to RTC time    tTimeout         §џ       J    Max. ADS function block execution time (internal communication timeout).       bValid            §џ       \    TRUE => The systemTime and tzID output is valid, FALSE => systemTime and tzID is not valid 
   systemTime                   
   TIMESTRUCT   §џ       "    Local Windows System Time struct    tzID           eTimeZoneID_Invalid       E_TimeZoneID   §џ       )    Daylight/standard time zone information             яP     џџџџ           FB_MEMBUFFERMERGE           pDest         ` §џ              cbDest         ` §џ                 eCmd           eEnumCmd_First       E_EnumCmdType   §џ              pBuffer           §џ           Pointer to destination buffer    cbBuffer           §џ       &    Max. byte size of destination buffer    pSegment           §џ       .    Pointer to data segment (optional, may be 0) 	   cbSegment           §џ       -    Number of data segments (optional, may be 0)      bOk            §џ       M    TRUE => Successfull, FALSE => End of enumeration or invalid input parameter    cbSize           §џ           Data buffer fill state             яP      џџџџ           FB_MEMBUFFERSPLIT           pSrc         ` §џ              cbSrc         ` §џ                 eCmd           eEnumCmd_First       E_EnumCmdType   §џ              pBuffer           §џ           Pointer to source data buffer    cbBuffer           §џ       !    Byte size of source data buffer    cbSize           §џ           Max. segment byte size       bOk            §џ
       N    TRUE => Successfull, FALSE => End of segmentation or invalid input parameter    pSegment           §џ           Pointer to data segment 	   cbSegment           §џ           Byte size of data segment    bEOS            §џ       7    TRUE = End/last segment, FALSE = Next segment follows             яP      џџџџ           FB_MEMRINGBUFFER           idxLast         ` §џ            byte index of last buffer byte    idxFirst         ` §џ       "    byte buffer of first buffer byte    idxGet         ` §џ              pTmp         ` §џ              cbTmp         ` §џ              cbCopied         ` §џ                 pWrite           §џ           pointer to write data    cbWrite           §џ           byte size of write data    pRead           §џ	           pointer to read data buffer    cbRead           §џ
           byte size of read data buffer    pBuffer           §џ       #    pointer to ring buffer data bytes    cbBuffer           §џ           max. ring buffer byte size       bOk            §џ       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    nCount           §џ           number of fifo entries    cbSize           §џ       "    current byte length of fifo data    cbReturn           §џ       О    If bOk == TRUE => Number of recend realy returned (removed or get) data bytes
									   If bOk == FALSE and cbReturn <> 0 => Number of required read buffer data bytes (cbRead underflow)             яP      џџџџ           FB_MEMRINGBUFFEREX           idxLast         ` §џ       *    byte index of last (newest) buffer entry    idxFirst         ` §џ       +    byte index of first (oldest) buffer entry    idxGet         ` §џ           temporary index    idxEnd         ` §џ       "    index of unused/free end segment    cbEnd         ` §џ       &    byte size of unused/free end segment    cbAdd         ` §џ!                 pWrite           §џ           pointer to write data    cbWrite           §џ           byte size of write data    pBuffer           §џ       #    pointer to ring buffer data bytes    cbBuffer           §џ           max. ring buffer byte size       bOk            §џ       W    TRUE = new entry added or get, freed succesfully, FALSE = fifo overflow or fifo empty    pRead           §џ       (    A_GetHead returns pointer to read data    cbRead           §џ       *    A_GetHead returns byte size of read data    nCount           §џ           number of fifo entries    cbSize           §џ       "    current byte length of fifo data    cbFree           §џ            biggest available free segment             яP      џџџџ           FB_MEMSTACKBUFFER               pWrite           §џ           pointer to write data    cbWrite           §џ           byte size of write data    pRead           §џ	           pointer to read data buffer    cbRead           §џ
           byte size of read data buffer    pBuffer           §џ       #    pointer to LIFO buffer data bytes    cbBuffer           §џ           max. LIFO buffer byte size       bOk            §џ       T    TRUE = new entry added or removed succesfully, FALSE = LIFO overflow or LIFO empty    nCount           §џ           number of LIFO entries    cbSize           §џ       "    current byte length of LIFO data    cbReturn           §џ       О    If bOk == TRUE => Number of recend realy returned (removed or get) data bytes
									   If bOk == FALSE and cbReturn <> 0 => Number of required read buffer data bytes (cbRead underflow)             яP      џџџџ           FB_REGQUERYVALUE           fbAdsRdWrtEx       [    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_REG_HKEYLOCALMACHINE, IDXOFFS := 0 )              	   T_AmsPort         Ш                  
   ADSRDWRTEX ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              s1Len         ` §џ              s2Len         ` §џ              ptr         ` §џ              cbBuff         ` §џ              tmpBuff                ST_HKeySrvRead ` §џ                 sNetId            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    sSubKey               T_MaxString   §џ       #    HKEY_LOCAL_MACHINE \ sub key name    sValName               T_MaxString   §џ           Value name    cbData           §џ           Number of data bytes to read    pData           §џ       $    Points to registry key data buffer    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeOut         §џ	           Max fb execution time       bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ       '    Number of succesfully read data bytes             яP     џџџџ           FB_REGSETVALUE        
   fbAdsWrite       [    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_REG_HKEYLOCALMACHINE, IDXOFFS := 0 )              	   T_AmsPort         Ш                  ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              s1Len         ` §џ              s2Len         ` §џ              s3Len         ` §џ              ptr         ` §џ              nType         ` §џ              cbBuff         ` §џ              cbRealWrite         ` §џ              tmpBuff                  ST_HKeySrvWrite ` §џ                 sNetId            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    sSubKey               T_MaxString   §џ       #    HKEY_LOCAL_MACHINE \ sub key name    sValName               T_MaxString   §џ           Value name    eValType               E_RegValueType   §џ           Value type    cbData           §џ           Size of value data in bytes    pData           §џ           Pointer to value data buffer   bExecute            §џ	       6    Rising edge on this input activates the fb execution    tTimeOut         §џ
           Max fb execution time       bBusy            §џ              bError            §џ              nErrId           §џ              cbWrite           §џ       +    Number of successfully written data bytes             яP     џџџџ           FB_REMOVEROUTEENTRY        
   fbAdsWrite       P    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_DELREMOTE, IDXOFFS := 0 )              	   T_AmsPort         "                 ADSWRITE ` §џ                 sNetID            
   T_AmsNetID   §џ       '    TwinCAT network address (ams net id )    sName                 §џ           Route name as string    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ                       яP     џџџџ           FB_RESETSCOPESERVERCONTROL        
   fbAdsWrite                          ADSWRITE    §џ              nState            §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       яP     џџџџ           FB_SAVESCOPESERVERDATA           nState            §џ           
   fbAdsWrite       D    ( PORT := AMSPORT_R3_SCOPESERVER, IDXGRP := 16#750E, IDXOFFS := 0 )              	   T_AmsPort         u                 ADSWRITE    §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ           	   sSaveFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ	              bDone            §џ
              bError            §џ              nErrorId           §џ                       яP     џџџџ           FB_SCOPESERVERCONTROL           eCurrentState           SCOPE_SERVER_IDLE       E_ScopeServerState    §џ           	   fbConnect                                   FB_ConnectScopeServer    §џ              fbStart        
                FB_StartScopeServer    §џ              fbStop        
                FB_StopScopeServer    §џ              fbSave        
                FB_SaveScopeServerData    §џ              fbDisconnect        	               FB_DisconnectScopeServer    §џ              fbReset        	               FB_ResetScopeServerControl    §џ                  sNetId            
   T_AmsNetId   §џ           	   eReqState               E_ScopeServerState   §џ              sConfigFile    Q       Q    §џ           	   sSaveFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ              bError            §џ              nErrorId           §џ                       яP     џџџџ           FB_SETTIMEZONEINFORMATION        
   fbAdsWrite       o    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS	:= TIMESERVICE_TIMEZONINFORMATION )              	   T_AmsPort                         ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              req                ST_AmsGetTimeZoneInformation ` §џ                 sNetID           ''    
   T_AmsNetID   §џ       &    TwinCAT network address (ams net id)    tzInfo       ]   ( (*West Euoropa Standard Time *)
					bias:=-60,
					standardName:='W. Europe Standard Time',
					standardDate:=(wYear:=0, wMonth:=10, wDayOfWeek:=0, wDay:=5, wHour:=3),
					standardBias:=0,
					daylightName:='W. Europe Daylight Time',
					daylightDate:=(wYear:=0, wMonth:=3, wDayOfWeek:=0, wDay:=5, wHour:=2),
					daylightBias:=-60 )    Фџџџ        W. Europe Standard Time                
   TIMESTRUCT             
                                W. Europe Daylight Time                
   TIMESTRUCT                                 Фџџџ   ST_TimeZoneInformation   §џ              bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ              bError            §џ              nErrID           §џ                       яP     џџџџ           FB_STARTSCOPESERVER           nState            §џ           
   fbAdsWrite                          ADSWRITE    §џ              nDummy   	                    0,0                     §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       яP     џџџџ           FB_STOPSCOPESERVER           nState            §џ           
   fbAdsWrite                          ADSWRITE    §џ              nDummy   	                    0,0                     §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       яP     џџџџ           FB_STRINGRINGBUFFER           fbBuffer                              FB_MemRingBuffer ` §џ       4    Internal (low level) buffer control function block    
   bOverwrite            §џ       8    TRUE = overwrite oldest entry, FALSE = don't overwrite    putValue           ''       T_MaxString   §џ       %    String to add (write) to the buffer    pBuffer           §џ	       #    Pointer to ring buffer data bytes    cbBuffer           §џ
           Max. ring buffer byte size       bOk            §џ       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    getValue           ''       T_MaxString   §џ       #    String removed (read) from buffer    nCount           §џ           Number of fifo entries    cbSize           §џ       "    Current byte length of fifo data             яP      џџџџ        "   FB_SYSTEMTIMETOTZSPECIFICLOCALTIME           fbBase                                   "   FB_TranslateUtcToLocalTimeByZoneID ` §џ           Underlaid base function block       in                   
   TIMESTRUCT   §џ       p    Time to be converted (UTC, system time format). Structure that specifies the system time since January 1, 1601    tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out                   
   TIMESTRUCT   §џ       ,    Converted time in local system time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            яP      џџџџ           FB_TEXTFILERINGBUFFER           fbOpen                             FB_FileOpen ` §џ              fbClose                      FB_FileClose ` §џ              fbPuts        	               FB_FilePuts ` §џ              nStep         ` §џ       @    0=idle, 1=init, 10,11=open, 40,41=write, 50,51=close, 100=exit    eCmd           eFileRBuffer_None       E_FileRBufferCmd ` §џ                 sNetId           ''    
   T_AmsNetId ` §џ           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString ` §џ       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath ` §џ           default: Open generic file    bAppend         ` §џ       #    TRUE = append, FALSE = not append    putLine           ''       T_MaxString ` §џ	              cbBuffer        ` §џ
       5    max. file buffer byte size(RESERVED for future use)    tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ              bOpened          ` §џ       )    TRUE = file opened, FALSE = file closed    getLine           ''       T_MaxString ` §џ                       яP     џџџџ        "   FB_TRANSLATELOCALTIMETOUTCBYZONEID           inLocal                   
   TIMESTRUCT ` §џ       9    Input time in local system time format (time structure) 	   tziSommer                   
   TIMESTRUCT ` §џ       A    tzInfo.daylightDate transition time in local system time format 	   tziWinter                   
   TIMESTRUCT ` §џ       A    tzInfo.standardDate transition time in local system time Format    tziLocalSommer             
   T_FILETIME ` §џ       ?    tzInfo.daylightDate transition time in local file time format    tziLocalWinter             
   T_FILETIME ` §џ       ?    tzInfo.standardDate transition time in local file time Format    tziLocalSommerJump             
   T_FILETIME ` §џ              tziLocalWinterJump             
   T_FILETIME ` §џ              ui64LocalIn                T_ULARGE_INTEGER ` §џ       (    Local input time as unsigned 64 number    ui64LocalSommer                T_ULARGE_INTEGER ` §џ       5    Local tzInfo.daylightDate as unsigned 64 bit number    ui64LocalWinter                T_ULARGE_INTEGER ` §џ       5    Local tzInfo.standardDate as unsigned 64 bit number    in_to_s         ` §џ       <    Input time[Local] to tzInfo.daylightDate[Local] cmp result    in_to_w         ` §џ       <    Input time[Local] to tzInfo.standardDate[Local] cmp result    s_to_w         ` §џ       E    tzInfo.daylightDate[Local] to tzInfo.standardDate[Local] cmp result    in_to_s_jump         ` §џ        2    Input time[Local] to tzInfo jump time cmp result    in_to_w_jump         ` §џ!       2    Input time[Local] to tzInfo jump time cmp result    iStandardBias         ` §џ#              iDaylightBias         ` §џ$              ui64PreviousIn                T_ULARGE_INTEGER ` §џ&              ui64FallDiff                T_ULARGE_INTEGER ` §џ'           	   bFallDiff          ` §џ(           Nur zu Testzwecken    dtSommerJump         ` §џ*              dtWinterJump         ` §џ+                 in             
   T_FILETIME   §џ       /    Time to be converted (Local file time format)    tzInfo                     ST_TimeZoneInformation   §џ           Time zone information    wDldYear           §џ       p    Optional daylightDate.wYear value. If 0 => not used (default) else used only if tzInfo.daylightDate.wYear = 0.    wStdYear           §џ       p    Optional standardDate.wYear value. If 0 => not used (default) else used only if tzInfo.standardDate.wYear = 0.       out             
   T_FILETIME   §џ
       '    Converted time (UTC file time format)    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ       +    Detected daylight saving time information    bB            §џ            FALSE => A time, TRUE => B time   bias           §џ           Bias value in minutes             яP      џџџџ        "   FB_TRANSLATEUTCTOLOCALTIMEBYZONEID           inUtc                   
   TIMESTRUCT ` §џ       7    Input time in UTC system time format (time structure)    bInAsStruct          ` §џ       k    TRUE => inUtc is valid/converted to UTC system time format, FALSE => inUtc is not valid/not converted yet 	   tziSommer                   
   TIMESTRUCT ` §џ       A    tzInfo.daylightDate transition time in local system time format 	   tziWinter                   
   TIMESTRUCT ` §џ       A    tzInfo.standardDate transition time in local system time Format    tziLocalSommer             
   T_FILETIME ` §џ       ?    tzInfo.daylightDate transition time in local file time format    tziLocalWinter             
   T_FILETIME ` §џ       ?    tzInfo.standardDate transition time in local file time Format    tziUtcSommer             
   T_FILETIME ` §џ       =    tzInfo.daylightDate transition time in UTC file time format    tziUtcWinter             
   T_FILETIME ` §џ       =    tzinfo.standardDate transition time in UTC file time format 	   ui64UtcIn                T_ULARGE_INTEGER ` §џ       &    UTC input time as unsigned 64 number    ui64UtcSommer                T_ULARGE_INTEGER ` §џ       3    UTC tzInfo.daylightDate as unsigned 64 bit number    ui64UtcWinter                T_ULARGE_INTEGER ` §џ       3    UTC tzInfo.standardDate as unsigned 64 bit number    in_to_s         ` §џ       8    Input time[UTC] to tzInfo.daylightDate[UTC] cmp result    in_to_w         ` §џ       8    Input time[UTC] to tzInfo.standardDate[UTC] cmp result    s_to_w         ` §џ        A    tzInfo.daylightDate[UTC] to tzInfo.standardDate[UTC] cmp result    out_to_s         ` §џ!       =    Output time[local] to tzInfo.daylightDate[local] cmp result    out_to_w         ` §џ"       =    Output time[local] to tzInfo.standardDate[local] cmp result       in             
   T_FILETIME   §џ       .    Time to be converted (UTC, file time format)    tzInfo                     ST_TimeZoneInformation   §џ           Time zone information    wDldYear           §џ       p    Optional daylightDate.wYear value. If 0 => not used (default) else used only if tzInfo.daylightDate.wYear = 0.    wStdYear           §џ       p    Optional standardDate.wYear value. If 0 => not used (default) else used only if tzInfo.standardDate.wYear = 0.       out             
   T_FILETIME   §џ
       (    Converted time (local file time format)   eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ       0    Detected daylight saving time/zone information    bB            §џ            FALSE => A time, TRUE => B time   bias           §џ           Bias value in minutes             яP      џџџџ            FB_TZSPECIFICLOCALTIMETOFILETIME           fbBase       !    ( wStdYear := 0, wDldYear := 0 )                                         "   FB_TranslateLocalTimeToUtcByZoneID ` §џ           Underlaid base function block       in             
   T_FILETIME   §џ       }    Time zone's specific local file time. 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601   tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out             
   T_FILETIME   §џ       E    Converted time in Coordinated Universal Time (UTC) file time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            яP      џџџџ        "   FB_TZSPECIFICLOCALTIMETOSYSTEMTIME           fbBase                                         "   FB_TranslateLocalTimeToUtcByZoneID ` §џ           Underlaid base function block       in                   
   TIMESTRUCT   §џ       g    Time zone's specific local system time. Structure that specifies the system time since January 1, 1601   tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out                   
   TIMESTRUCT   §џ       8    Coordinated Universal Time (UTC) in system time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            яP      џџџџ           FB_WRITEPERSISTENTDATA           fbAdsWrtCtl       9    ( ADSSTATE := ADSSTATE_SAVECFG, LEN := 0, SRCADDR := 0 )                          	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ       l    Contains the ADS port number of the PLC run-time system whose persistent data is to be stored (801, 811...)   START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time    MODE           SPDM_2PASS       E_PersistentMode   §џ       D    =SPDM_2PASS: optimized boost; =SPDM_VAR_BOOST: boost per variable;       BUSY            §џ              ERR            §џ              ERRID           §џ                       яP     џџџџ           FILETIME_TO_DT           ui64                T_ULARGE_INTEGER ` §џ	                 fileTime             
   T_FILETIME   §џ           Windows file time.       FILETIME_TO_DT                                     яP      џџџџ           FILETIME_TO_SYSTEMTIME     	      D         ` §џ              M         ` §џ              Y         ` §џ           
   uiPastDays                T_ULARGE_INTEGER ` §џ	              uiPastYears                T_ULARGE_INTEGER ` §џ
              uiRemainder                T_ULARGE_INTEGER ` §џ           
   dwPastDays         ` §џ              dwPastYears         ` §џ           
   dwYearDays         ` §џ                 fileTime             
   T_FILETIME   §џ                 FILETIME_TO_SYSTEMTIME                   
   TIMESTRUCT                             яP      џџџџ           FIX16_TO_LREAL               in                 T_FIX16   §џ                 FIX16_TO_LREAL                                                  яP      џџџџ           FIX16_TO_WORD               in                 T_FIX16   §џ           16 bit fixed point number       FIX16_TO_WORD                                     яP      џџџџ           FIX16ADD               augend                 T_FIX16   §џ              addend                 T_FIX16   §џ                 FIX16Add                 T_FIX16                             яP      џџџџ        
   FIX16ALIGN               in                 T_FIX16   §џ       #    16 bit signed fixed point number.    n                           §џ       ,    Number of fractional bits (decimal places)    
   FIX16Align                 T_FIX16                             яP      џџџџ           FIX16DIV           tmpA         ` §џ	                 dividend                 T_FIX16   §џ              divisor                 T_FIX16   §џ                 FIX16Div                 T_FIX16                             яP      џџџџ           FIX16MUL           tmp         ` §џ	                 multiA                 T_FIX16   §џ              multiB                 T_FIX16   §џ                 FIX16Mul                 T_FIX16                             яP      џџџџ           FIX16SUB               minuend                 T_FIX16   §џ           
   subtrahend                 T_FIX16   §џ                 FIX16Sub                 T_FIX16                             яP      џџџџ           GETREMOTEPCINFO        	   fbAdsRead       #    ( PORT:=1, IDXGRP:=3, IDXOFFS:=1 )              	   T_AmsPort                          ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ           
   RouterInfo   	  c            
                ST_AmsRouterInfoEntry         ` §џ              iIndex         ` §џ                 NETID            
   T_AmsNetId   §џ       D    Target NetID, usually left as empty string for reading local infos    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ       
    Ads busy    ERR            §џ	           Ads error    ERRID           §џ
           Ads Error    RemotePCInfo               REMOTEPCINFOSTRUCT   §џ       N    field with all NetIDДs and PC names found in router, ordered as router gives             яP     џџџџ           HEXSTR_TO_DATA           pSrc               ` §џ
              pDest               ` §џ              ascii         ` §џ              nibble         ` §џ              bAdd          ` §џ              bLN          ` §џ           hi/lo nibble       sHex               T_MaxString   §џ           Hex string to convert    pData           §џ           Pointer to destination buffer    cbData           §џ       !    Byte size of destination buffer       HEXSTR_TO_DATA                                     яP      џџџџ           HOST_TO_BE128               in                T_UHUGE_INTEGER   §џ                 HOST_TO_BE128                T_UHUGE_INTEGER                             яP      џџџџ           HOST_TO_BE16               in           §џ                 HOST_TO_BE16                                     яP      џџџџ           HOST_TO_BE32           parr    	                            ` §џ                 in           §џ                 HOST_TO_BE32                                     яP      џџџџ           HOST_TO_BE64               in                T_ULARGE_INTEGER   §џ                 HOST_TO_BE64                T_ULARGE_INTEGER                             яP      џџџџ           INT64_TO_LREAL               in                T_LARGE_INTEGER   §џ                 INT64_TO_LREAL                                                  яP      џџџџ        
   INT64ADD64           bOV          ` §џ	                 i64a                T_LARGE_INTEGER   §џ              i64b                T_LARGE_INTEGER   §џ              
   Int64Add64                T_LARGE_INTEGER                             яP      џџџџ           INT64ADD64EX               augend                T_LARGE_INTEGER   §џ              addend                T_LARGE_INTEGER   §џ                 Int64Add64Ex                T_LARGE_INTEGER                       bOV            §џ       3    TRUE => arithmetic overflow, FALSE => no overflow         яP      џџџџ        
   INT64CMP64               i64a                T_LARGE_INTEGER   §џ              i64b                T_LARGE_INTEGER   §џ	              
   Int64Cmp64                                     яP      џџџџ           INT64DIV64EX           bIsNegative          ` §џ           
   sRemainder                T_ULARGE_INTEGER ` §џ                 dividend                T_LARGE_INTEGER   §џ              divisor                T_LARGE_INTEGER   §џ                 Int64Div64Ex                T_LARGE_INTEGER                    	   remainder                 T_LARGE_INTEGER  §џ                   яP      џџџџ           INT64ISZERO               i64                T_LARGE_INTEGER   §џ                 Int64IsZero                                      яP      џџџџ           INT64NEGATE               i64                T_LARGE_INTEGER   §џ                 Int64Negate                T_LARGE_INTEGER                             яP      џџџџ           INT64NOT               i64                T_LARGE_INTEGER   §џ                 Int64Not                T_LARGE_INTEGER                             яP      џџџџ        
   INT64SUB64               i64a                T_LARGE_INTEGER   §џ       	    minuend    i64b                T_LARGE_INTEGER   §џ           substrahend    
   Int64Sub64                T_LARGE_INTEGER                             яP      џџџџ           ISFINITE        	   ptrDouble    	                            ` §џ           	   ptrSingle               ` §џ	                 x                 T_ARG   §џ                 IsFinite                                      яP      џџџџ           LARGE_INTEGER            
   dwHighPart           §џ           	   dwLowPart           §џ                 LARGE_INTEGER                T_LARGE_INTEGER                             яP      џџџџ           LARGE_TO_ULARGE               in                T_LARGE_INTEGER   §џ                 LARGE_TO_ULARGE                T_ULARGE_INTEGER                             яP      џџџџ           LREAL_TO_FIX16               in                        §џ           LREAL number to convert    n                          §џ       ,    Number of fractional bits (decimal places)       LREAL_TO_FIX16                 T_FIX16                             яP      џџџџ           LREAL_TO_FMTSTR           rec              
   T_FloatRec ` §џ              pOut               ` §џ              iStart         ` §џ              iEnd         ` §џ              i         ` §џ                 in                        §џ
           
   iPrecision           §џ              bRound            §џ                 LREAL_TO_FMTSTR    џ      џ                             яP      џџџџ           LREAL_TO_INT64               in                        §џ                 LREAL_TO_INT64                T_LARGE_INTEGER                             яP      џџџџ           LREAL_TO_UINT64           tmp                      ` §џ                 in                        §џ                 LREAL_TO_UINT64                T_ULARGE_INTEGER                             яP      џџџџ           MAXSTRING_TO_BYTEARR           cbCopy         ` §џ           	   Index7001                            in               T_MaxString   §џ                 MAXSTRING_TO_BYTEARR   	  џ                                                 яP     џџџџ           NT_ABORTSHUTDOWN           fbAdsWrtCtl       N    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_POWERGOOD, DEVSTATE := 0 )              	   T_AmsPort         
               	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ	              ERRID           §џ
                       яP     џџџџ        
   NT_GETTIME        	   fbAdsRead       i    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS := TIMESERVICE_DATEANDTIME )              	   T_AmsPort                         ADSREAD ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ	              ERRID           §џ
              TIMESTR                   
   TIMESTRUCT   §џ           Local windows system time             яP     џџџџ        	   NT_REBOOT           fbAdsWrtCtl       M    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_SHUTDOWN, DEVSTATE := 1 )              	   T_AmsPort                       	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    DELAY           §џ           Reboot delay time [seconds]    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       яP     џџџџ           NT_SETLOCALTIME        
   fbAdsWrite       d    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP:= SYSTEMSERVICE_TIMESERVICES, IDXOFFS:=TIMESERVICE_DATEANDTIME)              	   T_AmsPort                         ADSWRITE ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    TIMESTR                   
   TIMESTRUCT   §џ           New local system time    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       яP     џџџџ           NT_SETTIMETORTCTIME        
   fbAdsWrite       :    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := 4, IDXOFFS := 0 )              	   T_AmsPort                           ADSWRITE ` §џ           
   fbRegQuery       K    ( sSubKey := 'Software\Beckhoff\TwinCAT\System', sValName := 'NumOfCPUs' )                        T_MaxString                    T_MaxString                   FB_RegQueryValue ` §џ           	   fbTrigger                 R_TRIG ` §џ              bTmp         ` §џ              state         ` §џ              bInit         ` §џ           	   numOfCPUs         ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    SET            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ	              ERRID           §џ
                       яP     џџџџ           NT_SHUTDOWN           fbAdsWrtCtl       M    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_SHUTDOWN, DEVSTATE := 0 )              	   T_AmsPort                        	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    DELAY           §џ           Shutdown delay time [seconds]    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       яP     џџџџ           NT_STARTPROCESS        
   fbAdsWrite       O    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP:=SYSTEMSERVICE_STARTPROCESS, IDXOFFS:=0 )              	   T_AmsPort         є                 ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              LenPath         ` §џ              LenDir         ` §џ           
   LenComLine         ` §џ              req                  ST_AmsStartProcessReq ` §џ           data buffer       NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PATHSTR               T_MaxString   §џ              DIRNAME               T_MaxString   §џ           	   COMNDLINE               T_MaxString   §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ              ERRID           §џ                       яP     џџџџ           OTSTRUCT_TO_TIME           tmpMilli         ` §џ                 OTIN                    OTSTRUCT   §џ                 OTSTRUCT_TO_TIME                                     яP      џџџџ           PBOOL_TO_BOOL               in                  §џ                 PBOOL_TO_BOOL                                      яP      џџџџ           PBYTE_TO_BYTE               in                 §џ                 PBYTE_TO_BYTE                                     яP      џџџџ           PDATE_TO_DATE               in                 §џ                 PDATE_TO_DATE                                     яP      џџџџ           PDINT_TO_DINT               in                 §џ                 PDINT_TO_DINT                                     яP      џџџџ        	   PDT_TO_DT               in                 §џ              	   PDT_TO_DT                                     яP      џџџџ           PDWORD_TO_DWORD               in                 §џ                 PDWORD_TO_DWORD                                     яP      џџџџ           PHUGE_TO_HUGE               in                 T_HUGE_INTEGER        §џ                 PHUGE_TO_HUGE                T_HUGE_INTEGER                             яP      џџџџ           PINT_TO_INT               in                 §џ                 PINT_TO_INT                                     яP      џџџџ           PLARGE_TO_LARGE               in                 T_LARGE_INTEGER        §џ                 PLARGE_TO_LARGE                T_LARGE_INTEGER                             яP      џџџџ           PLC_READSYMINFO        	   fbAdsRead       3    ( IDXGRP := ADSIGRP_SYM_UPLOADINFO, IDXOFFS := 0 )       №                 ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              SymInfoStruct   	                       ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ              SYMCOUNT           §џ              SYMSIZE           §џ                       яP     џџџџ           PLC_READSYMINFOBYNAME           fbReadEx                                       PLC_ReadSymInfoByNameEx ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              SYMNAME               T_MaxString   §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ	           Max fb execution time       BUSY            §џ              ERR            §џ              ERRID           §џ              SYMINFO                     SYMINFOSTRUCT   §џ                       яP     џџџџ           PLC_READSYMINFOBYNAMEEX        
   fbAdsRdWrt       5    ( IDXGRP := ADSIGRP_SYM_INFOBYNAMEEX, IDXOFFS := 0 )       	№                   ADSRDWRT ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              symInfoBuffer                            ST_AmsSymbolInfoEntry ` §џ           
   nameLength         ` §џ           
   typeLength         ` §џ              commentLength         ` §џ              nameAdrOffset         ` §џ              typeAdrOffset         ` §џ              commentAdrOffset         ` §џ              nameCpyLength         ` §џ              typeCpyLength         ` §џ               commentCpyLength         ` §џ!              endOfBufAdrOffset         ` §џ"                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              SYMNAME               T_MaxString   §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ	           Max fb execution time       BUSY            §џ              ERR            §џ              ERRID           §џ              SYMINFO                     SYMINFOSTRUCT   §џ              OVTYPE            §џ       @    TRUE => Type name string length overflow, FALSE => no overflow 	   OVCOMMENT            §џ       >    TRUE => Comment string length overflow, FALSE => no overflow             яP     џџџџ        	   PLC_RESET           fbAdsWrtCtl       F    ( ADSSTATE := ADSSTATE_RESET, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              RESET            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       яP     џџџџ        	   PLC_START           fbAdsWrtCtl       D    ( ADSSTATE := ADSSTATE_RUN, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       яP     џџџџ           PLC_STOP           fbAdsWrtCtl       E    ( ADSSTATE := ADSSTATE_STOP, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              STOP            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       яP     џџџџ           PLREAL_TO_LREAL               in                              §џ                 PLREAL_TO_LREAL                                                  яP      џџџџ           PMAXSTRING_TO_MAXSTRING               in                 T_MaxString        §џ                 PMAXSTRING_TO_MAXSTRING               T_MaxString                             яP      џџџџ           PREAL_TO_REAL               in                  §џ                 PREAL_TO_REAL                                      яP      џџџџ           PROFILER     
      MAX_DATABUFF_SIZE    d   @  §џ              RisingEdgeStart                 R_TRIG ` §џ              RisingEdgeReset                 R_TRIG ` §џ              FallingEdgeStart                 F_TRIG ` §џ              GETCPUACCOUNT1                GETCPUACCOUNT ` §џ              OldCpuCntDW         ` §џ              MeasureData   	  d                     ` §џ              TimeSum         ` §џ              MaxData        ` §џ              idx         ` §џ                 START            §џ       0   rising edge starts measurement and falling stops   RESET            §џ                 BUSY            §џ              DATA                   PROFILERSTRUCT   §џ                       яP     џџџџ           PSINT_TO_SINT               in                 §џ                 PSINT_TO_SINT                                     яP      џџџџ           PSTRING_TO_STRING               in     Q       Q         §џ                 PSTRING_TO_STRING    Q       Q                              яP      џџџџ           PTIME_TO_TIME               in                 §џ                 PTIME_TO_TIME                                     яP      џџџџ           PTOD_TO_TOD               in                 §џ                 PTOD_TO_TOD                                     яP      џџџџ           PUDINT_TO_UDINT               in                 §џ                 PUDINT_TO_UDINT                                     яP      џџџџ           PUHUGE_TO_UHUGE               in                 T_UHUGE_INTEGER        §џ                 PUHUGE_TO_UHUGE                T_UHUGE_INTEGER                             яP      џџџџ           PUINT64_TO_UINT64               in                 T_ULARGE_INTEGER        §џ                 PUINT64_TO_UINT64                T_ULARGE_INTEGER                             яP      џџџџ           PUINT_TO_UINT               in                 §џ                 PUINT_TO_UINT                                     яP      џџџџ           PULARGE_TO_ULARGE               in                 T_ULARGE_INTEGER        §џ                 PULARGE_TO_ULARGE                T_ULARGE_INTEGER                             яP      џџџџ           PUSINT_TO_USINT               in                 §џ                 PUSINT_TO_USINT                                     яP      џџџџ           PWORD_TO_WORD               in                 §џ                 PWORD_TO_WORD                                     яP      џџџџ        
   RAD_TO_DEG               ANGLE                        §џ              
   RAD_TO_DEG                                                  яP      џџџџ           ROUTETRANSPORT_TO_STRING               eType               E_RouteTransportType   §џ                 ROUTETRANSPORT_TO_STRING    Q       Q                              яP      џџџџ           RTC           fbGetCpuCounter                 GETCPUCOUNTER ` §џ           
   risingEdge                 R_TRIG ` §џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              init         ` §џ                 EN            §џ              PDT           §џ                 Q            §џ              CDT           §џ	                       яP      џџџџ           RTC_EX           fbGetCpuCounter                 GETCPUCOUNTER ` §џ           
   risingEdge                 R_TRIG ` §џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              init         ` §џ                 EN            §џ              PDT           §џ              PMSEK           §џ                 Q            §џ	              CDT           §џ
              CMSEK           §џ                       яP      џџџџ           RTC_EX2     	      fbGetCpuCounter                 GETCPUCOUNTER ` §џ           
   risingEdge                 R_TRIG ` §џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              dateTime         ` §џ              init         ` §џ                 EN            §џ              PDT                   
   TIMESTRUCT   §џ              PMICRO           §џ                 Q            §џ	              CDT       ;    ( wYear := 1970, wMonth := 1, wDay := 1, wDayOfWeek := 4 )    В                  
   TIMESTRUCT   §џ
              CMICRO           §џ                       яP      џџџџ           SCOPEASCIIEXPORT        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ           	   sFilePath               T_MaxString   §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       яP     џџџџ        	   SCOPEEXIT        
   fbAdsWrite                          ADSWRITE    §џ           
   RisingEdge                 R_TRIG    §џ              step            §џ              fbDelay                    TON    §џ                 bExecute            §џ       -    Rising edge starts function block execution    tTimeOut         §џ       >    Maximum time allowed for the execution of the function block       bBusy            §џ              bError            §џ              iErrorId           §џ	                       яP     џџџџ           SCOPEGETRECORDLEN        	   fbAdsRead                          ADSREAD    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ           
   fRecordLen                        §џ	                       яP      џџџџ           SCOPEGETSTATE        	   fbAdsRead                          ADSREAD    §џ              State            §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ              bOnline            §џ	                       яP      џџџџ           SCOPELOADFILE        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ           	   sFilePath               T_MaxString   §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       яP     џџџџ           SCOPEMANUALTRIGGER        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       яP      џџџџ           SCOPESAVEAS        
   RisingEdge                 R_TRIG ` §џ           
   fbAdsWrite       D    ( NETID := '', PORT := 14000, IDXGRP := 16#2000, IDXOFFS := 16#11 )             
   T_AmsNetId                 	   T_AmsPort                           ADSWRITE ` §џ              step         ` §џ                 bExecute            §џ       -    Rising edge starts function block execution 	   sFilePath               T_MaxString   §џ           e.g. c:\Axis1.scp   tTimeout         §џ       >    Maximum time allowed for the execution of the function block       bBusy            §џ              bError            §џ	              iErrorId           §џ
                       яP     џџџџ           SCOPESETOFFLINE        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       яP      џџџџ           SCOPESETONLINE        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       яP      џџџџ           SCOPESETRECORDLEN        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ           
   fRecordLen                        §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ	                       яP      џџџџ           SCOPEVIEWEXPORT        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ           	   sFilePath               T_MaxString   §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       яP     џџџџ           STRING_TO_CSVFIELD           cbField         ` §џ                 in               T_MaxString   §џ       !    Input data in PLC string format    bQM            §џ	       l    TRUE => Enclose result string in quotation marks, FALSE => Don't enclose result string in quotation marks.       STRING_TO_CSVFIELD               T_MaxString                             яP      џџџџ           STRING_TO_SYSTEMTIME           b   	                    16#31, 16#36, 16#30, 16#31, 	(* year 1601 *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* month *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* day *)
								16#2D(*-*), 16#30, 16#30(*00*),	(* hour *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* minute *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* second *)
								16#2E(*.*), 16#30, 16#30, 16#30(*000*), (* milliseconds *)
								16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` §џ           null delimiter    ts       *    ( wYear := 1601, wMonth := 1, wDay := 1 )    A               
   TIMESTRUCT ` §џ              n         ` §џ              bFmt          ` §џ              dwYears         ` §џ              dwDays         ` §џ           	   Index7001                            in               §џ       1    Input string, format: '2007-03-05-17:35:09.223'       STRING_TO_SYSTEMTIME                   
   TIMESTRUCT                             яP      џџџџ           STRING_TO_UINT64           ptr               ` §џ              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER ` §џ	                 in               §џ                 STRING_TO_UINT64                T_ULARGE_INTEGER                             яP      џџџџ           SYSTEMTIME_TO_DT           b   	                 ќ    16#44, 16#54, 16#23(*DT#*),
										16#31, 16#39, 16#37, 16#30(*1970*),
										16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#00      D      T      #      1      9      7      0      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0           ` §џ              str             ` §џ
              nSeconds         ` §џ           	   Index7001                            TIMESTR                   
   TIMESTRUCT   §џ                 SYSTEMTIME_TO_DT                                     яP      џџџџ           SYSTEMTIME_TO_FILETIME           tmp1                T_ULARGE_INTEGER ` §џ	              tmp2                T_ULARGE_INTEGER ` §џ
              pastDays         ` §џ              i         ` §џ              
   systemTime                   
   TIMESTRUCT   §џ                 SYSTEMTIME_TO_FILETIME             
   T_FILETIME                             яP      џџџџ           SYSTEMTIME_TO_STRING           b   	                 Љ   16#31, 16#36, 16#30, 16#31(*1601*),		(* year *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* month *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* day *)
										16#2D(*-*), 16#30, 16#30(*00*),				(* hour *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* minute *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* second *)
										16#2E(*.*), 16#30, 16#30, 16#30(*000*),		(* milliseconds *)
										16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` §џ           	   Index7001                            in                   
   TIMESTRUCT   §џ                 SYSTEMTIME_TO_STRING                                         яP      џџџџ        	   TC_CONFIG           fbAdsWrtCtl       e    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_RECONFIG, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )              	   T_AmsPort                                	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    SET            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       яP     џџџџ           TC_CPUUSAGE        	   fbAdsRead       5    ( PORT:= AMSPORT_R0_RTIME, IDXGRP:= 1, IDXOFFS:= 6 )              	   T_AmsPort                          ADSREAD ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ              USAGE           §џ          in %            яP     џџџџ        
   TC_RESTART           fbAdsWrtCtl       b    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_RESET, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )              	   T_AmsPort                                	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    RESTART            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       яP     џџџџ           TC_STOP           fbAdsWrtCtl       a    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_STOP, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )              	   T_AmsPort                                	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    STOP            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       яP     џџџџ           TC_SYSLATENCY        	   fbAdsRead       8    ( PORT := AMSPORT_R0_RTIME, IDXGRP := 1, IDXOFFS := 2 )              	   T_AmsPort                          ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              tmpData   	                      ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ              ACTUAL           §џ           Actual latency in Еs    MAXIMUM           §џ           Maximum latency in Еs             яP     џџџџ           TIME_TO_OTSTRUCT           tmpMilli         ` §џ                 TIN           §џ                 TIME_TO_OTSTRUCT                    OTSTRUCT                             яP      џџџџ           UINT32X32TO64           Tmp1         ` §џ	              Tmp2         ` §џ
              Tmp3         ` §џ              Tmp4         ` §џ              DW1         ` §џ              DW2         ` §џ              DW3         ` §џ              DW4         ` §џ                 ui32a           §џ              ui32b           §џ                 UInt32x32To64                T_ULARGE_INTEGER                             яP      џџџџ           UINT64_TO_LREAL               in                T_ULARGE_INTEGER   §џ                 UINT64_TO_LREAL                                                  яP      џџџџ           UINT64_TO_STRING        	   remainder                T_ULARGE_INTEGER ` §џ              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER ` §џ	                 in                T_ULARGE_INTEGER   §џ                 UINT64_TO_STRING                                         яP      џџџџ           UINT64ADD64           bOV          ` §џ	                 ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ                 UInt64Add64                T_ULARGE_INTEGER                             яP      џџџџ           UINT64ADD64EX               augend                T_ULARGE_INTEGER   §џ              addend                T_ULARGE_INTEGER   §џ                 UInt64Add64Ex                T_ULARGE_INTEGER                       bOV            §џ       3    TRUE => arithmetic overflow, FALSE => no overflow         яP      џџџџ        	   UINT64AND               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64And                T_ULARGE_INTEGER                             яP      џџџџ           UINT64CMP64               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ	                 UInt64Cmp64                                     яP      џџџџ           UINT64DIV16EX        	   pDividend    	                            ` §џ              pResult    	                            ` §џ              rest         ` §џ                 dividend                T_ULARGE_INTEGER   §џ              divisor           §џ                 UInt64Div16Ex                T_ULARGE_INTEGER                    	   remainder                 T_ULARGE_INTEGER  §џ                   яP      џџџџ           UINT64DIV64        	   remainder                T_ULARGE_INTEGER ` §џ	                 dividend                T_ULARGE_INTEGER   §џ              divisor                T_ULARGE_INTEGER   §џ                 UInt64Div64                T_ULARGE_INTEGER                             яP      џџџџ           UINT64DIV64EX           msBit       /    ( dwHighPart := 16#80000000, 	dwLowPart := 0 )               T_ULARGE_INTEGER ` §џ              bitShift         ` §џ              cmp         ` §џ              in   	                      T_ULARGE_INTEGER         ` §џ              out   	                      T_ULARGE_INTEGER         ` §џ           
   cbReturned         ` §џ           	   Index7001                            dividend                T_ULARGE_INTEGER   §џ              divisor                T_ULARGE_INTEGER   §џ                 UInt64Div64Ex                T_ULARGE_INTEGER                    	   remainder                 T_ULARGE_INTEGER  §џ                   яP      џџџџ           UINT64ISZERO               ui64                T_ULARGE_INTEGER   §џ                 UInt64isZero                                      яP      џџџџ           UINT64LIMIT               ui64min                T_ULARGE_INTEGER   §џ              ui64in                T_ULARGE_INTEGER   §џ              ui64max                T_ULARGE_INTEGER   §џ                 UInt64Limit                T_ULARGE_INTEGER                             яP      џџџџ        	   UINT64MAX               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64Max                T_ULARGE_INTEGER                             яP      џџџџ        	   UINT64MIN               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64Min                T_ULARGE_INTEGER                             яP      џџџџ           UINT64MOD64               dividend                T_ULARGE_INTEGER   §џ              divisor                T_ULARGE_INTEGER   §џ                 UInt64Mod64                T_ULARGE_INTEGER                             яP      џџџџ           UINT64MUL64           bOV          ` §џ	                 multiplicand                T_ULARGE_INTEGER   §џ           
   multiplier                T_ULARGE_INTEGER   §џ                 UInt64Mul64                T_ULARGE_INTEGER                             яP      џџџџ           UINT64MUL64EX           bCarry          ` §џ           	   bSumCarry          ` §џ              n         ` §џ              m         ` §џ                 multiplicand                T_ULARGE_INTEGER   §џ           
   multiplier                T_ULARGE_INTEGER   §џ                 UInt64Mul64Ex                T_ULARGE_INTEGER                       bOV            §џ       3    TRUE => Arithmetic overflow, FALSE => no overflow         яP      џџџџ        	   UINT64NOT               ui64                T_ULARGE_INTEGER   §џ              	   UInt64Not                T_ULARGE_INTEGER                             яP      џџџџ           UINT64OR               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ                 UInt64Or                T_ULARGE_INTEGER                             яP      џџџџ        	   UINT64ROL           bMSB          ` §џ	                 ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Rol                T_ULARGE_INTEGER                             яP      џџџџ        	   UINT64ROR           bLSB          ` §џ	                 ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Ror                T_ULARGE_INTEGER                             яP      џџџџ        	   UINT64SHL               ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Shl                T_ULARGE_INTEGER                             яP      џџџџ        	   UINT64SHR               ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Shr                T_ULARGE_INTEGER                             яP      џџџџ           UINT64SUB64               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ                 UInt64Sub64                T_ULARGE_INTEGER                             яP      џџџџ        	   UINT64XOR               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64Xor                T_ULARGE_INTEGER                             яP      џџџџ           ULARGE_INTEGER            
   dwHighPart           §џ           	   dwLowPart           §џ                 ULARGE_INTEGER                T_ULARGE_INTEGER                             яP      џџџџ           ULARGE_TO_LARGE               in                T_ULARGE_INTEGER   §џ                 ULARGE_TO_LARGE                T_LARGE_INTEGER                             яP      џџџџ           WORD_TO_FIX16               in           §џ           16 bit fixed point number    n                           §џ           number of fractional bits       WORD_TO_FIX16                 T_FIX16                             яP      џџџџ           WRITEPERSISTENTDATA           fbAdsWrtCtl       H    ( ADSSTATE := ADSSTATE_SAVECFG, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ       l    Contains the ADS port number of the PLC run-time system whose persistent data is to be stored (801, 811...)   START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ
              ERR            §џ              ERRID           §џ                       яP     џџџџ    o   C:\TWINCAT\PLC\LIB\TcBase.lib @                                                                                          FW_ADSCLEAREVENTS           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ           
   READ_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              bClear            §џ              nMode           §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ                       №юJ     џџџџ           FW_ADSLOGDINT            	   nCtrlMask           §џ              sMsgFmt               §џ              nArg           §џ                 FW_AdsLogDINT                                     №юJ     џџџџ           FW_ADSLOGEVENT        
   STAMPREQ_I            §џ           
   STAMPRES_I            §џ           
   STAMPSIG_I            §џ           
   STAMPCON_I            §џ              ACCESSCNT_I            §џ           	   AMSADDR_I   	                         §џ              EVENT_I                      
   FW_TcEvent    §џ              pTCEVENTSTREAM_I            §џ              CBEVENTSTREAM_I            §џ              nSTATE_I            §џ              nSTATEREQ_I            §џ              nSTATERES_I            §џ              nSTATESIG_I            §џ               nSTATECON_I            §џ!              ERR_I             §џ"              ERRID_I            §џ#              bEVENT_SAV_I             §џ$              bEVENTQUIT_SAV_I             §џ%              TICKSTART_I            §џ&           	      sNetId               §џ              nPort           §џ              bEvent            §џ           
   bEventQuit            §џ              stEventConfigData                      
   FW_TcEvent   §џ              pEventDataAddress           §џ       	    pointer    cbEventDataLength           §џ	           
   bFbCleanup            §џ
              tTimeout           §џ                 nEventState           §џ              bError            §џ              nErrId           §џ              bQuit            §џ                       №юJ     џџџџ           FW_ADSLOGLREAL            	   nCtrlMask           §џ              sMsgFmt               §џ              fArg                        §џ                 FW_AdsLogLREAL                                     №юJ     џџџџ           FW_ADSLOGSTR            	   nCtrlMask           §џ              sMsgFmt               §џ              sArg               §џ                 FW_AdsLogSTR                                     №юJ     џџџџ           FW_ADSRDWRT           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRTRD_SAV_I             §џ              PDESTADDR_I            §џ              TICKSTART_I            §џ           
      sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           
   cbWriteLen           §џ           	   cbReadLen           §џ           
   pWriteBuff           §џ	           	   pReadBuff           §џ
              bExecute            §џ              tTimeout           §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read             №юJ     џџџџ           FW_ADSRDWRTIND           CLEAR_I             §џ                 bClear            §џ           	      bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           	   cbReadLen           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ                       №юJ     џџџџ           FW_ADSRDWRTRES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bRespond            §џ	                           №юJ     џџџџ        
   FW_ADSREAD           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ           
   READ_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read             №юJ     џџџџ           FW_ADSREADDEVICEINFO           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              RDINFO_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              bExecute            §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              sDevName               §џ              nDevVersion           §џ                       №юJ     џџџџ           FW_ADSREADIND           CLEAR_I             §џ                 bClear            §џ                 bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           	   cbReadLen           §џ                       №юJ     џџџџ           FW_ADSREADRES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bRespond            §џ	                           №юJ     џџџџ           FW_ADSREADSTATE           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              RDSTATE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              bExecute            §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ           	   nAdsState           §џ           	   nDevState           §џ                       №юJ     џџџџ           FW_ADSWRITE           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRITE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       №юJ     џџџџ           FW_ADSWRITECONTROL           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRITE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ           	   nAdsState           §џ           	   nDevState           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       №юJ     џџџџ           FW_ADSWRITEIND           CLEAR_I             §џ                 bClear            §џ                 bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ                       №юJ     џџџџ           FW_ADSWRITERES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ              bRespond            §џ                           №юJ     џџџџ           FW_DRAND           FirstCall_i             §џ	           
   HoldRand_i            §џ
              R250_Buffer_i   	  љ                        §џ           
   R250_Index            §џ                 nSeed           §џ                 fRndNum                        §џ                       №юJ     џџџџ           FW_GETCPUACCOUNT                   dwCpuAccount           §џ                       №юJ     џџџџ           FW_GETCPUCOUNTER                
   dwCpuCntLo           §џ           
   dwCpuCntHi           §џ                       №юJ     џџџџ           FW_GETCURTASKINDEX                   nIndex           §џ                       №юJ     џџџџ           FW_GETSYSTEMTIME                   dwTimeLo           §џ              dwTimeHi           §џ                       №юJ     џџџџ           FW_GETVERSIONTCBASE               nVersionElement           §џ                 FW_GetVersionTcBase                                     №юJ     џџџџ           FW_LPTSIGNAL            	   nPortAddr           §џ              nPinNo           §џ              bOnOff            §џ	                 FW_LptSignal                                      №юJ     џџџџ        	   FW_MEMCMP               pBuf1           §џ           First buffer    pBuf2           §џ           Second buffer    cbLen           §џ           Number of characters    	   FW_MemCmp                                     №юJ     џџџџ        	   FW_MEMCPY               pDest           §џ           New buffer    pSrc           §џ           Buffer to copy from    cbLen           §џ           Number of characters to copy    	   FW_MemCpy                                     №юJ     џџџџ        
   FW_MEMMOVE               pDest           §џ           New buffer    pSrc           §џ           Buffer to copy from    cbLen           §џ           Number of characters to copy    
   FW_MemMove                                     №юJ     џџџџ        	   FW_MEMSET               pDest           §џ           Pointer to destination 	   nFillByte           §џ           Character to set    cbLen           §џ           Number of characters    	   FW_MemSet                                     №юJ     џџџџ           FW_PORTREAD            	   nPortAddr           §џ           	   eNoOfByte               FW_NoOfByte   §џ                 FW_PortRead                                     №юJ     џџџџ           FW_PORTWRITE            	   nPortAddr           §џ           	   eNoOfByte               FW_NoOfByte   §џ              nValue           §џ                 FW_PortWrite                                      №юJ     џџџџ    q   C:\TWINCAT\PLC\LIB\TcSystem.lib @                                                                                Q          ADSCLEAREVENTS           fbAdsClearEvents                            FW_AdsClearEvents ` §џ                 NetID            
   T_AmsNetId   §џ              bClear            §џ              iMode           §џ              tTimeout         §џ                 bBusy            §џ	              bErr            §џ
              iErrId           §џ                       8'иR     џџџџ        
   ADSLOGDINT               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString   §џ              dintArg           §џ              
   ADSLOGDINT                                     8'иR      џџџџ           ADSLOGEVENT           fbAdsLogEvent                                               FW_AdsLogEvent ` §џ           	      NETID            
   T_AmsNetId   §џ              PORT           §џ              Event            §џ           	   EventQuit            §џ              EventConfigData               TcEvent   §џ              EventDataAddress           §џ       	    pointer    EventDataLength           §џ	           	   FbCleanup            §џ
              TMOUT         §џ              
   EventState           §џ              Err            §џ              ErrId           §џ              Quit            §џ                       8'иR     џџџџ           ADSLOGLREAL               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString   §џ              lrealArg                        §џ                 ADSLOGLREAL                                     8'иR      џџџџ        	   ADSLOGSTR               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString   §џ              strArg               T_MaxString   §џ              	   ADSLOGSTR                                     8'иR      џџџџ           ADSRDDEVINFO           fbAdsReadDeviceInfo                              FW_AdsReadDeviceInfo    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              RDINFO            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              DEVNAME               §џ              DEVVER           §џ                       8'иR     џџџџ        
   ADSRDSTATE           fbAdsReadState                              FW_AdsReadState    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              RDSTATE            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              ADSSTATE           §џ              DEVSTATE           §џ                       8'иR     џџџџ           ADSRDWRT        
   fbAdsRdWrt                                    FW_AdsRdWrt    §џ           
      NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ	              DESTADDR           §џ
              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       8'иR     џџџџ        
   ADSRDWRTEX        
   fbAdsRdWrt                                    FW_AdsRdWrt    §џ           
      NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ	              DESTADDR           §џ
              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             8'иR     џџџџ           ADSRDWRTIND           fbAdsRdWrtInd                         FW_AdsRdWrtInd    §џ                 CLEAR            §џ           	      VALID            §џ              NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              RDLENGTH           §џ           	   WRTLENGTH           §џ              DATAADDR           §џ                       8'иR      џџџџ           ADSRDWRTRES           fbAdsRdWrtRes                      FW_AdsRdWrtRes    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ              RESULT           §џ              LEN           §џ              DATAADDR           §џ              RESPOND            §џ	                           8'иR      џџџџ           ADSREAD        	   fbAdsRead                              
   FW_AdsRead    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       8'иR     џџџџ        	   ADSREADEX        	   fbAdsRead                              
   FW_AdsRead    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             8'иR     џџџџ        
   ADSREADIND           fbAdsReadInd        	               FW_AdsReadInd    §џ                 CLEAR            §џ                 VALID            §џ              NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              LENGTH           §џ                       8'иR      џџџџ        
   ADSREADRES           fbAdsReadRes                      FW_AdsReadRes    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ              RESULT           §џ              LEN           §џ              DATAADDR           §џ              RESPOND            §џ	                           8'иR      џџџџ           ADSWRITE        
   fbAdsWrite                                FW_AdsWrite    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       8'иR     џџџџ           ADSWRITEIND           fbAdsWriteInd        
                FW_AdsWriteInd    §џ                 CLEAR            §џ                 VALID            §џ              NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              LENGTH           §џ              DATAADDR           §џ                       8'иR      џџџџ           ADSWRITERES           fbAdsWriteRes                    FW_AdsWriteRes    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ              RESULT           §џ              RESPOND            §џ                           8'иR      џџџџ        	   ADSWRTCTL           fbAdsWriteControl                                FW_AdsWriteControl    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              ADSSTATE           §џ              DEVSTATE           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       8'иR     џџџџ           ANALYZEEXPRESSION               InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ           	   OutString               §џ                       8'иR      џџџџ           ANALYZEEXPRESSIONCOMBINED           Index            §џ                 InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ              OutTable   	                        ExpressionResult           §џ           	   OutString               §џ	                       8'иR      џџџџ           ANALYZEEXPRESSIONTABLE           Index            §џ                 InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ              OutTable   	                        ExpressionResult           §џ                       8'иR      џџџџ           APPENDERRORSTRING               strOld               §џ              strNew               §џ                 AppendErrorString                                         8'иR      џџџџ           BAVERSION_TO_DWORD               nVersion         ` §џ           	   nRevision         ` §џ	              nBuild         ` §џ
                 BAVERSION_TO_DWORD                                     8'иR      џџџџ        
   CLEARBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ              
   CLEARBIT32                                     8'иR      џџџџ        	   CSETBIT32           dwConst        ` §џ	                 inVal32           §џ              bitNo           §џ              bitVal            §џ       &    value to which the bit should be set    	   CSETBIT32                                     8'иR      џџџџ           DRAND           fbDRand                    FW_DRand ` §џ
                 Seed           §џ                 Num                        §џ                       8'иR      џџџџ           F_COMPAREFWVERSION           soll         ` §џ              ist         ` §џ                 major         ` §џ           requiered major version    minor         ` §џ	           requiered minor version    revision         ` §џ
       )    requiered revision/service pack version    patch         ` §џ       0    required patch version (reserved, default = 0 )      F_CompareFwVersion                                      8'иR      џџџџ           F_CREATEAMSNETID           idx         ` §џ                 nIds               T_AmsNetIdArr   §џ           Ams Net ID as array of bytes.       F_CreateAmsNetId            
   T_AmsNetId                             8'иR      џџџџ           F_CREATEIPV4ADDR           idx         ` §џ                 nIds               T_IPv4AddrArr   §џ       <    Internet Protocol dotted address (ipv4) as array of bytes.       F_CreateIPv4Addr            
   T_IPv4Addr                             8'иR      џџџџ           F_GETSTRUCTMEMBERALIGNMENT           tmp                ST_StructMemberAlignmentProbe ` §џ                     F_GetStructMemberAlignment                                     8'иR      џџџџ           F_GETVERSIONTCSYSTEM               nVersionElement           §џ                 F_GetVersionTcSystem                                     8'иR      џџџџ           F_IOPORTREAD               nAddr           §џ           Port address    eSize               E_IOAccessSize   §џ           Number of bytes to read       F_IOPortRead                                     8'иR      џџџџ           F_IOPORTWRITE               nAddr           §џ           Port address    eSize               E_IOAccessSize   §џ           Number of bytes to write    nValue           §џ           Value to write       F_IOPortWrite                                      8'иR      џџџџ           F_SCANAMSNETIDS           pNetID               ` §џ              b               T_AmsNetIdArr ` §џ              w         ` §џ	              id         ` §џ
           	   Index7001                            sNetID            
   T_AmsNetID   §џ       :    String containing the Ams Net ID. E.g. '127.16.17.3.1.1'       F_ScanAmsNetIds               T_AmsNetIdArr                             8'иR      џџџџ           F_SCANIPV4ADDRIDS           b               T_AmsNetIdArr ` §џ           	   Index7001                            sIPv4            
   T_IPv4Addr   §џ       M    String containing the Internet Protocol dotted address. E.g. '172.16.7.199'       F_ScanIPv4AddrIds               T_IPv4AddrArr                             8'иR      џџџџ           F_SPLITPATHNAME           pPath               ` §џ              pSlash               ` §џ              pDot               ` §џ              p               ` §џ              length         ` §џ              	   sPathName               T_MaxString   §џ                 F_SplitPathName                                sDrive               §џ              sDir                T_MaxString  §џ           	   sFileName                T_MaxString  §џ              sExt                T_MaxString  §џ	                   8'иR      џџџџ           F_TOASC           pChar               ` §џ                 str    Q       Q    §џ                 F_ToASC                                     8'иR      џџџџ           F_TOCHR           pChar    	                            ` §џ                 c           §џ                 F_ToCHR    Q       Q                              8'иR      џџџџ           FB_ADSREADWRITELIST           para                ST_AdsRdWrtListPara ` §џ           	   fbTrigger                 R_TRIG ` §џ              nState         ` §џ              fbCall       т    ( 	sNetID := '', nPort := 16#1234,
									nIdxGrp := GENERIC_FB_GRP_ADS,
									nIdxOffs := GENERIC_FB_ADS_RDWRTLIST,
									bExecute := FALSE,  ACCESSCNT_I := 16#0000BEC1,
									tTimeout := DEFAULT_ADS_TIMEOUT )     СО                 4                              FW_AdsRdWrt ` §џ           
      sNetId           ''    
   T_AmsNetID ` §џ              nPort           0    	   T_AmsPort ` §џ              nIdxGrp         ` §џ              nIdxOffs         ` §џ              cbWriteList         ` §џ	           Byte size of list array 
   pWriteList                   ST_AdsReadWriteListEntry      ` §џ
       !    Pointer to the first list entry 	   cbReadLen         ` §џ           	   pReadBuff           0       PVOID ` §џ              bExecute          ` §џ              tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ              cbRead         ` §џ                       8'иR     џџџџ           FB_BADEVICEIOCONTROL           fbRW       O    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_BADEVAPI, IDXOFFS := 0 )              	   T_AmsPort         L                 
   ADSRDWRTEX ` §џ              req                ST_AdsBaDevApiReq ` §џ              state         ` §џ              rtrig                 R_TRIG ` §џ                 sNetID           ''    
   T_AmsNetID ` §џ           Ams net id    affinity           ( lower :=0, higher := 0 )                T_U64KAFFINITY ` §џ       )    Affinity mask (default  = 0 = not used) 	   nModifier         ` §џ       +    Optional command modifier (0 == not used)    nIdxGrp         ` §џ           Api function group    nIdxOffs         ` §џ           Api function offset 
   cbWriteLen         ` §џ	           Input data byte size 	   cbReadLen         ` §џ
           Output data byte size 
   pWriteBuff         ` §џ           Pointer to input data buffer 	   pReadBuff         ` §џ           Pointer to output data buffer    bExecute          ` §џ       &    Rising edge starts command execution    tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ              cbRead         ` §џ           Count of bytes actually read             8'иR     џџџџ           FB_BAGENGETVERSION           fbCtrl           ( nModifier := 0, affinity := ( lower := 0, higher := 0 ), nIdxGrp := BADEVAPIIGRP_GENERAL, nIdxOffs := BADEVAPIIOFFS_GENERAL_VERSION )                ( lower :=0, higher := 0 )                T_U64KAFFINITY                                             FB_BaDeviceIoControl ` §џ              rtrig                 R_TRIG ` §џ              state         ` §џ              rsp         ` §џ                 sNetID           ''    
   T_AmsNetID ` §џ           ams net id    bExecute          ` §џ       &    rising edge starts command execution    tTimeout       ` §џ                 bBusy          ` §џ	              bError          ` §џ
              nErrID         ` §џ              nVersion         ` §џ           	   nRevision         ` §џ              nBuild         ` §џ                       8'иR     џџџџ           FB_CREATEDIR        
   fbAdsRdWrt       ]    ( nPort:= AMSPORT_R3_SYSSERV, nIdxGrp:= SYSTEMSERVICE_MKDIR, cbReadLen := 0, pReadBuff:= 0 )             '                            FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           max directory length = 255    ePath           PATH_GENERIC    
   E_OpenPath   §џ       +    Default: Create directory at generic path    bExecute            §џ       %    rising edge start command execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       8'иR     џџџџ           FB_EOF        
   fbAdsRdWrt       `    (nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FEOF, cbWriteLen := 0, pWriteBuff := 0 )             '                            FW_AdsRdWrt ` §џ              iEOF         ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              bEOF            §џ                       8'иR     џџџџ           FB_FILECLOSE        
   fbAdsRdWrt           ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FCLOSE, cbWriteLen := 0,	cbReadLen := 0,	pWriteBuff := 0, pReadBuff := 0 )             '   y                                 FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ       %    file handle obtained through 'open'    bExecute            §џ           close control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ                       8'иR     џџџџ           FB_FILEDELETE        
   fbAdsRdWrt       a    (nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FDELETE, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ              tmpOpenMode         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           file path and name    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: Open generic file    bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       8'иR     џџџџ           FB_FILEGETS        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FGETS, cbWriteLen := 0, pWriteBuff := 0 )             '   ~                         FW_AdsRdWrt ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              sLine               T_MaxString   §џ              bEOF            §џ                       8'иR     џџџџ           FB_FILEOPEN        
   fbAdsRdWrt       @    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FOPEN )             '   x                 FW_AdsRdWrt ` §џ              tmpOpenMode         ` §џ              tmpHndl         ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           max filename length = 255    nMode           §џ           open mode flags    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: Open generic file    bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              hFile           §џ           file handle             8'иR     џџџџ           FB_FILEPUTS        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FPUTS, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    sLine               T_MaxString   §џ           string to write    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       8'иR     џџџџ           FB_FILEREAD        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FREAD, cbWriteLen := 0, pWriteBuff := 0 )             '   z                         FW_AdsRdWrt ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle 	   pReadBuff           §џ           buffer address for read 	   cbReadLen           §џ           count of bytes for read    bExecute            §џ           read control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read    bEOF            §џ                       8'иR     џџџџ           FB_FILERENAME        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FRENAME, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ              tmpOpenMode         ` §џ           
   sBothNames   	                    T_MaxString         ` §џ           = SIZEOF( T_MaxString ) * 2    nOldLen         ` §џ              nNewLen         ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    sOldName               T_MaxString   §џ           max filename length = 255    sNewName               T_MaxString   §џ           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: generic file path   bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       8'иR     џџџџ           FB_FILESEEK        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FSEEK, cbReadLen := 0, pReadBuff := 0 )             '   |                         FW_AdsRdWrt ` §џ           
   tmpSeekPos   	                       ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ	           file handle    nSeekPos           §џ
           new seek pointer position    eOrigin       	    SEEK_SET       E_SeekOrigin   §џ              bExecute            §џ           seek control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       8'иR     џџџџ           FB_FILETELL        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FTELL, cbWriteLen := 0, pWriteBuff := 0 )             '   }                         FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              nSeekPos           §џ          	On error, nSEEKPOS returns -1             8'иR     џџџџ           FB_FILEWRITE        
   fbAdsRdWrt       A    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FWRITE )             '   {                 FW_AdsRdWrt ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle 
   pWriteBuff           §џ           buffer address for write 
   cbWriteLen           §џ           count of bytes for write    bExecute            §џ           write control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbWrite           §џ       !    count of bytes actually written             8'иR     џџџџ           FB_PCWATCHDOG           bRetVal          ` §џ              iTime         ` §џ              iIdx         ` §џ              iPortArr   	                 >    16#2E, 16#2E, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E	      .      .      .      /      .      /      .      /      .    ` §џ              iArrEn   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#05, 16#30, 16#01, 16#AA	                              і            0            Њ    ` §џ              iArrDis   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#00, 16#30, 16#00, 16#AA	                              і             0             Њ    ` §џ                 tTimeOut           §џ       ;    Watchdog TimeOut Time 1s..255s, disabled if tTimeOut < 1s    bEnable            §џ           Enable / Disable Watchdog       bEnabled            §џ       2    TRUE: Watchdog Enabled; FALSE: Watchdog Disabled    bBusy            §џ           FB still busy    bError            §џ	           FB has error     nErrId           §џ
           FB error ID               8'иR      џџџџ           FB_REMOVEDIR        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_RMDIR, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath   §џ       +    Default: Delete directory at generic path    bExecute            §џ       &    rising edge starts command execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       8'иR     џџџџ           FB_SIMPLEADSLOGEVENT           fbEvent       9    ( NETID := '', PORT := AMSPORT_EVENTLOG, TMOUT:= t#15s )             
   T_AmsNetId         n          :         ADSLOGEVENT ` §џ              cfgEvent               TcEvent ` §џ              bInit         ` §џ                 SourceID           §џ              EventID           §џ           	   bSetEvent           §џ              bQuit            §џ                 ErrId           §џ	              Error            §џ
                       8'иR     џџџџ        	   FILECLOSE        
   fbAdsWrite                                FW_AdsWrite    §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ       )    file handle obtained through 'FILEOPEN'    CLOSE            §џ           close control input    TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       8'иR     џџџџ           FILEOPEN        
   fbAdsWrite                                FW_AdsWrite    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ                 NETID            
   T_AmsNetId   §џ           ams net id 	   FPATHNAME               T_MaxString   §џ       #    default max filename length = 255    OPENMODE           §џ           open mode flags    OPEN            §џ           open control input    TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ              HFILE           §џ           file handle             8'иR     џџџџ           FILEREAD        	   fbAdsRead                              
   FW_AdsRead    §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ           file handle    BUFADDR           §џ           buffer address for read    COUNT           §џ           count of bytes for read    READ            §џ           read control input    TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             8'иR     џџџџ           FILESEEK        
   fbAdsWrite                                FW_AdsWrite    §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ           file handle    SEEKPOS           §џ           new seek pointer position    SEEK            §џ           seek control input    TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ                       8'иR     џџџџ        	   FILEWRITE        
   fbAdsWrite                                FW_AdsWrite    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ              tmpCount            §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ           file handle    BUFADDR           §џ           buffer address for write    COUNT           §џ           count of bytes for write    WRITE            §џ           write control input    TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_W           §џ       !    count of bytes actually written             8'иR     џџџџ           FW_CALLGENERICFB           fbCall       w    ( 	sNetID := '', nPort := 16#1234,
								bExecute := FALSE, tTimeout := T#0s,
								ACCESSCNT_I := 16#0000BEC1 )     СО                 4                          FW_AdsRdWrt ` §џ                 funGrp         ` §џ       #    Function block group (identifier)    funNum         ` §џ       $    Function block number (identifier)    pWrite         ` §џ       +    Byte length of output parameter structure    cbWrite         ` §џ       *    Byte length of input parameter structure    pRead         ` §џ	           Points ot output buffer    cbRead         ` §џ
           Points to input buffer       nErrID         ` §џ           0 => no error, <> 0 => error
   cbReturned         ` §џ       ,    Number of successfully returned data bytes             8'иR      џџџџ           FW_CALLGENERICFUN           fbCall       y    ( 	sNetID := '', nPort := 16#1234,
									bExecute := FALSE, tTimeout := T#0s,
									ACCESSCNT_I := 16#0000BEC2 )     ТО                 4                          FW_AdsRdWrt ` §џ           don't use it!        funGrp         ` §џ           Function group (identifier)    funNum         ` §џ       $    Function block number (identifier)    pWrite         ` §џ       +    Byte length of output parameter structure    cbWrite         ` §џ	       *    Byte length of input parameter structure    pRead         ` §џ
           Points ot output buffer    cbRead         ` §џ           Points to input buffer    pcbReturned               ` §џ       ,    Number of successfully returned data bytes       FW_CallGenericFun                                     8'иR      џџџџ           GETBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ                 GETBIT32                                      8'иR      џџџџ           GETCPUACCOUNT           fbGetCpuAccount               FW_GetCpuAccount ` §џ                     cpuAccountDW           §џ                       8'иR      џџџџ           GETCPUCOUNTER           fbGetCpuCounter                FW_GetCpuCounter ` §џ                  
   cpuCntLoDW           §џ           
   cpuCntHiDW           §џ                       8'иR      џџџџ           GETCURTASKINDEX           fbGetCurTaskIndex               FW_GetCurTaskIndex ` §џ                     index           §џ           Task index [1..4]             8'иR      џџџџ           GETSYSTEMTIME           fbGetSystemTime                FW_GetSystemTime ` §џ                     timeLoDW           §џ              timeHiDW           §џ                       8'иR      џџџџ           GETTASKTIME           out   	                       ` §џ	           
   cbReturned         ` §џ
                     timeLoDW           §џ              timeHiDW           §џ                       8'иR      џџџџ        	   LPTSIGNAL               PortAddr           §џ              PinNo           §џ              OnOff            §џ	              	   LPTSIGNAL                                      8'иR      џџџџ           MEMCMP               pBuf1           §џ           First buffer    pBuf2           §џ           Second buffer    n           §џ           Number of characters       MEMCMP                                     8'иR      џџџџ           MEMCPY               destAddr           §џ           New buffer    srcAddr           §џ           Buffer to copy from    n           §џ           Number of characters to copy       MEMCPY                                     8'иR      џџџџ           MEMMOVE               destAddr           §џ           New buffer    srcAddr           §џ           Buffer to copy from    n           §џ           Number of characters to copy       MEMMOVE                                     8'иR      џџџџ           MEMSET               destAddr           §џ           Pointer to destination    fillByte           §џ           Character to set    n           §џ           Number of characters       MEMSET                                     8'иR      џџџџ           ROL32               inVal32           §џ              n           §џ                 ROL32                                     8'иR      џџџџ           ROR32               inVal32           §џ              n           §џ                 ROR32                                     8'иR      џџџџ           SETBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ                 SETBIT32                                     8'иR      џџџџ           SFCACTIONCONTROL     
      S_FF                 RS    §џ              L_TMR                    TON    §џ              D_TMR                    TON    §џ              P_TRIG                 R_TRIG    §џ              SD_TMR                    TON    §џ              SD_FF                 RS    §џ              DS_FF                 RS    §џ              DS_TMR                    TON    §џ              SL_FF                 RS    §џ              SL_TMR                    TON    §џ           
      N            §џ              R0            §џ              S0            §џ              L            §џ              D            §џ              P            §џ              SD            §џ	              DS            §џ
              SL            §џ              T           §џ                 Q            §џ                       8'иR      џџџџ           SHL32               inVal32           §џ              n           §џ                 SHL32                                     8'иR      џџџџ           SHR32               inVal32           §џ              n           §џ                 SHR32                                     8'иR      џџџџ    s   C:\TWINCAT\PLC\LIB\TcBaseMath.lib @                                                                                          FW_FLOOR               lr_in                        §џ                 FW_Floor                                                  |)A     џџџџ           FW_LREALFRAC               lr_in                        §џ                 FW_LrealFrac                                                  |)A     џџџџ           FW_LREALMODP               lr_val                        §џ              lr_mod                        §џ                 FW_LrealModP                                                  |)A     џџџџ           FW_LREALTRUNC               lr_in                        §џ                 FW_LrealTrunc                                                  |)A     џџџџ    o   C:\TWINCAT\PLC\LIB\TcMath.lib @                                                                                          F_GETVERSIONTCMATH               nVersionElement           §џ                 F_GetVersionTcMath                                     rЬRA      џџџџ           FLOOR               lr_in                        §џ                 FLOOR                                                  rЬRA      џџџџ           FRAC               lr_in                        §џ                 FRAC                                                  rЬRA      џџџџ           LMOD               lr_Value                        §џ              lr_Arg                        §џ                 LMOD                                                  rЬRA      џџџџ           LTRUNC               lr_in                        §џ                 LTRUNC                                                  rЬRA      џџџџ           MODABS               lr_Value                        §џ              lr_Arg                        §џ                 MODABS                                                  rЬRA      џџџџ           MODTURNS           lr_Tmp                         §џ                 lr_Value                        §џ              lr_Arg                        §џ                 MODTURNS                                     rЬRA      џџџџ    n   C:\TWINCAT\PLC\LIB\TcMC2.lib @                                                                                a          _F_AXISSTATE                   _F_AxisState               MC_AxisStates                       NcToPlc                                        NCTOPLC_AXIS_REF` §џ              PlcToNc                                   PLCTONC_AXIS_REF` §џ                   6ЄУS      џџџџ           _F_GETINDEXGROUP        
   IndexGroup         ` §џ              IndexOffset         ` §џ	              nType               _E_ParameterType ` §џ
              lrValue                      ` §џ              
   ParaNumber         ` §џ              Mode         ` §џ           read/write       _F_GetIndexGroup                    _ST_ParaStruct                             6ЄУS      џџџџ           _F_NCCYCLECOUNTERUPDATED           pData                   _InternalAxisRefData         §џ	              NcCycleCounter            §џ
                 LastNcCycleCounter           §џ                 _F_NcCycleCounterUpdated                                Axis                AXIS_REF  §џ                   6ЄУS      џџџџ           _F_READSTATUS           GetTaskIndex                GETCURTASKINDEX ` §џ                 ForceTaskIndexUpdate          ` §џ       `    force update of the taskindex with GETCURTASKINDEX - otherwise update only once - 20100416 KSt       _F_ReadStatus        1                                                       ST_AxisStatus                       NcToPlc                                        NCTOPLC_AXIS_REF` §џ              PlcToNc                                   PLCTONC_AXIS_REF` §џ           
   LastStatus         1                                                       ST_AxisStatus` §џ	                   6ЄУS      џџџџ           _F_TCMC_DWORD_TO_HEXSTR           str1             ` §џ              pstr               ` §џ	              i         ` §џ
              digit         ` §џ                 in         ` §џ                 _F_TcMC_DWORD_TO_HEXSTR                                         6ЄУS      џџџџ           _F_TCMC_ROUND           n                      ` §џ                 value                      ` §џ              digits         ` §џ                 _F_TcMC_Round                                                  6ЄУS      џџџџ           _F_UPDATENCCYCLECOUNTER                   _F_UpdateNcCycleCounter                               Axis                AXIS_REF  §џ                   6ЄУS      џџџџ           _FB_MOVEUNIVERSALGENERIC           iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ               sStartRequest                      !   _ST_TcNC_UnversalAxisStartRequest    §џ!              sStartResponse             "   _ST_TcNC_UnversalAxisStartResponse    §џ"              fbAdsReadWrite                          
   ADSRDWRTEX    §џ#              ContinousMode             §џ$           
   InVelocity             §џ%              DiffCycleCounter            §џ&       5    last recent PLC cycle counter difference while Busy    EmptyStartResponse             "   _ST_TcNC_UnversalAxisStartResponse ` §џ*              COUNT_R         ` §џ+              CounterCmdNoZero         ` §џ,              CounterCmdNotStarted         ` §џ-           	   DiffCmdNo         ` §џ.              NcCycleCounter         ` §џ/              LastNcCycleCounter         ` §џ0              NcMappingCounter         ` §џ1              NcCycleCounterAvailable          ` §џ2              NcCycleCounterNotAvailable          ` §џ3              NcCyclicFeedbackExpected          ` §џ4              PlcDebugCode         ` §џ5       a    additional information for debugging purposes will be added to debug messages (ActErrorMessage)    AxisIsSlave          ` §џ6              GetTaskIndex                GETCURTASKINDEX ` §џ7              CycleCounter         ` §џ8       *    last recent PLC cycle counter while Busy 	   fbTimeOut                    TON ` §џ9              fbStopMonitoringTimeOut                    TON ` §џ:              fbTimeOutMappingCounter                    TON ` §џ;              fbOnTrigger                 R_TRIG ` §џ<              sTempMsg             ` §џ=              OpMode                  _ST_TcNc_OperationModes ` §џ@                 Execute            §џ          	StartType		: 	UDINT; 	   StartType               _E_TCNC_StartPosType   §џ	       #    20110511 KSt type changed for Tc3    Position                        §џ
              Velocity                        §џ              Acceleration                        §џ              Deceleration                        §џ              Jerk                        §џ       6   	Direction			:	MC_Direction := MC_Positive_Direction;	
   BufferMode               MC_BufferMode   §џ              Options                  ST_MoveOptions   §џ              Reset            §џ           for internal use only    GotoRunState            §џ           for internal use only       Done            §џ       :    Same meaning as InVelocity for continous motion commands    Busy            §џ              Active            §џ              CommandAborted            §џ              Error            §џ              ErrorID           §џ              CmdNo           §џ              ADSbusy            §џ                 Axis                AXIS_REF  §џ              LastExecutionResult                   _ST_FunctionBlockResults  §џ                   6ЄУS      џџџџ           _FB_PHASINGGENERIC           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ          	fbAdsReadWrite	: 	ADSRDWRTEX;
   fbAdsWrite                          ADSWRITE    §џ!           
   sNcPhasing                           _ST_TcNC_PhasingRequest    §џ"              PhasingStarted             §џ#           	   fbTrigger                 R_TRIG ` §џ'           	   fbTimeOut                    TON ` §џ(           
      Execute            §џ           B 	   StartType               _E_TcNC_StartPosType   §џ	           command type start, stop etc, 
   PhaseShift                        §џ
           B    PhasingType               E_PhasingType   §џ       1    type of phase shift value, absolute or relative    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_PhasingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E    PhaseShiftFeedback                        §џ           E       Master                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   6ЄУS      џџџџ        !   _FB_POSITIONCORRECTIONTABLELOOKUP           nState            §џ              dwSize            §џ              eActiveDirection           WorkDirectionNone       E_WorkDirection    §џ           	   bExecCalc             §џ           
   stElement1             #   ST_PositionCompensationTableElement    §џ           
   stElement2             #   ST_PositionCompensationTableElement    §џ            
   nLeftIndex            §џ!       #    Index starting from 0 up to (N-1)    fSetPos                         §џ"       A    position setpoint (absolute linear position or modulo position) 	   pTmpTable              #   ST_PositionCompensationTableElement         §џ$       0    helper variable: pointer to table of this type    fTmpStep                         §џ%           helper variable    fTmpA                         §џ&           helper variable    fTmpB                         §џ'           helper variable 
   fTmpDelta1                         §џ(           helper variable 
   fTmpDelta2                         §џ)           helper variable    ERRORCODE_PARAMSIZE    CK     §џ,              ERRORCODE_PARAMPOS    DK     §џ-       +   	ERRORCODE_TCNCNOTIMPL	: UDINT := 16#4B45;       Enable            §џ       )    rising edge triggers initialize routine    pTable              #   ST_PositionCompensationTableElement        §џ           pointer to table of this type 	   TableSize           §џ       +    size of data in bytes related to 'pTable'    TableParameter                %   ST_PositionCompensationTableParameter   §џ       1    position compensation table parameter structure       Compensation                        §џ              Error            §џ              ErrorID           §џ              Active            §џ                 Axis                Axis_Ref  §џ                   6ЄУS      џџџџ           _FB_READWRITEPARAMETER           iState           STATE_INITIALIZATION       _E_TcMC_STATES ` §џ           	   fbAdsRead                          ADSREAD ` §џ           
   fbAdsWrite                          ADSWRITE ` §џ              dwValue         ` §џ              lrValue   	  
                                 ` §џ              NcBoolValue         ` §џ              bStarted          ` §џ!              stParaStruct                    _ST_ParaStruct ` §џ"              n         ` §џ#              i         ` §џ$           	   ParaLREAL        ` §џ(          	ParaBOOL		:	INT := 3;      Enable          ` §џ              ParameterNumber               MC_AxisParameter ` §џ              Mode         ` §џ	           read/write    ParameterType         ` §џ
           bool/ not  bool       Done          ` §џ              Busy          ` §џ              Error          ` §џ              ErrorID         ` §џ              ADSbusy          ` §џ                 Axis                AXIS_REF` §џ           
   ValueLreal                      ` §џ           
   ValueDword         ` §џ           	   ValueBool          ` §џ                   6ЄУS      џџџџ           _FBAXIS_REF        	   _internal                  _InternalAxisRefData ` §џ              Storage   	                       ` §џ       $    universal storage for internal use       PlcToNc                                  PLCTONC_AXIS_REF   §џ                 NcToPlc                                       NCTOPLC_AXIS_REF  §џ              ADS                 ST_AdsAddress   §џ              Status        1                                                       ST_AxisStatus   §џ                       6ЄУS     џџџџ           _MC_HALTPHASING           PhasingGeneric                                         _FB_PhasingGeneric    §џ                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ	           E 
   BufferMode               MC_BufferMode   §џ
           E    Options               ST_PhasingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Master                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   6ЄУS      џџџџ           _MC_PHASINGABSOLUTE           PhasingGeneric                                         _FB_PhasingGeneric    §џ$                 Execute            §џ           B 
   PhaseShift                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_PhasingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ            E    AbsolutePhaseShift                        §џ!           E       Master                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   6ЄУS      џџџџ           _MC_PHASINGRELATIVE           PhasingGeneric                                         _FB_PhasingGeneric    §џ&                 Execute            §џ           B 
   PhaseShift                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_PhasingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ            E    Error            §џ!           B    ErrorID           §џ"           E    CoveredPhaseShift                        §џ#           E       Master                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   6ЄУS      џџџџ           _TCMC_ADSRDWRT        
   fbAdsRdWrt                                    FW_AdsRdWrt    §џ              NcCycleCounter            §џ              NcCycleCounterAdsEnd            §џ              UpdateCounter            §џ               NoUpdateCounter            §џ!           used for timeout detection    state            §џ"           
      NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ              DESTADDR           §џ              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read       Axis                AXIS_REF  §џ                   6ЄУS     џџџџ           _TCMC_ADSREAD        	   fbAdsRead                              
   FW_AdsRead    §џ              NcCycleCounter            §џ              NcCycleCounterAdsEnd            §џ              UpdateCounter            §џ              NoUpdateCounter            §џ           used for timeout detection    state            §џ                  NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read       Axis                AXIS_REF  §џ                   6ЄУS     џџџџ           _TCMC_ADSWRITE        
   fbAdsWrite                                FW_AdsWrite    §џ              NcCycleCounter            §џ              NcCycleCounterAdsEnd            §џ              UpdateCounter            §џ              NoUpdateCounter            §џ           used for timeout detection    state            §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                 Axis                AXIS_REF  §џ                   6ЄУS     џџџџ           _TCMCGLOBAL     	      Axis                 _ST_NCADS_Axis   §џ       A    IDXGRP and IDXOFFS constants of axis parameter/status/functions    Table                _ST_NCADS_Table   §џ       B    IDXGRP and IDXOFFS constants of table parameter/status/functions     NCPORT_TCNCCAMMING_TABLEFUNCTION    є     §џ       	    timeout    tTargetPosTimeOut    p     §џ       T    20050128 KSt - changed from 5 sec to 6 sec to be later than a NC PEH error (5 sec)    tADSTimeOut    ш     §џ              tStopMonitoringTimeOut    d      §џ       C    20111208 KSt - new for stop monitoring (axis in standstill window    NCTOPLC_FEEDBACK_MAXWAITCYCLES    
      §џ       \    maximum number of PLC cycles to wait for a cyclic feedback in NcToPlc after an ADS command    fbADSRDDEVINFO        
                ADSRDDEVINFO    §џ              DeviceVersion            §џ                  NCPORT_TCMC    є     §џ       (    20110511 type changed from INT to UINT    NCPORT_TCMC_COUPLING    є     §џ       6    used with all axis coupling commands - 12.7.2006 KSt    NCNETID_TCMC           ''    
   T_AmsNetId   §џ              NCPORT_TCMC_CAM    є     §џ       (    20110511 type changed from INT to UINT    NCNETID_TCMC_CAM           ''    
   T_AmsNetId   §џ                 NcDeviceInfoTcMainVersion           §џ              NcDeviceInfoTcSubVersion           §џ              NcDeviceInfoNcDriverVersion           §џ              NcDeviceInfoNcVersion           §џ              NcDeviceInfoNcName               §џ                       6ЄУS     џџџџ           F_AXISCAMDATAQUEUED            
   StateDWord           §џ
                 F_AxisCamDataQueued                                      6ЄУS      џџџџ           F_AXISCAMSCALINGPENDING            
   StateDWord           §џ                 F_AxisCamScalingPending                                      6ЄУS      џџџџ           F_AXISCAMTABLEQUEUED            
   StateDWord           §џ
                 F_AxisCamTableQueued                                      6ЄУS      џџџџ           F_AXISCONTROLLOOPCLOSED            
   StateDWord           §џ                 F_AxisControlLoopClosed                                      6ЄУS      џџџџ           F_AXISEXTERNALLATCHVALID            
   StateDWord           §џ                 F_AxisExternalLatchValid                                      6ЄУS      џџџџ           F_AXISGOTNEWTARGETPOSITION            
   StateDWord           §џ
                 F_AxisGotNewTargetPosition                                      6ЄУS      џџџџ           F_AXISHASBEENSTOPPED            
   StateDWord           §џ                 F_AxisHasBeenStopped                                      6ЄУS      џџџџ           F_AXISHASEXTSETPOINTGEN            
   StateDWord           §џ                 F_AxisHasExtSetPointGen                                      6ЄУS      џџџџ           F_AXISHASJOB            
   StateDWord           §џ                 F_AxisHasJob                                      6ЄУS      џџџџ           F_AXISINERRORSTATE            
   StateDWord           §џ                 F_AxisInErrorState                                      6ЄУS      џџџџ           F_AXISINPOSITIONWINDOW            
   StateDWord           §џ                 F_AxisInPositionWindow                                      6ЄУS      џџџџ           F_AXISINPROTECTEDMODE            
   StateDWord           §џ                 F_AxisInProtectedMode                                      6ЄУS      џџџџ           F_AXISINPTPMODE            
   StateDWord           §џ
                 F_AxisInPTPmode                                      6ЄУS      џџџџ           F_AXISIODATAISINVALID            
   StateDWord           §џ                 F_AxisIoDataIsInvalid                                      6ЄУS      џџџџ           F_AXISISATTARGETPOSITION            
   StateDWord           §џ                 F_AxisIsAtTargetPosition                                      6ЄУS      џџџџ           F_AXISISCALIBRATED            
   StateDWord           §џ                 F_AxisIsCalibrated                                      6ЄУS      џџџџ           F_AXISISCALIBRATING            
   StateDWord           §џ                 F_AxisIsCalibrating                                      6ЄУS      џџџџ           F_AXISISCOMPENSATING            
   StateDWord           §џ                 F_AxisIsCompensating                                      6ЄУS      џџџџ           F_AXISISCOUPLED               nCoupleState           §џ                 F_AxisIsCoupled                                      6ЄУS      џџџџ           F_AXISISMOVING            
   StateDWord           §џ                 F_AxisIsMoving                                      6ЄУS      џџџџ           F_AXISISMOVINGBACKWARDS            
   StateDWord           §џ                 F_AxisIsMovingBackwards                                      6ЄУS      џџџџ           F_AXISISMOVINGENDLESS            
   StateDWord           §џ                 F_AxisIsMovingEndless                                      6ЄУS      џџџџ           F_AXISISMOVINGFORWARD            
   StateDWord           §џ                 F_AxisIsMovingForward                                      6ЄУS      џџџџ           F_AXISISNOTMOVING            
   StateDWord           §џ                 F_AxisIsNotMoving                                      6ЄУS      џџџџ           F_AXISISREADY            
   StateDWord           §џ                 F_AxisIsReady                                      6ЄУS      џџџџ           F_AXISJOBPENDING            
   StateDWord           §џ
                 F_AxisJobPending                                      6ЄУS      џџџџ           F_AXISMOTIONCOMMANDSLOCKED            
   StateDWord           §џ                 F_AxisMotionCommandsLocked                                      6ЄУS      џџџџ           F_AXISPHASINGACTIVE            
   StateDWord           §џ                 F_AxisPhasingActive                                      6ЄУS      џџџџ           F_AXISREACHEDCONSTANTVELOCITY            
   StateDWord           §џ                 F_AxisReachedConstantVelocity                                      6ЄУS      џџџџ           F_GETVERSION_TCMC2               nVersionElement           §џ                 F_GetVersion_TcMC2                                     6ЄУS      џџџџ           MC_ABORTSUPERPOSITION           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              fbOnTrigger                 R_TRIG    §џ           
   fbADSwrite                          ADSWRITE    §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ                 Execute            §џ           Starts touch probe recording       Done            §џ           move completed    Busy            §џ       "    function block is currently Busy    Error            §џ       6    Signals that error has occured within Function Block    ErrorID           §џ	           Error identification       Axis                AXIS_REF  §џ       f    Identifies the axis of which the position should be recorded at a defined event at the trigger input         6ЄУS      џџџџ           MC_ABORTTRIGGER           ADSbusy             §џ           
   fbADSwrite                          ADSWRITE    §џ              OLDADSINTERFACE         ` §џ       A    temporary flag to test old and new NC ADS touch probe interface    LatchID         ` §џ              fbOnTrigger                 R_TRIG ` §џ                 Execute            §џ
           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B    TriggerInput                       TRIGGER_REF  §џ           E         6ЄУS      џџџџ           MC_ABORTTRIGGER_V2_00           ADSbusy             §џ           
   fbADSwrite                          ADSWRITE    §џ              i            §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              LatchID         ` §џ              fbOnTrigger                 R_TRIG ` §џ              stTouchProbeDeactivation                 _ST_TcNc_TouchProbeDeactivation ` §џ                 Execute            §џ
           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B    TriggerInput                       TRIGGER_REF  §џ           E         6ЄУS      џџџџ           MC_BACKLASHCOMPENSATION           InternalEnable             §џ&            trick for internal FB handling    state            §џ'              GetThisTaskIndex                GETCURTASKINDEX    §џ(           	   CycleTime                         §џ)           task cycle time [s]    fbCalcBacklashCorrection                                    !   _FB_PositionCorrectionTableLookup    §џ*       4    based on old 'FB_PositionCompensation' in TcNc.lib    fbFeedBacklashCorrection                                    MC_PositionCorrectionLimiter    §џ+       N    s.TcMC2.lib (original based on old 'FB_WritePositionCorrection' in TcNc.lib)    CalcBacklashCorrOut                    ST_McOutputs    §џ,              FeedBacklashCorrOut                    ST_McOutputs    §џ-              ReadParameter                              MC_ReadParameter    §џ.           	   iBacklash                         §џ/              InternalAcceleration                         §џ0       E    input of FB 'MC_PositionCorrectionLimiter': 'Acceleration' [mm/s^2]    InternalBacklashValue                         §џ1       M    output of FB 'MC_PositionCorrectionLimiter': 'PositionCorrectionValue' [mm]    InternalLimitingActive             §џ2       ?    output of FB 'MC_PositionCorrectionLimiter': 'Limiting' [0/1]    stPosCompParameter       w   
								( MinPosition := -1.0E+12, MaxPosition :=1.0E+12, NoOfTableElements :=2, Direction := WorkDirectionNegative )       ЂmТ   -1.0E+12    ЂmB   1.0E+12            WorkDirectionBoth       E_WorkDirection         %   ST_PositionCompensationTableParameter    §џ4              stPosCompTable   	                   #   ST_PositionCompensationTableElement   o   
								( Position := -1.0E+12,	Compensation := 0.0 ),
								( Position := +1.0E+12,	Compensation := 0.0 )                 ЂmТ   -1.0E+12            0.0              ЂmB   1.0E+12            0.0    §џ7                 Enable            §џ       *    switch to activate backlash compensation    Backlash    3tЌ<{Ќ   1.0E3073tЌ<{Ќ   §џ       ~    signed backlash value [mm] (when using default value the internal nc backlash value will be read by ADS and used in this FB)    CompensationInPositiveDirection            §џ       @    compensation is just working in the selected working direction    Ramp                        §џ           velocity limit for feeded backlash compensation (constant velocity and linear position sub profile for backlash compensation) [mm/s] (default:=0.0)    DisableMode               E_DisableMode   §џ       S    disable mode defines whow to react in case of disabling: (0)=HOLD, (1)=RESET, ...    Options               ST_BacklashCompensationOptions   §џ       $    optional parameters (NOT USED YET)       Enabled            §џ              Busy            §џ              Error            §џ               ErrorID           §џ!              CurrentBacklash                        §џ"       $    current actual backlash value [mm]    Limiting            §џ#       >    function block is currently limiting the Backlash Correction       Axis                Axis_Ref  §џ                   6ЄУS     џџџџ           MC_EXTSETPOINTGENDISABLE           LastExecutionResult                  _ST_FunctionBlockResults    §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              ADSbusy             §џ           
   fbADSwrite                          ADSWRITE    §џ              fbOnTrigger                 R_TRIG ` §џ              TimerStateFeedback                    TON ` §џ                 Execute            §џ                 Done            §џ	              Busy            §џ
              Error            §џ              ErrorID           §џ              Enabled            §џ                 Axis                AXIS_REF  §џ                   6ЄУS      џџџџ           MC_EXTSETPOINTGENENABLE           LastExecutionResult                  _ST_FunctionBlockResults    §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              ADSbusy             §џ              sExtSetPointGen                _ST_TcNC_SetPos    §џ           
   fbADSwrite                          ADSWRITE    §џ              fbOnTrigger                 R_TRIG ` §џ              TimerStateFeedback                    TON ` §џ                 Execute            §џ              Position                        §џ              PositionType               E_PositionType   §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              Enabled            §џ                 Axis                AXIS_REF  §џ                   6ЄУS      џџџџ           MC_EXTSETPOINTGENFEED           GetTaskIndex                GETCURTASKINDEX    §џ                 Position                        §џ              Velocity                        §џ              Acceleration                        §џ           	   Direction           §џ	                 MC_ExtSetPointGenFeed                                Axis                AXIS_REF  §џ                   6ЄУS      џџџџ        	   MC_GEARIN           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           
   fbAdsWrite                          ADSWRITE    §џ              sCouple                      _ST_TcNC_CoupleSlave    §џ               fbOptGearInDyn                                         MC_GearInDyn    §џ!              fbOnTrigger                 R_TRIG ` §џ%              TimerStateFeedback                    TON ` §џ&                 Execute            §џ           B    RatioNumerator          №?   1      №?   §џ
       %    changed from INT (PLCopen) to LREAL    RatioDenominator          §џ           	MasterValueSource :	MC_SOURCE;    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_GearInOptions   §џ           V       InGear            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Master                AXIS_REF  §џ           B    Slave                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_GEARINDYN           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ               iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ!           	   iSubState            §џ"           
   fbAdsWrite                          ADSWRITE    §џ#           	   fbAdsRead                          ADSREAD    §џ$              sCouple                      _ST_TcNC_CoupleSlave    §џ%              v_max                         §џ&              pa_limit                         §џ'           	   WasInGear             §џ(              iAcceleration                      ` §џ,              TimerStateFeedback                    TON ` §џ-                 Enable            §џ           	   GearRatio          №?   1.0      №?   §џ              Acceleration                        §џ              Deceleration                        §џ       
    not used    Jerk                        §џ       
    not used 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_GearInDynOptions   §џ           V       InGear            §џ              Busy            §џ              Active            §џ              CommandAborted            §џ              Error            §џ              ErrorID           §џ                 Master                AXIS_REF  §џ
              Slave                AXIS_REF  §џ                   6ЄУS      џџџџ           MC_GEARINMULTIMASTER           ADSbusy             §џ%              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ&           
   fbAdsWrite                          ADSWRITE    §џ'              sCouple                           _ST_TcNC_CoupleSlaveMultiMaster    §џ(           	   sCoupleV2                                  _ST_TcNC_CoupleSlaveMultiMaster2    §џ)              LastExecutionResult                  _ST_FunctionBlockResults    §џ*           	   IsCoupled             §џ+              TimerStateFeedback                    TON ` §џ/              iAdvancedSlaveDynamics          ` §џ0              iAcceleration                      ` §џ1              iDeceleration                      ` §џ2           just used in version 2 mode    iJerk                      ` §џ3           just used in version 2 mode 	   WasInGear          ` §џ4              ParameterChanged          ` §џ5           
      Enable            §џ           
   GearRatio1          №?   1.0      №?   §џ           
   GearRatio2          №?   1.0      №?   §џ           
   GearRatio3          №?   1.0      №?   §џ           
   GearRatio4          №?   1.0      №?   §џ              Acceleration                        §џ              Deceleration                        §џ       5    just used in version 2 mode (AdvancedSlaveDynamics)    Jerk                        §џ       5    just used in version 2 mode (AdvancedSlaveDynamics) 
   BufferMode               MC_BufferMode   §џ           E    Options                ST_GearInMultiMasterOptions   §џ           V       InGear            §џ              Busy            §џ              Active            §џ              CommandAborted            §џ               Error            §џ!              ErrorID           §џ"                 Master1                AXIS_REF  §џ
              Master2                AXIS_REF  §џ              Master3                AXIS_REF  §џ              Master4                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   6ЄУS      џџџџ        
   MC_GEAROUT           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           
   fbAdsWrite                          ADSWRITE    §џ              fbOnTrigger                 R_TRIG ` §џ              TimerStateFeedback                    TON ` §џ                 Execute            §џ           B    Options               ST_GearOutOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Slave                AXIS_REF  §џ	           B         6ЄУS      џџџџ           MC_HALT           LastExecutionResult                  _ST_FunctionBlockResults    §џ$              ADSbusy             §џ%              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ&              CmdNo            §џ'                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ            B    ErrorID           §џ!           E       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_HOME           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ            	   iSubState            §џ!              fbAdsWriteCmd                          ADSWRITE    §џ"              fbAdsWriteRefPos                          ADSWRITE    §џ#              fbAdsReadRefPos                          ADSREAD    §џ$              ReferenceFlagValue            §џ%              fbSetPosition                            MC_SetPosition    §џ&              NcHomePosition                         §џ'           	   fbTrigger                 R_TRIG ` §џ+           	   fbTimeOut                    TON ` §џ,                 Execute            §џ           B    Position    3tЌ<{Ќ   1.0E3073tЌ<{Ќ   §џ           
   HomingMode               MC_HomingMode   §џ           V 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_HomingOptions   §џ           V    bCalibrationCam            §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         6ЄУS     џџџџ           MC_JOG           state            §џ              LastExecutionResult                  _ST_FunctionBlockResults    §џ           
   StateDWord             §џ              ExecuteMoveVelocity          ` §џ               MoveVelocity                                 MC_MoveVelocity ` §џ!              MoveVelocityOut                    ST_McOutputs ` §џ"           	   Direction               MC_Direction ` §џ#              ExecuteHalt          ` §џ%              Halt                              MC_Halt ` §џ&              HaltOut                    ST_McOutputs ` §џ'              ExecuteMoveAbsolute          ` §џ)              MoveAbsolute                                 MC_MoveAbsolute ` §џ*              MoveAbsoluteOut                    ST_McOutputs ` §џ+              ExecuteMoveRelative          ` §џ-              MoveRelative                                 MC_MoveRelative ` §џ.              MoveRelativeOut                    ST_McOutputs ` §џ/              JogMove        1                                                       _FB_MoveUniversalGeneric ` §џ1              LastJogMoveResult                  _ST_FunctionBlockResults ` §џ2              ExecuteJogMove          ` §џ3           	   StartType               _E_TCNC_StartPosType ` §џ4           
   JogMoveOut                    ST_McOutputs ` §џ5              JogEnd          ` §џ7              TargetPosition                      ` §џ8              modulo                      ` §џ9              
   JogForward            §џ              JogBackwards            §џ              Mode            	   E_JogMode   §џ	              Position                        §џ
              Velocity                        §џ              Acceleration                        §џ              Deceleration                        §џ              Jerk                        §џ          	BufferMode		:	MC_BufferMode;      Done            §џ              Busy            §џ              Active            §џ              CommandAborted            §џ              Error            §џ              ErrorID           §џ                 Axis                AXIS_REF  §џ                   6ЄУS      џџџџ           MC_MOVEABSOLUTE           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ              CmdNo            §џ                 Execute            §џ           B    Position                        §џ	           B    Velocity                        §џ
           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_MOVEADDITIVE           LastExecutionResult                  _ST_FunctionBlockResults    §џ%              ADSbusy             §џ&              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ'              CmdNo            §џ(                 Execute            §џ           B    Distance                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ            E    Error            §џ!           B    ErrorID           §џ"           E       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_MOVECONTINUOUSABSOLUTE           LastExecutionResult                  _ST_FunctionBlockResults    §џ+              ADSbusy             §џ,              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ-              CmdNo            §џ.           	      Execute            §џ           B    Position                        §џ           B    Velocity                        §џ           B    EndVelocity                        §џ           B    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ                  InEndVelocity            §џ#           B    Busy            §џ$           E    Active            §џ%           E    CommandAborted            §џ&           E    Error            §џ'           B    ErrorID           §џ(           E       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_MOVECONTINUOUSRELATIVE           LastExecutionResult                  _ST_FunctionBlockResults    §џ*              ADSbusy             §џ+              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ,              CmdNo            §џ-           	      Execute            §џ           B    Distance                        §џ           B    Velocity                        §џ           B    EndVelocity                        §џ           B    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ                 InEndVelocity            §џ"           B    Busy            §џ#           E    Active            §џ$           E    CommandAborted            §џ%           E    Error            §џ&           B    ErrorID           §џ'           E       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_MOVEMODULO           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ          	StartType: UDINT;	   StartType               _E_TcNC_StartPosType    §џ       #    20110511 KSt type changed for TC3    CmdNo            §џ              TriggerExecute                 R_TRIG ` §џ#           	      Execute            §џ              Position                        §џ              Velocity                        §џ	              Acceleration                        §џ
              Deceleration                        §џ              Jerk                        §џ           	   Direction               MC_Direction   §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ                 Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ                   6ЄУS      џџџџ           MC_MOVERELATIVE           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ              CmdNo            §џ                 Execute            §џ	           B    Distance                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_MOVESUPERIMPOSED     
      LastExecutionResult                  _ST_FunctionBlockResults    §џ1              ADSbusy             §џ2              CompensationStarted             §џ3              AxisHasJobAtStartOfCompensation             §џ4       ,    HasJob flag when starting the compensation !   AxisIsMovingAtStartOfCompensation             §џ5       ,    Moving flag when starting the compensation    iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ6              fbAdsReadWrite                          
   ADSRDWRTEX    §џ7              sNcCompensation                      _ST_TcNC_Compensation2    §џ8           	   fbTrigger                 R_TRIG ` §џ<           	   fbTimeOut                    TON ` §џ=           
      Execute            §џ           B    Mode               E_SuperpositionMode   §џ           V    Distance                        §џ           B    VelocityDiff                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E    VelocityProcess                        §џ           V    Length                        §џ           V    Options               ST_SuperpositionOptions   §џ           V       Done            §џ!           B    Busy            §џ"           E    Active            §џ#           E    CommandAborted            §џ$           E    Error            §џ%           B    ErrorID           §џ&           E    Warning            §џ(           V 	   WarningId           §џ)           V    ActualVelocityDiff                        §џ*           V    ActualDistance                        §џ+           V    ActualLength                        §џ,           V    ActualAcceleration                        §џ-           V    ActualDeceleration                        §џ.           V       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_MOVEVELOCITY           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ              CmdNo            §џ                 Execute            §џ           B    Velocity                        §џ	           E    Acceleration                        §џ
           E    Deceleration                        §џ           E    Jerk                        §џ           E 	   Direction           MC_Positive_Direction       MC_Direction   §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V    
   InVelocity            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_OVERRIDEFILTER           bFirstCycle            §џ              bThresholdActive            §џ              InternalOverrideValueRaw            §џ              LastOverrideValueRaw    џџ      §џ              OverrideRange            §џ              fbTimer                    TON ` §џ                 OverrideValueRaw           §џ           parameter    LowerOverrideThreshold           §џ           0...32767 digits    UpperOverrideThreshold    џ     §џ           0...32767 digits    OverrideSteps    Ш      §џ           200 steps => 0.5 percent    OverrideRecoveryTime          §џ	           150 ms       OverrideValueFiltered           §џ           0...1000000 counts    OverridePercentFiltered                        §џ           0...100 %    Error            §џ              ErrorID           §џ                       6ЄУS      џџџџ           MC_POSITIONCORRECTIONLIMITER           GetThisTaskIndex                GETCURTASKINDEX    §џ(           	   CycleTime                         §џ)              MaxDeltaVelocity                         §џ*              MaxDeltaPosition                         §џ+              DeltaCorrection                         §џ,              InitialDeltaCorrection                         §џ-              EndOfEnablePhase             §џ.              iCorrectionMode               E_AxisPositionCorrectionMode    §џ/              state            §џ0              NumberOfCycles            §џ1              DeltaCorrectionPerCycle                         §џ2              LastPositionCorrectionValue                         §џ3                 Enable            §џ              PositionCorrectionValue                        §џ              CorrectionMode               E_AxisPositionCorrectionMode   §џ              Acceleration                        §џ              CorrectionLength                        §џ       8    optional length - comparable to 'superposition length'       Busy            §џ"              Error            §џ#              ErrorID           §џ$              Limiting            §џ%       >    function block is currently limiting the Position Correction       Axis                AXIS_REF  §џ                   6ЄУS      џџџџ           MC_POWER           EnableTimeout                    TON ` §џ              EnableOffOnDelay                   TP ` §џ          	iOverride: DINT;	   iOverride         ` §џ        $    20110511 KSt type adaption for TC3       Enable            §џ           B    Enable_Positive            §џ           E    Enable_Negative            §џ           E    Override          Y@   100.0      Y@   §џ       )    in percent - Beckhoff proprietary input 
   BufferMode               MC_BufferMode   §џ           V       Status            §џ           B    Busy            §џ           V    Active            §џ           V    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ
           B         6ЄУS      џџџџ           MC_POWERSTEPPER     $      fbPower                            MC_Power    §џ           	   ErrorCode            §џ              fbWriteErrCode                          ADSWRITE    §џ           	   nRefState            §џ              fbWriteNonRef                          ADSWRITE    §џ              fbReadParams                          ADSREAD    §џ              fbWriteInstOvr                          ADSWRITE    §џ              bAdsInitDone             §џ           	   bOverTemp             §џ           
   rtOverTemp                 R_TRIG    §џ               bUnderVoltage             §џ!              rtUnderVoltage                 R_TRIG    §џ"           
   bOpenLoopA             §џ#              rtOpenLoopA                 R_TRIG    §џ$           
   bOpenLoopB             §џ%              rtOpenLoopB                 R_TRIG    §џ&              bOverCurrentA             §џ'              rtOverCurrentA                 R_TRIG    §џ(              bOverCurrentB             §џ)              rtOverCurrentB                 R_TRIG    §џ*              rtStallError                 R_TRIG    §џ+           	   bOldState             §џ,              bLagFilterInit             §џ.              tonLagFilter                    TON    §џ/              tonNoLagFilter                    TON    §џ0              wState2            §џ2              nAngle            §џ3           	   nOldAngle            §џ4           	   AngleDiff            §џ5              bInErrorState             §џ6           	   nParamIdx            §џ8              bParamEnabled             §џ9           	   fLagLimit                         §џ:           
   fLagFilter                         §џ;              nTries            §џ<              tTimeOut                    TON    §џ=                 Enable            §џ              Enable_Positive            §џ              Enable_Negative            §џ              Override          Y@   100.0      Y@   §џ	           in percent    DestallParams                    ST_PowerStepperStruct   §џ
           	   KL_Status           §џ           
   KL_Status2           §џ                 Status            §џ              Error            §џ              ErrorID           §џ              Stalled            §џ           
   StallError            §џ                 Axis                AXIS_REF  §џ                   6ЄУS      џџџџ           MC_READACTUALPOSITION               Enable            §џ           B       Valid            §џ
           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    Position                        §џ           B       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_READACTUALVELOCITY               Enable            §џ           B       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    ActualVelocity                        §џ           B       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_READAPPLICATIONREQUEST           TriggerExecute                 R_TRIG    §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           	   fbAdsRead                          ADSREAD    §џ                 Execute            §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              Request            §џ           application request bit [0/1]    RequestType           §џ           application request TYPE/ID       ApplicationRequest                    ST_NcApplicationRequest  §џ              Axis                AXIS_REF  §џ                   6ЄУS      џџџџ           MC_READAXISCOMPONENTS           TriggerExecute                 R_TRIG    §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           	   fbAdsRead                          ADSREAD    §џ                 Execute            §џ                 Done            §џ
              Busy            §џ              Error            §џ              ErrorID           §џ                 AxisComponents                  ST_AxisComponents  §џ              Axis                AXIS_REF  §џ                   6ЄУS      џџџџ           MC_READAXISERROR               Enable            §џ
           B       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           B    AxisErrorID           §џ           B       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_READBOOLPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter    §џ           	   nParatype               _E_ParameterType ` §џ              dwValue         ` §џ              lrValue                      ` §џ              bStarted          ` §џ           	   fbTrigger                 R_TRIG ` §џ                 Enable            §џ           B    ParameterNumber           §џ           B    ReadMode           ReadMode_Once    
   E_ReadMode   §џ	           Beckhoff proprietary input       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    Value            §џ           B       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_READDRIVEADDRESS           state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              TriggerExecute                 R_TRIG    §џ           	   fbAdsRead                          ADSREAD    §џ           
   readBuffer   	  ?                        §џ       H    2013-04-03 KSt - new data structure - size changed from 10 to 64 bytes    i         ` §џ              pDword               ` §џ                 Execute            §џ                 Done            §џ
              Busy            §џ              Error            §џ              ErrorID           §џ              DriveAddress                          ST_DriveAddress   §џ                 Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_READPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter    §џ           	   nParatype               _E_ParameterType ` §џ              dwValue         ` §џ              bValue          ` §џ              bStarted          ` §џ           	   fbTrigger                 R_TRIG ` §џ                 Enable            §џ           B    ParameterNumber           §џ           B    ReadMode           ReadMode_Once    
   E_ReadMode   §џ	           Beckhoff proprietary input       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    Value                        §џ           B       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_READPARAMETERSET           TriggerExecute                 R_TRIG    §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           	   fbAdsRead                          ADSREAD    §џ              SizeofPayloadData            §џ                 Execute            §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              	   Parameter         E                                                                           ST_AxisParameterSet  §џ              Axis                AXIS_REF  §џ                   6ЄУS      џџџџ           MC_READSTATUS               Enable            §џ           B       Valid            §џ
           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E 	   ErrorStop            §џ           B    Disabled            §џ           B    Stopping            §џ           B 
   StandStill            §џ           B    DiscreteMotion            §џ           B    ContinuousMotion            §џ           B    SynchronizedMotion            §џ           E    Homing            §џ           E    ConstantVelocity            §џ           V    Accelerating            §џ           V    Decelerating            §џ           V    Status        1                                                       ST_AxisStatus   §џ           V       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_READSTOPINFO           TriggerExecute                 R_TRIG    §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              stStopInfoRequest                _ST_TcNC_StopInfoRequest    §џ              stStopInfoResponse                _ST_TcNC_StopInfoResponse    §џ              fbAdsReadWrite                            ADSRDWRT    §џ                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ           E       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    StopDistance                        §џ       $    distance required to stop the axis    StopTime                        §џ            time required to stop the axis       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_RESET           ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              LastExecutionResult                  _ST_FunctionBlockResults    §џ           
   fbAdsWrite                                _TcMC_ADSWRITE ` §џ           2010-05-31 KSt    fbOnTrigger                 R_TRIG ` §џ                 Execute            §џ           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           B       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_SETACCEPTBLOCKEDDRIVESIGNAL               Enable            §џ                 MC_SetAcceptBlockedDriveSignal                                Axis                AXIS_REF  §џ                   6ЄУS      џџџџ           MC_SETENCODERSCALINGFACTOR           ADSbusy             §џ              stSetEncoderSaclingFactor                  _ST_TcNC_SetEncoderSaclingFactor    §џ               iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ!           
   fbAdsWrite                          ADSWRITE    §џ"              fbOnTrigger                 R_TRIG ` §џ&                 Execute            §џ	           B    ScalingFactor                        §џ
           B    Mode               E_SetScalingFactorMode   §џ           E    Options                ST_SetEncoderScalingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_SETOVERRIDE               Enable            §џ           B 	   VelFactor          №?   1.0      №?   §џ           1.0 = 100% 	   AccFactor          №?   1.0      №?   §џ           1.0 = 100% 
   JerkFactor          №?   1.0      №?   §џ           1.0 = 100%       Enabled            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ                   6ЄУS      џџџџ           MC_SETPOSITION           ADSbusy             §џ)              stSetPos                   _ST_TcNC_SetPosOnTheFly    §џ*              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ+           
   fbAdsWrite                          ADSWRITE    §џ,              fbOnTrigger                 R_TRIG ` §џ0                 Execute            §џ           B    Position                        §џ           B    Mode            §џ           E    Options                 ST_SetPositionOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_STOP     
      LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ               MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ!              ReleaseLock                          ADSWRITE    §џ"              CmdNo            §џ#              AxisMotionCommandsLocked             §џ$              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ%           
   NoJobTimer                    TON    §џ&              fbOnTrigger                 R_TRIG ` §џ*              CounterMotionCommandsLocked         ` §џ+                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ        !   MC_TABLEBASEDPOSITIONCOMPENSATION           InternalEnable             §џ#            trick for internal FB handling    state            §џ$              GetThisTaskIndex                GETCURTASKINDEX    §џ%           	   CycleTime                         §џ&           task cycle time [s]    fbCalcPositionCorrection                                    !   _FB_PositionCorrectionTableLookup    §џ'       4    based on old 'FB_PositionCompensation' in TcNc.lib    fbFeedPositionCorrection                                    MC_PositionCorrectionLimiter    §џ(       N    s.TcMC2.lib (original based on old 'FB_WritePositionCorrection' in TcNc.lib)    CalcPosCorrOut                    ST_McOutputs    §џ)              FeedPosCorrOut                    ST_McOutputs    §џ*              InternalAcceleration                         §џ+       E    input of FB 'MC_PositionCorrectionLimiter': 'Acceleration' [mm/s^2]    InternalCorrectionValue                         §џ,       M    output of FB 'MC_PositionCorrectionLimiter': 'PositionCorrectionValue' [mm]    InternalLimitingActive             §џ-       ?    output of FB 'MC_PositionCorrectionLimiter': 'Limiting' [0/1]       Enable            §џ       )    rising edge triggers initialize routine    pTable              #   ST_PositionCompensationTableElement        §џ       R    pointer to equidistant table with strictly monotonous increasing position values 	   TableSize           §џ       +    size of data in bytes related to 'pTable'    TableParameter                %   ST_PositionCompensationTableParameter   §џ       1    position compensation table parameter structure    Ramp                        §џ           velocity limit for feeded position compensation (constant velocity and linear position sub profile for position compensation) [mm/s] (default:=0.0)    DisableMode               E_DisableMode   §џ       S    disable mode defines whow to react in case of disabling: (0)=HOLD, (1)=RESET, ...    Options               ST_PositionCompensationOptions   §џ       $    optional parameters (NOT USED YET)       Enabled            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              CurrentCorrection                        §џ       /    current actual position correction value [mm]    Limiting            §џ        >    function block is currently limiting the Position Correction       Axis                Axis_Ref  §џ                   6ЄУS      џџџџ           MC_TOUCHPROBE           ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              TouchProbeValid   	                         §џ            valid state of probes 1..4    TouchProbeActive   	                         §џ!       !    activation state of probes 1..4    TouchProbeValue   	                                      §џ"       $    last recorded value of probes 1..4    TouchProbeModuloValue   	                                      §џ#       +    last recorded modulo value of probes 1..4    TouchProbeInactiveCounter   	                         §џ$       O    number of cycles where the probes 1..4 where inactive (activation monitoring)    OLDADSINTERFACE         ` §џ(       A    temporary flag to test old and new NC ADS touch probe interface 
   fbADSwrite                          ADSWRITE ` §џ+              fbAdsReadValid                          ADSREAD ` §џ,              fbAdsReadValue                          ADSREAD ` §џ-              fbAdsReadState                          ADSREAD ` §џ.              fbAdsReadModulo                          ADSREAD ` §џ/              TimerAdsReadState                    TON ` §џ0              RtrigPlcEvent                 R_TRIG ` §џ1              FtrigPlcEvent                 F_TRIG ` §џ2              fbOnTrigger                 R_TRIG ` §џ3              LatchID         ` §џ4              Restart          ` §џ5       H    restart probe sequence when the trigger was outside the defined window    InWindow          ` §џ6       *    probe value is inside the defined window    ModuloFactor                      ` §џ7       &    axis' modulo factor read from the NC    InitDone          ` §џ8       %    initialization on start-up finished    IndexOffset         ` §џ9              i         ` §џ:                 Execute            §џ           B 
   WindowOnly            §џ           E    FirstPosition                        §џ           E    LastPosition                        §џ           E       Done            §џ           B    Busy            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E    RecordedPosition                        §џ           B       Axis                AXIS_REF  §џ           B    TriggerInput                       TRIGGER_REF  §џ           B         6ЄУS      џџџџ           MC_TOUCHPROBE_V2_00            ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              ExternalLatchValid             §џ              TouchProbeValid   	                         §џ           valid state of probes 1..4    TouchProbeActive   	                         §џ       !    activation state of probes 1..4    TouchProbeValue   	                                      §џ       $    last recorded value of probes 1..4    TouchProbeModuloValue   	                                      §џ       +    last recorded modulo value of probes 1..4    TouchProbeCounter   	                         §џ       ,    last recorded value counter of probes 1..4    TouchProbeInactiveCounter   	                         §џ       O    number of cycles where the probes 1..4 where inactive (activation monitoring)    stTouchProbeActivation                   _ST_TcNc_TouchProbeActivation    §џ               stTouchProbeStatusRequest                 _ST_TcNc_TouchProbeStatusRequest    §џ!              stTouchProbeStatusResponse                      !   _ST_TcNc_TouchProbeStatusResponse    §џ"              stTouchProbeDeactivation                 _ST_TcNc_TouchProbeDeactivation    §џ#              LastTouchProbeValue   	                                   ` §џ'       $    last recorded value of probes 1..4    LastTouchProbeCounter   	                      ` §џ(       ,    last recorded value counter of probes 1..4 
   fbADSwrite                          ADSWRITE ` §џ)              fbAdsReadValid                          ADSREAD ` §џ*              fbAdsReadValue                          ADSREAD ` §џ+              fbAdsReadState                          ADSREAD ` §џ,              fbAdsReadModulo                          ADSREAD ` §џ-              fbAdsReadLatchStatus                          
   ADSRDWRTEX ` §џ.              TimerAdsReadState                    TON ` §џ/              RtrigPlcEvent                 R_TRIG ` §џ0              FtrigPlcEvent                 F_TRIG ` §џ1              fbOnTrigger                 R_TRIG ` §џ2              Restart          ` §џ3       H    restart probe sequence when the trigger was outside the defined window    InWindow          ` §џ4       *    probe value is inside the defined window    ModuloFactor                      ` §џ5       &    axis' modulo factor read from the NC    InitDone          ` §џ6       %    initialization on start-up finished    IndexOffset         ` §џ7              iTriggerInput                      TRIGGER_REF ` §џ8           B    i         ` §џ9                 Execute            §џ           B 
   WindowOnly            §џ	           E    FirstPosition                        §џ
           E    LastPosition                        §џ           E       Done            §џ           B    Busy            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E    RecordedPosition                        §џ           B    RecordedData                  MC_TouchProbeRecordedData   §џ           V       Axis                AXIS_REF  §џ           B    TriggerInput                       TRIGGER_REF  §џ           B         6ЄУS      џџџџ           MC_WRITEBOOLPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter    §џ           	   nParatype               _E_ParameterType ` §џ              dwValue         ` §џ              lrValue                      ` §џ           	   fbTrigger                 R_TRIG ` §џ                 Execute            §џ           B    ParameterNumber           §џ           B    Value            §џ	           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ           MC_WRITEPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter    §џ           	   nParatype               _E_ParameterType ` §џ              dwValue         ` §џ              bValue          ` §џ           	   fbTrigger                 R_TRIG ` §џ                 Execute            §џ           B    ParameterNumber           §џ           B    Value                        §џ	           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         6ЄУS      џџџџ    q   C:\TWINCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         фљ66     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             фљ66     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             фљ66     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             фљ66     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         фљ66     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             фљ66     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     фљ66     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         фљ66     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         фљ66     џџџџ           LEN               STR               §џ                 LEN                                     фљ66     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         фљ66     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             фљ66     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         фљ66     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         фљ66     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       фљ66     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       фљ66     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       фљ66     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             фљ66     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             фљ66     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             фљ66     џџџџ        c:\documents and settings\administrator\desktop\hobbit\programm\libs\TcpIp.lib @                                                                                          F_GETVERSIONTCPIP               nVersionElement           §џ                 F_GetVersionTcpIp                                     З­8U      џџџџ           FB_SOCKETACCEPT        
   fbAdsRdWrt       _    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_ACCEPT )              	   T_AmsPort                           ADSRDWRT ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              response                ST_TcIpConnSvrResponse ` §џ              request                ST_SockAddr ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system	   hListener              	   T_HSOCKET   §џ       x    Listener handle identifying a socket that has been placed in a listening state with the FB_SocketListen function block    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.    	   bAccepted            §џ
       ;    TRUE = new connection is made. FALSE = no new connection.    bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET   §џ       V   This returned value is a handle for the socket on which the actual connection is made.            З­8U     џџџџ           FB_SOCKETCLOSE        
   fbAdsWrite       V    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CLOSEBYHDL, SRCADDR := 0, LEN := 0 )              	   T_AmsPort                              ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       4    Local or remote client or listener socket to close.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       З­8U     џџџџ           FB_SOCKETCLOSEALL        
   fbAdsWrite       y    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_CLOSEALL, SRCADDR := 0, LEN := 0 )              	   T_AmsPort                                 ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ	              bError            §џ
              nErrId           §џ                       З­8U     џџџџ           FB_SOCKETCONNECT        
   fbAdsRdWrt       _    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_CONNECT )              	   T_AmsPort                           ADSRDWRT ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              request                ST_SockAddr ` §џ              response                ST_TcIpConnSvrResponse ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   sRemoteHost               §џ       X    Remote (server) address. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       .    Remote (server) Internet Protocol (IP) port.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ШЏ     §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET   §џ       V   This returned value is a handle for the socket on which the actual connection is made.            З­8U     џџџџ           FB_SOCKETLISTEN        
   fbAdsRdWrt       ]    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS :=TCPADSCONLST_IOF_LISTEN )              	   T_AmsPort                           ADSRDWRT ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              request                ST_SockAddr ` §џ              response                ST_TcIpConnSvrResponse ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system
   sLocalHost               §џ       W    Local (server) address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           §џ       -    Local (server) Internet Protocol (IP) port.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ           	   hListener              	   T_HSOCKET   §џ       _   This returned value is a handle for the listener socket on which the actual connection is made.            З­8U     џџџџ           FB_SOCKETRECEIVE           fbAdsReadEx       <    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_RECVBYHDL )              	   T_AmsPort                    	   ADSREADEX ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       3    Contains the max. number of bytes to be received.    pDest           §џ       ;    Contains the address of the buffer for the received data.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ           	   nRecBytes           §џ       2    Contains the number of bytes currently received.             З­8U     џџџџ           FB_SOCKETSEND        
   fbAdsWrite       >    ( PORT :=  AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_SENDBYHDL )              	   T_AmsPort                      ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       *    Contains the number of bytes to be send.    pSrc           §џ       D    Contains the address of the buffer containing the data to be send.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       З­8U     џџџџ           FB_SOCKETUDPADDMULTICASTADDRESS        
   fbAdsWrite       E    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_MULTICAST_ADDBYHDL )              	   T_AmsPort                      ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       )    udp socket to add multicast address  to.   sMulticastAddr               §џ          Multicast address to add   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       З­8U     џџџџ           FB_SOCKETUDPCREATE        
   fbAdsRdWrt       ^    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS :=TCPADSCONLST_IOF_UDPBIND )              	   T_AmsPort                           ADSRDWRT ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              request                ST_SockAddr ` §џ              response                ST_TcIpConnSvrResponse ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system
   sLocalHost               §џ       N    Local address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           §џ	       $    Local Internet Protocol (IP) port.    bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET   §џ       ?   This returned value is a handle for the bind (reserved) socket.            З­8U     џџџџ            FB_SOCKETUDPDROPMULTICASTADDRESS        
   fbAdsWrite       F    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_MULTICAST_DROPBYHDL )              	   T_AmsPort         	             ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       .    udp socket to remove multicast address  from.   sMulticastAddr               §џ          Multicast address to remove   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       З­8U     џџџџ           FB_SOCKETUDPRECEIVEFROM           fbAdsReadEx       @    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_RECVFROMBYHDL )              	   T_AmsPort                    	   ADSREADEX ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              buffer                ST_TcIpConnSvrUdpBuffer ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       3    Contains the max. number of bytes to be received.    pDest           §џ       ;    Contains the address of the buffer for the received data.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              sRemoteHost               §џ       p    Remote address from which the data was received. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       G    Remote Internet Protocol (IP) port  from which the data was received. 	   nRecBytes           §џ       2    Contains the number of bytes currently received.             З­8U     џџџџ           FB_SOCKETUDPSENDTO        
   fbAdsWrite       @    ( PORT :=  AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_SENDTOBYHDL )              	   T_AmsPort                      ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              buffer                ST_TcIpConnSvrUdpBuffer ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       ?    Handle for the socket on which the actual connection is made.    sRemoteHost               §џ       d    Remote address of the target socket. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       :    Remote Internet Protocol (IP) port of the target socket.    cbLen           §џ       *    Contains the number of bytes to be send.    pSrc           §џ	       D    Contains the address of the buffer containing the data to be send.    bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       З­8U     џџџџ    Љ   c:\documents and settings\administrator\desktop\hobbit\programm\libs\TcSocketHelper.lib @                                                                                          F_CREATESERVERHND            	   sSrvNetID           ''    
   T_AmsNetID   §џ       Z    The network address of the TcpIpServer.exe. If empty string=>server runs on local system 
   sLocalHost               §џ	       W    Local (server) address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           §џ
       -    Local (server) Internet Protocol (IP) port.    nMode          §џ           Listen mode flags    bEnable           §џ       -    TRUE opens and FALSE closes listener socket       F_CreateServerHnd                                hServer                           	   T_HSERVER  §џ           TCP/IP plc server handle         З­8U     џџџџ           F_GETVERSIONTCSOCKETHELPER               nVersionElement           §џ                 F_GetVersionTcSocketHelper                                     З­8U      џџџџ           FB_CLIENTSERVERCONNECTION           eStep               E_ConnEstablishState ` §џ           Internal state 	   fbConnect                            FB_SocketConnect ` §џ              fbClose        
                FB_SocketClose ` §џ              timer           ( PT := T#0s )                TON ` §џ       [    This timer specifies when open is retried. At the first time open is retried immediatelly.   fallingEdge                 F_TRIG ` §џ           
   bConnected          ` §џ           Internal flag    sHSocket    Q       Q  ` §џ              	   sSrvNetID           ''    
   T_AmsNetID   §џ       Z    The network address of the TcpIpServer.exe. If empty string=>server runs on local system    nMode           §џ           OR CONNECT_MODE_ENABLEDBG    sRemoteHost               §џ       X    Remote (server) address. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       .    Remote (server) Internet Protocol (IP) port.    bEnable            §џ       4    TRUE = connect, FALSE = disconnect or don't connect
   tReconnect    ШЏ     §џ	       /    This timer specifies when connect is retried.       bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET   §џ           Socket handle    eState           eSOCKET_DISCONNECTED       E_SocketConnectionState   §џ           Connection state             З­8U      џџџџ           FB_SERVERCLIENTCONNECTION     	   
   risingEdge                 R_TRIG ` §џ              fallingEdge                 F_TRIG ` §џ              timer                    TON ` §џ       -    This timer specifies when accept is retried    timer2                    TON ` §џ       -    This timer specifies when listen is retried 
   bConnected          ` §џ       7    Internal flag, TRUE = Connection successfull accepted 
   bListening          ` §џ       T    Internal flat, TRUE = Listener socket is opened, FALSE = Listener socket is closed    eStep               E_ConnEstablishState ` §џ           Internal state    pLocked         ` §џ              sHSocket    Q       Q  ` §џ                 eMode           eACCEPT_ALL       E_SocketAcceptMode   §џ           Connection accept flags    sRemoteHost               §џ       X    Remote (client) address. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ	       .    Remote (client) Internet Protocol (IP) port.    bEnable            §џ
       $    TRUE = connect, FALSE = disconnect.
   tReconnect    ш     §џ       .    This timer specifies when accept is retried.       bBusy            §џ              bError            §џ              nErrID           §џ              hSocket              	   T_HSOCKET   §џ           Socket handle    eState           eSOCKET_DISCONNECTED       E_SocketConnectionState   §џ           Connection state       hServer                           	   T_HSERVER  §џ           TCP/IP plc server handle         З­8U      џџџџ           FB_SOCKETLISTENEX           nStep         ` §џ           
   fbAdsRdWrt                            ADSRDWRT ` §џ           
   RisingEdge                 R_TRIG ` §џ              request                ST_SockAddr ` §џ              response                ST_TcIpConnSvrResponse ` §џ           
   fbCloseAll        	               FB_SocketCloseAll ` §џ              TCPADSCONLST_IOF_GETHNDLBYADDR        ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpServer.exe. If empty string=>server runs on local system
   sLocalHost               §џ       W    Local (server) address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           §џ       -    Local (server) Internet Protocol (IP) port.    nMode          §џ              bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ           	   hListener              	   T_HSOCKET   §џ       _   This returned value is a handle for the listener socket on which the actual connection is made.            З­8U     џџџџ           FB_SOCKETRECEIVEEX        	   fbReceive                           FB_SocketReceive ` §џ           
   RisingEdge                 R_TRIG ` §џ              timer                    FB_ThrottleTimer ` §џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcIpConnSvr.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       3    Contains the max. number of bytes to be received.    pDest           §џ       ;    Contains the address OF the buffer FOR the received data.    bExecute            §џ       F    FUNCTION block execution is triggered BY a rising edge AT this input.   tTimeout         §џ	       3    States the time before the function is cancelled.    throttleTimes       f    T#0s, T#10ms, T#20ms, T#40ms, T#60ms, T#80ms, T#100ms, T#200ms, T#400ms, T#600ms, T#800ms, T#1s, T#2s       T_ThrottleTimes   §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ           	   nRecBytes           §џ       2    Contains the number of bytes currently received.             З­8U     џџџџ           FB_THROTTLETIMER           timer                    TON ` §џ              selector         ` §џ                 bIn            §џ       ?    Starts timer with rising edge, resets timer with falling edge    tT               T_ThrottleTimes   §џ                 bOut            §џ              tElapsed           §џ	                       З­8U      џџџџ           HSOCKET_TO_STRING               hSocket              	   T_HSOCKET   §џ                 HSOCKET_TO_STRING    Q       Q                              З­8U      џџџџ    Д   c:\documents and settings\administrator\desktop\hobbit\programm\libs\Hella.Automation.Tools-00.lib @                                                                                          F_BITARR_TO_USINT           byValue            §џ                 bBitArr   	                          §џ          Eingabewert      F_BitArr_To_USINT                                     З­8U      џџџџ           F_DEG_TO_RAD               angle                        §џ                 F_DEG_TO_RAD                                                  З­8U      џџџџ           F_INBORDERS_INT               iVar           §џ          Eingabewert   iMin           §џ          Minimalwert   iMax           §џ          Maximalwert      F_InBorders_INT                                      З­8U      џџџџ           F_INBORDERS_REAL               rVar            §џ          Eingabewert   rMin            §џ          Minimalwert   rMax            §џ          Maximalwert      F_InBorders_REAL                                      З­8U      џџџџ           F_INCH_TO_MM               rIN            §џ       
   Inch Input      F_Inch_To_mm                                      З­8U      џџџџ           F_LINFKT               X            §џ          Eingangswert   X1            §џ          Minimaler Eingangswert   X2            §џ          Maximaler Eingangswert   Y1            §џ          Minimaler Ausgangswert   Y2            §џ          Maximaler Ausgangswert      F_LinFkt                                      З­8U      џџџџ           F_MM_TO_INCH               rIN            §џ          mm Input      F_mm_To_Inch                                      З­8U      џџџџ           F_RAD_TO_DEG               angle                        §џ                 F_RAD_TO_DEG                                                  З­8U      џџџџ           F_RESULTRESET                   F_ResultReset                                result                	   ST_Result  §џ                   З­8U      џџџџ           F_ROUNDREAL           iValue            §џ           
   rDigIntern             §џ                 rVar            §џ          Eingabewert   iDigits           §џ          Kommastellen      F_RoundREAL                                      З­8U      џџџџ           F_SPLITSTRING           _pos            §џ
              _i            §џ              _pt     Q       Q          §џ              _length            §џ                 p           §џ           pointer to target array    code               T_MaxString   §џ           	   delimiter    Q      /Q    §џ              tarElCnt           §џ           count of items in array    sizeLine           §џ       4    size of each string in array. normally 80 character      F_SplitString               	   ST_Result                             З­8U      џџџџ           F_USINT_TO_BITARR           byValue            §џ           	   Index7001                            nIn           §џ          Eingabewert 0- 255      F_USINT_To_BitArr   	                                                    З­8U      џџџџ           FB_BLINK           TON1                    TON    §џ
              TOF1                    TOF    §џ                 bIn            §џ          Freigabe Blinker   tTime    ш     §џ          Blink Interval      bOut            §џ                       З­8U      џџџџ           FB_CHECKPARITY           bInBit   	                           §џ	              iByte   	                          §џ
              i            §џ           
   iParityVal            §џ              iParityModulo            §џ              	   CheckByte           §џ       )   Zu мberprќfendes Byte fќr Paritфtsprќfung   
   bParityBit            §џ          Paritфtsbit            З­8U      џџџџ           FB_CLEARFILEBYTIME        
   _fbGetTime                 GETSYSTEMTIME    §џ          timestamp reader   _FindFileList                                FB_EnumFindFileList    §џ          list Files in directory   _arrFileList   	  ў                         ST_FindFileEntry            §џ       '   internal storage for files in directory   _nStepClear            §џ          step counter for file-deletion   _CurTime            §џ          storage for current time   _CreationTime            §џ       !   storage for current creation time   _delTime            §џ          time of file to delete   _FileDelete        
                FB_FileDelete    §џ          fb for file-deletion   _TON                    TON    §џ       0   timer to wait for next check-> hardcoded 6 hours	   _countDel            §џ       '   counter to loop through files in folder   _Path    Q       Q     §џ           	   _FileTime             
   T_FileTime    §џ       "   temporary storage for current time   i            §џ          loop counter   	   sPathname    Q       Q    §џ              sNetID    Q       Q    §џ              nStorageTime           §џ                 nErrId           §џ              bError            §џ	                       З­8U      џџџџ        
   FB_LOGFILE           _buffer   	  ў                 	   LogStruct         ` §џ          messagebuffer   _counter         ` §џ       #   counts number of messages in buffer   _Step         ` §џ          step counter
   _fbGetTime                 GETSYSTEMTIME ` §џ          timestamp reader	   _FileTime             
   T_FileTime ` §џ       "   temporary storage for current time	   _FileOpen                             FB_FileOpen ` §џ       %   to open file and create a file-handle
   _LogString               T_MaxString ` §џ       &   temporary storage for message to write
   _FileClose                      FB_FileClose ` §џ          close file again
   _WriteLine        	               FB_FilePuts ` §џ          Write line to file   i         ` §џ          loop counter	   _Pathname    Q       Q  ` §џ       4   internal storage for pathname, necessary to add date   _nExtension         ` §џ       (   position where the file-extension begins   _datum    Q       Q  ` §џ          current date added to file-name   _Path    Q       Q  ` §џ          path to search for files   _sTmp    Q       Q  ` §џ              sTest    Q       Q  ` §џ               fbRTC                      FB_RTC ` §џ!                 sNetID    Q       Q    §џ       ?   Net-ID der Steuerung auf der das Logging ausgefќhrt werden soll	   sPathname    Q       Q    §џ       ~   Pfad des Logfiles Z.B. C:\Windows\temp\logging.txt. Beim Logging wird automatisch das Datum vor der Dateierweiterung eingefќgt   sMessage               T_MaxString   §џ          Meldung die geloggt werden soll   nStoragetime          §џ       c   Behaltezeit in Tagen -> ALLE Dateien die фlter sind werden automatisch aus dem Log-Ordner gelіschen      bBufferOverrun            §џ       9   der interne Buffer fќr die Log-Meldungen ist aufgebraucht   bError            §џ          Fehler beim Schreiben   nErrId           §џ          Fehlernummer            З­8U      џџџџ           FB_RTC           TON_Sync                    TON    §џ              fbRTC                             RTC_EX2    §џ          real-time clock   SyncTime                   
   NT_GetTime    §џ              FMN_Sync                 F_TRIG    §џ                 sNetID    Q       Q    §џ           	   tSyncTime    '     §џ              
   bValid_RTC            §џ              timeRTC                   
   TimeStruct   §џ                       З­8U      џџџџ        
   FB_STOPUHR           fbTimer                    TON    §џ
              fbRtrigStart                 R_TRIG    §џ              fbFtrigStart                 F_TRIG    §џ                 bEnable            §џ       O   Die positive Flanke setzt die Zeit zurќck auf 0 und startet die Zeit wieder neu   bReset            §џ          Zeit rќcksetzen      tET           §џ       S   Gibt die Zeit an die seit der positiven Flanke von bEnable vergangen ist maximal 1h            З­8U      џџџџ           FB_TAKT           TON1                    TON    §џ              TOF1                    TOF    §џ              FMN1                 F_TRIG    §џ              FMP1                 R_TRIG    §џ                 bIn            §џ          Starten des Taktes   tOnTime    ш     §џ       $   ZEit fќr die das Signal auf TRUE ist   tOffTime    ш     §џ       %   Zeit fќr die das Signal auf FALSE ist      bOut            §џ          rechteck Ausgangssignal
   bOut_RTrig            §џ          Steigende Flanke des Signals
   bOut_FTrig            §џ          Fallende Flanke des Signals            З­8U      џџџџ           FB_TIMER           fbTimer                    TON    §џ	                 Reset            §џ          Zeit rќcksetzen      tET           §џ           abgelaufene zeit             З­8U      џџџџ    o   C:\TWINCAT\PLC\LIB\TcSUPS.lib @                                                                                          F_GETVERSIONTCSUPS               nVersionElement           §џ       d   
	Possible nVersionElement parameter:
	1	:	major number
	2	:	minor number
	3	:	revision number
      F_GetVersionTcSUPS                                     ЊiЇK      џџџџ           FB_NT_QUICKSHUTDOWN        
   ADSWRTCTL1                       	   ADSWRTCTL ` §џ           
   RisingEdge                 R_TRIG ` §џ              DELAY    џџџџ ` §џ                 NETID            
   T_AmsNetId   §џ              START            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ	              ERRID           §џ
                       ЊiЇK     џџџџ           FB_S_UPS           fbWritePersistentData        	               FB_WritePersistentData ` §џ              fbNT_QuickShutdown        	               FB_NT_QuickShutdown ` §џ              dwTemp         ` §џ              WaitForOffTimer                    TON ` §џ              bFirstCycle         ` §џ              bPowerOKInFirstCycle          ` §џ                 sNetID           ''    
   T_AmsNetId   §џ           '' = local netid    iPLCPort    !     §џ       0    PLC Runtime System for writing persistent data    iUPSPort    Ј     §џ       5    Port for reading Power State of UPS, dafault 16#4A8    tTimeout         §џ           ADS Timeout    eUpsMode           eSUPS_WrPersistData_Shutdown       E_S_UPS_Mode   §џ       8    UPS mode (w/wo writing persistent data, w/wo shutdown)    ePersistentMode           SPDM_2PASS       E_PersistentMode   §џ       "    mode for writing persistent data    tRecoverTime    '     §џ	       l    ON time to recover from short power failure in mode eSUPS_WrPersistData_NoShutdown/eSUPS_CheckPowerStatus        bPowerFailDetect            §џ       %    TRUE while powerfailure is detected    eState               E_S_UPS_State   §џ           current ups state             ЊiЇK     џџџџ    u   C:\TWINCAT\PLC\LIB\TcXmlDataSrv.lib @                                                                                          F_GETVERSIONTCXMLDATASRV               nVersionElement           §џ                 F_GetVersionTcXmlDataSrv                                     З­8U      џџџџ           FB_SYMNAMEBYADDR        	   fbAdsRWEx                          
   ADSRDWRTEX    §џ           
   writeEntry                ST_SymAddrInfo    §џ           
   RisingEdge                 R_TRIG    §џ                 pSymAddr           §џ           	   cbSymSize           §џ              bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ	              bError            §џ
              nErrId           §џ              sSymName               T_MaxString   §џ                       З­8U      џџџџ           FB_XMLSRVREAD     
      handle            §џ              stOpenEntry        
                ST_XmlSrvOpenEntry    §џ              cbOpenEntry            §џ              pCur            §џ              fbReadSymName                         FB_SymNameByAddr    §џ           	   fbAdsRWEx   	                                
   ADSRDWRTEX            §џ              cbToRead            §џ              cbLeft            §џ              nStep            §џ           
   RisingEdge                 R_TRIG    §џ           	      sNetId            
   T_AmsNetId   §џ           ams net id    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: Open generic file    nMode           §џ              pSymAddr           §џ           	   cbSymSize           §џ           	   sFilePath               T_MaxString   §џ              sXPath               T_MaxString   §џ	              bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout    `ъ     §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       З­8U     џџџџ           FB_XMLSRVREADBYNAME           handle            §џ              stOpenEntry        
                ST_XmlSrvOpenEntry    §џ              cbOpenEntry            §џ              pCur            §џ           	   fbAdsRWEx                          
   ADSRDWRTEX    §џ              nStep            §џ           
   RisingEdge                 R_TRIG    §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: Open generic file    nMode           §џ              sSymName               T_MaxString   §џ           	   sFilePath               T_MaxString   §џ              sXPath               T_MaxString   §џ              bExecute            §џ	       F    Function block execution is triggered by a rising edge at this input.   tTimeout    `ъ     §џ
       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       З­8U     џџџџ           FB_XMLSRVWRITE     
      handle            §џ              stOpenEntry        
                ST_XmlSrvOpenEntry    §џ              cbOpenEntry            §џ              pCur            §џ              fbReadSymName                         FB_SymNameByAddr    §џ           	   fbAdsRWEx   	                                
   ADSRDWRTEX            §џ           	   cbToWrite            §џ              cbLeft            §џ              nStep            §џ           
   RisingEdge                 R_TRIG    §џ           	      sNetId            
   T_AmsNetId   §џ           ams net id    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: Open generic file    nMode           §џ              pSymAddr           §џ           	   cbSymSize           §џ           	   sFilePath               T_MaxString   §џ              sXPath               T_MaxString   §џ	              bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout    `ъ     §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       З­8U     џџџџ           FB_XMLSRVWRITEBYNAME           handle            §џ              stOpenEntry        
                ST_XmlSrvOpenEntry    §џ              cbOpenEntry            §џ              pCur            §џ           	   fbAdsRWEx                          
   ADSRDWRTEX    §џ              nStep            §џ           
   RisingEdge                 R_TRIG    §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: Open generic file    nMode           §џ              sSymName               T_MaxString   §џ           	   sFilePath               T_MaxString   §џ              sXPath               T_MaxString   §џ              bExecute            §џ	       F    Function block execution is triggered by a rising edge at this input.   tTimeout    `ъ     §џ
       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       З­8U     џџџџ    R    @                                                                                V          F_ADSLOGERROR               sPrefix               N        O    Debug message prefix string (allows the identification of log message source)    nErrID           N            Error code       F_ADSLOGERROR                                     ^M7U  @    џџџџ           F_ADSLOGSTRING               sPrefix               O        O    Debug message prefix string (allows the identification of log message source)    sMsg               T_MaxString   O            Message string       F_ADSLOGSTRING                                     ^M7U  @    џџџџ           F_CALCVELOCITY           PosDiff   	                                      : 
           	   Index7001                            Position   	                                     :               Velocity                        :                  F_CalcVelocity   	                                                         Axis    	                    Axis_Ref          :                    ^M7U  @    џџџџ           F_CHECKATCANDLEPOS           PositionWindow    щ?   0.8щ?    *                     F_CheckAtCandlePos                                Axis    	                    Axis_Ref          *                   ^M7U  @    џџџџ           F_CHECKATFINALGRASPFROMFLOORPOS           PositionWindow          р?   0.5      р?    %                      F_CheckAtFinalGraspFromFloorPos                                Axis    	                    Axis_Ref          %                    ^M7U  @    џџџџ           F_CHECKATFINALGRASPTRAYPOSITION           PositionWindow          №?   1      №?    &                      F_CheckAtFinalGraspTrayPosition                                Axis    	                    Axis_Ref          &                    ^M7U  @    џџџџ        $   F_CHECKATFINALGRASPTURNTABLEPOSITION           PositionWindow          №?   1      №?    '                   $   F_CheckAtFinalGraspTurntablePosition                                Axis    	                    Axis_Ref          '                    ^M7U  @    џџџџ        %   F_CHECKATFINALPUTOBJECTTOTRAYPOSITION           PositionWindow          №?   1      №?    (                   %   F_CheckAtFinalPutObjecttoTrayPosition                                Axis    	                    Axis_Ref          (                    ^M7U  @    џџџџ        $   F_CHECKATFINALSTORETURNTABLEPOSITION           PositionWindow          №?   1      №?    )                   $   F_CheckAtFinalStoreTurntablePosition                                Axis    	                    Axis_Ref          )                    ^M7U  @    џџџџ           F_CHECKATHOMEPOSITION           PositionWindow    щ?   0.8щ?    *                      F_CheckAtHomePosition                                Axis    	                    Axis_Ref          *                    ^M7U  @    џџџџ           F_CHECKATLEARNINGPOSITION           PositionWindow          №?   1      №?    +                      F_CheckAtLearningPosition                                Axis    	                    Axis_Ref          +                    ^M7U  @    џџџџ           F_CHECKATMOVEARMOUTPOS           PositionWindow           @   2       @    ,                      F_CheckAtMoveArmOutPos                                Axis    	                    Axis_Ref          ,                    ^M7U  @    џџџџ           F_CHECKATMOVEARMOUTPOS2           PositionWindow           @   2       @    %                     F_CheckAtMoveArmOutPos2                                Axis    	                    Axis_Ref          %                   ^M7U  @    џџџџ           F_CHECKATMOVEARMOUTPOS3           PositionWindow           @   2       @    $                     F_CheckAtMoveArmOutPos3                                Axis    	                    Axis_Ref          $                   ^M7U  @    џџџџ           F_CHECKATPREGRASPFROMFLOORPOS           PositionWindow           @   2       @    -                      F_CheckAtPreGraspFromFloorPos                                Axis    	                    Axis_Ref          -                    ^M7U  @    џџџџ           F_CHECKATPREGRASPFROMTABLEPOS           PositionWindow           @   2       @    #                     F_CheckAtPreGraspFromTablePos                                Axis    	                    Axis_Ref          #                   ^M7U  @    џџџџ           F_CHECKATPREGRASPTRAYPOS1           PositionWindow           @   2       @    .                      F_CheckAtPregraspTrayPos1                                Axis    	                    Axis_Ref          .                    ^M7U  @    џџџџ           F_CHECKATPREGRASPTRAYPOS2           PositionWindow           @   2       @    /                      F_CheckAtPregraspTrayPos2                                Axis    	                    Axis_Ref          /                    ^M7U  @    џџџџ           F_CHECKATPREGRASPTRAYPOS3           PositionWindow           @   2       @    0                      F_CheckAtPregraspTrayPos3                                Axis    	                    Axis_Ref          0                    ^M7U  @    џџџџ        #   F_CHECKATPREGRASPTURNTABLEPOSITION1           PositionWindow          №?   1      №?    1                   #   F_CheckAtPregraspTurntablePosition1                                Axis    	                    Axis_Ref          1                    ^M7U  @    џџџџ        #   F_CHECKATPREGRASPTURNTABLEPOSITION2           PositionWindow          №?   1      №?    2                   #   F_CheckAtPregraspTurntablePosition2                                Axis    	                    Axis_Ref          2                    ^M7U  @    џџџџ           F_CHECKATPREPUTOBJECTTOTRAYPOS1           PositionWindow           @   2       @    3                      F_CheckAtPrePutObjectToTrayPos1                                Axis    	                    Axis_Ref          3                    ^M7U  @    џџџџ           F_CHECKATPREPUTOBJECTTOTRAYPOS2           PositionWindow           @   2       @    4                      F_CheckAtPrePutObjectToTrayPos2                                Axis    	                    Axis_Ref          4                    ^M7U  @    џџџџ           F_CHECKATPREPUTOBJECTTOTRAYPOS3           PositionWindow           @   2       @    5                      F_CheckAtPrePutObjectToTrayPos3                                Axis    	                    Axis_Ref          5                    ^M7U  @    џџџџ        #   F_CHECKATPRESTORETURNTABLEPOSITION1           PositionWindow          №?   1      №?    6                   #   F_CheckAtPreStoreTurntablePosition1                                Axis    	                    Axis_Ref          6                    ^M7U  @    џџџџ        #   F_CHECKATPRESTORETURNTABLEPOSITION2           PositionWindow          №?   1      №?    7                   #   F_CheckAtPreStoreTurntablePosition2                                Axis    	                    Axis_Ref          7                    ^M7U  @    џџџџ           F_CHECKATTURNTABLECCWPOSITION           PositionWindow          №?   1      №?    8                      F_CheckAtTurntableCCWPosition                                Axis    	                    Axis_Ref          8                    ^M7U  @    џџџџ           F_CHECKATTURNTABLECWPOSITION           PositionWindow          №?   1      №?    9                      F_CheckAtTurntableCWPosition                                Axis    	                    Axis_Ref          9                    ^M7U  @    џџџџ           F_CHECKAXISHAVESTOPPED                   F_CheckAxisHaveStopped                                Axis    	                    Axis_Ref                              ^M7U  @    џџџџ           F_CHECKAXISINPOSITIONWINDOW               SetPosition            0              PositionWindow            0                 F_CheckAxisInPositionWindow                                Axis                Axis_Ref  0                   ^M7U  @    џџџџ           F_CHECKIFALLAXISHOMED                   F_CheckIfAllAxisHomed                                Axis    	                    Axis_Ref                              ^M7U  @    џџџџ           F_CHECKIFAXISDISABLED                   F_CheckIfAxisDisabled                                Axis    	                    Axis_Ref                              ^M7U  @    џџџџ           F_CHECKIFAXISENABLED                   F_CheckIfAxisEnabled                                Axis    	                    Axis_Ref                              ^M7U  @    џџџџ           F_CHECKIFAXISHASERROR                   F_CheckIfAxisHasError                                Axis    	                    Axis_Ref                              ^M7U  @    џџџџ           F_CHECKIFAXISHASJOB                   F_CheckIfAxisHasJob                                Axis    	                    Axis_Ref                              ^M7U  @    џџџџ           F_CHECKIFAXISISMOVING                   F_CheckIfAxisIsMoving                                Axis    	                    Axis_Ref                              ^M7U  @    џџџџ           F_CHECKIFAXISNOTMOVING                   F_CheckIfAxisNotMoving                                Axis    	                    Axis_Ref                              ^M7U  @    џџџџ           F_CHECKIFHOMINGISBUSY                   F_CheckIfHomingIsBusy                                Axis    	                    Axis_Ref                              ^M7U  @    џџџџ           F_CHECKIFINPOSAREA                   F_CheckIfInPosArea                                Axis    	                    Axis_Ref                               ^M7U  @    џџџџ           F_CHECKIFINTARGETPOS           i            ! 	                     F_CheckIfInTargetPos                                Axis    	                    Axis_Ref          !                    ^M7U  @    џџџџ           F_CHECKIFINTARGETPOSEX           i            /
              	   fPosition   	                                     /              PositionWindow   	                         /                 F_CheckIfInTargetPosEx                                Axis    	                    Axis_Ref          /                   ^M7U  @    џџџџ           F_CHECKIFNEXTPOSISOUTOFPOSAREA               NextPosition   	                                     "               PositionWindow   	                                     "                  F_CheckIfNextPosIsOutOfPosArea                                Axis    	                    Axis_Ref          "                    ^M7U  @    џџџџ           F_CHECKIFSOFTLIMITMAX                   F_CheckIfSoftLimitMax                                Axis    	                    Axis_Ref          #                    ^M7U  @    џџџџ           F_CHECKIFSOFTLIMITMIN                   F_CheckIfSoftLimitMin                                Axis    	                    Axis_Ref          $                    ^M7U  @    џџџџ           F_CHECKJOINTSIDE                   F_CheckJointSide               E_JointSide                             ^M7U  @    џџџџ           F_CHECKSTARTREF                   F_CheckStartRef            
   E_Decision                             Љ[7U  @    џџџџ           F_CUTSTRING           _str               T_MaxString    I               i            I               iCutPos   	                          I 	           	   Index7001                            IN               T_MaxString   I            
   sDelimiter    Q      /Q    I                  F_CutString   	          Q       Q                                      ^M7U  @    џџџџ           F_MERGESENDARMSTATE           _str               T_MaxString    J 	              i            J 
                 Variable    Q       Q    J               sStatus               T_MaxString   J            
   STCommands        +                                                 ST_Commands   J            
   sDelimiter    Q       Q    J                  F_MergeSendArmState               T_MaxString                             ^M7U  @    џџџџ           F_MERGESENDDATA           _str               T_MaxString    D 	              _strData               T_MaxString    D 
              i            D                  CMD    Q       Q    D               Variable    Q       Q    D               Value            D            
   sDelimiter    Q       Q    D                  F_MergeSendData               T_MaxString                             ^M7U  @    џџџџ           F_MERGESTRING           _Merge               T_MaxString    K               i            K 	                 IN               T_MaxString   K               sStatus               T_MaxString   K            
   sDelimiter    Q      ;Q    K                  F_MergeString               T_MaxString                             ^M7U  @    џџџџ           F_MERGESTRINGONEVALUE           _Merge               T_MaxString    L 	              i            L 
                 IN               T_MaxString   L               sStatus               T_MaxString   L               sValue               T_MaxString   L            
   sDelimiter    Q      ;Q    L                  F_MergeStringOneValue               T_MaxString                             ^M7U  @    џџџџ           F_MERGESTRINGVALUE           _Merge               T_MaxString    M               _Values   	                     T_MaxString            M               i            M            	   Index7001                      	      IN   	          Q       Q            M               sStatus               T_MaxString   M            
   sDelimiter    Q      ;Q    M               Value1    Q       Q    M               Value2    Q       Q    M               Value3    Q       Q    M               Value4    Q       Q    M 	              Value5    Q       Q    M 
              Value6    Q       Q    M                  F_MergeStringValue               T_MaxString                             ^M7U  @    џџџџ           F_RESETCOMMANDS           i            ;                      F_ResetCommands                                      ^M7U  @    џџџџ           F_RESETDIALOG                   F_ResetDialog                                      ЖU7U  @    џџџџ           F_RESETSTARTREFDIALOG                   F_ResetStartRefDialog                                      U7U  @    џџџџ           F_SETHOMINGDISABLE                   F_SetHomingDisable                                STInstances                 ST_Instances  <                    ^M7U  @    џџџџ           F_SETHOMINGENABLE                   F_SetHomingEnable                                STInstances                 ST_Instances  =                    ^M7U  @    џџџџ           F_SETREFDIALOG               nJointNo           b                 F_SetRefDialog                                      PU7U  @    џџџџ           F_SETSTARTREFDIALOG                   F_SetStartRefDialog                                      VU7U  @    џџџџ           F_SWITCHSTEP               pStepCounter                 ?              NextStep           ?           	   pLastStep                 ?                 F_SwitchStep                                      ^M7U  @    џџџџ           FB_CHECKSTATE           _ArmHomedStateOld              	              _ArmIsMovingStateOld              
              _ArmHasStoppedOld                            _ArmIsDisabledStateOld                            _ArmHasErrorStateOld                            _ArmInPosAreaStateOld                            _ArmInTargetPosStateOld                            _ArmSoftLimitMaxStateOld                            _ArmSoftLimitMinStateOld                            _GripperIsClosedOld                           _AtHomePosStateOld                            _AtLearningPosStateOld                            _AtTurntablePosOld                            _AtTrayPosOld                            _AtPreGraspFromFloorPosOld                            _AtPreGraspFromTablePosOld                            _AtCCWPosOld                            _AtCWPosOld                            _EmergencyButtonStateOld                        
	_AtPreGraspPosOld		:	BOOL:=FALSE;
	_AtFinalGraspPosOld		:	BOOL:=FALSE;
	_AtTurntableCWPosOld	:	BOOL:=FALSE;
	_AtTurntableCCWPosOld	:	BOOL:=FALSE;
	   PosWindow   	                     6(0.8)      ЭЬL?   0.8     $              RTRIG                 R_TRIG     %              FMP_CandlePos                 r_trig     &              FMN_CandlePos                 F_TRIG     '                         Axis    	                    Axis_Ref                              ^M7U  @    џџџџ           FB_CLIENTAPPLICATION        	   sToServer           ''       T_MaxString    >               sFromServer           ''       T_MaxString    >               fbClient                                       FB_LocalClient    >        -    Client data exchange control function block    tx        	               FB_FrameStringFifo    >        	    Tx fifo    rx        	               FB_FrameStringFifo    >        	    Rx fifo    errors                      FB_ProtErrorFifo    >            Error fifo    sndTimer                    TON    >               rcvTimer                    TON    >               firstConnect            >               state            >            application state    rxString   	          Q       Q             >               iState    ч      >            
   fbLogState                                   
   FB_LogFile    >               FMP_CandlePos                 R_TRIG    >               FMN_CandlePos                 F_TRIG    >               sPath    Q       Q     >                  bDbg            >        /    TRUE => Enable debug output, FALSE => Disable    sRemoteHost               >               nRemotePort           >               bEnable            >                  eState           eSOCKET_DISCONNECTED       E_SocketConnectionState   > 
           TCP/IP connection state             ^M7U  @    џџџџ           FB_FRAMESTRINGFIFO           buffer   	  ш  §џџџ                 P            Internal buffer memory    fbBuffer           (bOverwrite := FALSE)	                    FB_StringRingBuffer    P        :    Basic (lower level) string buffer control function block       sDesc          Unknown    P        T    Debug message description string (allows the identification of log message source)    bDbg            P        /    TRUE => Enable debug output, FALSE => Disable    putValue           ''       T_MaxString   P        %    String to add (write) to the buffer       bOk            P 	       T    TRUE = New entry added or removed succesfully, FALSE = Fifo overflow or fifo empty    getValue           ''       T_MaxString   P 
       #    String removed (read) from buffer    nCount           P            Number of fifo entries    cbFree           P            Free buffer space             ^M7U  @   џџџџ           FB_HOME     
      eHoming          99       E_STATE_HOMING                IDLE    LastHomingState               E_STATE_HOMING                   i                           RStart                 R_TRIG                   RStop                 R_TRIG                   MoveRelativeAxis4                                 MC_MoveRelative                   MoveRelativeAxis6                                 MC_MoveRelative                   SetPositionAxis4                            MC_SetPosition                    SetPositionAxis6                            MC_SetPosition     !              fbMoveToZero                    FB_MoveToZero     "                 bExecute                              bHomingDone                           bHomingBusy                           bReferenceRestarted                           bHasBeenStopped                           bError                              Axis    	                    Axis_Ref           
              STInstances                 ST_Instances                      ^M7U  @    џџџџ           FB_HOME_NEW           eHoming          99       E_STATE_HOMING    J           IDLE    LastHomingState               E_STATE_HOMING    J              i            J              RStart                 R_TRIG    J              RStop                 R_TRIG    J              MoveRelativeAxis4                                 MC_MoveRelative    J              MoveRelativeAxis6                                 MC_MoveRelative    J              SetPositionAxis4                            MC_SetPosition    J               SetPositionAxis6                            MC_SetPosition    J!              fbMoveToZero                    FB_MoveToZero    J"           
   eJointSide               E_JointSide    J#              fbHomeJoint                         FB_HomeJoint    J$           	   eDecision            
   E_Decision    J%              fbHomeDefault                                FB_Home    J&                 bExecute            J                 bHomingDone            J              bHomingBusy            J              bReferenceRestarted            J              bHasBeenStopped            J              bError            J                 Axis    	                    Axis_Ref          J
              STInstances                 ST_Instances  J                   7U  @    џџџџ           FB_HOMEJOINT           eHomingJoint               E_HomingJoint    =              eLastHoming               E_HomingJoint    =           
   eJointSide               E_JointSide    =              fbSetCamSearchDirection                      FB_SetCamSearchDirection    =              fbMoveToZero                    FB_MoveToZero    =                 bExecute            =              nJointNo           =              Axis               AXIS_REF   =                 Busy            =              Error            =	              DONE            =
                       ^M7U  @    џџџџ           FB_INSTANCES           _MoveAbsoluteExecute                            i                        	   _Velocity   	                                                  	   SetPosOpt                 ST_SetPositionOptions                   SetDestallOpt                    ST_PowerStepperStruct                
   Power_Axis   	             1                                                       MC_PowerStepper                           MoveAbsoluteAxis   	                                      MC_MoveAbsolute                           MoveJog   	             '                                             MC_Jog                           SetPosition   	                                 MC_SetPosition                        
   HomingAxis   	                                            MC_Home                           ResetHoming   	                                            MC_Home                        	   ResetAxis   	                              MC_Reset                           StopAxis   	                                        MC_Stop                           logged   	                                          k             !           
   TON_RefCam   	                         TON             "           
   bHackReset   	                           #                         Axis    	                    Axis_Ref                         STInstances                 ST_Instances                      @Е7U  @    џџџџ           FB_LEDBLINKING           i                           LastLEDState                            TP_On                   TP                   TP_Off                   TP                   FTrig                 F_TRIG                   RTrig                 R_TRIG                      bSwitch                       жffner Kontakt   tTime                             bLED                                    ^M7U  @    џџџџ           FB_LOCALCLIENT        	   fbConnect           ( tReconnect := T#45s )                ШЏ          FB_ClientServerConnection    C        "    create/release TCP/IP connection    fbSend                          FB_SocketSend    C            send TCP/IP data 	   fbReceive                           FB_SocketReceive    C            receive TCP/IP data    state            C            global state    tx_state            C        
    tx state    rx_state            C        
    rx state    bDisconnect             C        3    disconnect flag, if set the socket will be closed 	   pollTimer                    TON    C            
   cbReceived            C            count of received data bytes    cbRx            C             byte length of received string    rxFrame               T_MaxString    C               txFrame               T_MaxString    C               buffer   	  ш                       C            Temp. RX buffer    i            C                bAbort             C !              sID                C "                 bDbg            C 	       <    TRUE => Enable debug output, FALSE => Disable debug output    sRemoteHost          192.168.2.122    C 
           IP address of remote server    nRemotePort         C            Remote server port    bEnable            C        5    TRUE => Enable/connect, FALSE => Disable/disconnect 
   tReconnect    ШЏ     C        "    Try to reconnect after this time       eState           eSOCKET_DISCONNECTED       E_SocketConnectionState   C            TCP/IP connection state       tx         	               FB_FrameStringFifo  C        	    TX fifo    rx         	               FB_FrameStringFifo  C        	    RX fifo    errors                 FB_ProtErrorFifo  C            Error message fifo         ^M7U  @   џџџџ           FB_LOCALSERVER        	   fbConnect                                  FB_ServerClientConnection    E        "    create/release TCP/IP connection    fbSend                          FB_SocketSend    E            send TCP/IP data 	   fbReceive                           FB_SocketReceive    E            receive TCP/IP data    state            E            global state    tx_state            E        
    tx state    rx_state            E        
    rx state    bDisconnect             E        3    disconnect flag, if set the socket will be closed 	   pollTimer                    TON    E            
   cbReceived            E            count of received data bytes    cbRx            E             byte length of received string    buffer   	  ш                       E            Temp. RX buffer    txFrame               T_MaxString    E               rxFrame               T_MaxString    E               i            E               bAbort             E                sID                E !                 bDbg            E        <    TRUE => Enable debug output, FALSE => Disable debug output    bEnable           E        5    TRUE => Enable/connect, FALSE => Disable/disconnect       eState           eSOCKET_DISCONNECTED       E_SocketConnectionState   E            TCP/IP connection state       hServer                           	   T_HSERVER  E            Server connection handle    tx         	               FB_FrameStringFifo  E        	    TX fifo    rx         	               FB_FrameStringFifo  E        	    RX fifo    PositionBuffer                 FB_PositionFifoBuffer  E               errors                 FB_ProtErrorFifo  E            Error message fifo         ^M7U  @   џџџџ           FB_MOVE           eMOVE          99       E_STATE_MOVE     F       	   IDLE Mode   LastMoveState               E_STATE_MOVE     G              bStartTimer              H              T_ON1                    TON     I              RStart                 R_TRIG     J              i             L              PositionWindow   	                     6(0.8)      ЭЬL?   0.8     M                 bExecuteMove             	              bEnableInterpolationMove             
              bEnableSingleAxisMove                           bSingleAxisIndex                                     %      bError                        
   bAtHomePos                           bAtLearningPos                           bAtPreGraspTurntablePos1                           bAtPreGraspTurntablePos2                           bAtFinalGraspTurntablePos                           bAtPreStoreTurntablePos1                           bAtPreStoreTurntablePos2                           bAtFinalStoreTurntablePos                           bAtPreGraspTrayPos1                           bAtPreGraspTrayPos2                           bAtPreGraspTrayPos3                           bAtFinalGraspTrayPos                           bAtPrePutObjectToTrayPos1                           bAtPrePutObjectToTrayPos2                           bAtPrePutObjectToTrayPos3                            bAtFinalPutObjectToTrayPos             !              bAtMoveArmOutPos             #              bAtPreGraspFromFloorPos             $              bAtFinalGraspFromFloorPos             %              bAtMoveArmOutPos2             '              bAtMoveArmOutPos3             (              bAtPreGraspFromTablePos             )              bAtTurntableCWPos             +              bAtTurntableCCWPos             ,              bAtSoftLimitMax             .              bAtSoftLimitMin             /              bInTargetPos             1              bInPositionArea             2              bHasJob             4           	   bIsMoving             5              bStandStill             6              bHasBeenStopped             7              bAxisDisabled             8           	   bMoveDone             9              bReady             :              bAtCandlePos             ;                 Axis    	                    Axis_Ref           ?              STInstances                 ST_Instances   @                   ^M7U  @    џџџџ           FB_MOVEINTERPOLATION     	      eInterpolation           99       E_STATE_INTERPOLATION                   LastInterpolationState               E_STATE_INTERPOLATION                   _fInterpolationPosition   	                                                     i                           RStart                 R_TRIG                   RTrigInPosArea                 R_TRIG                	fbInterpolate	:	FB_Interpolate;   ReadPosition                          FB_ReadPositionFromFifo                   ReadPositionWindowValue                  FB_ReadPositionWindowValue                   _InPosAreaOld                               bExecuteInterpolation                              bInPositionArea                           bInTargetPosition                           bAtHomePosition                           bHasBeenStopped                        
   bNotMoving                           bHasJob                           bDone                           bError                              Axis    	                    Axis_Ref                         STInstances                 ST_Instances                      ^M7U  @    џџџџ           FB_MOVETOZERO           MoveAbsoule                                 MC_MoveAbsolute    4                 bExecute            4              Axis                Axis_Ref        4                 bDone            4              bError            4              nErrID           4	                       ^M7U  @    џџџџ           FB_POSITIONFIFOBUFFER           fbBuffer           (bOverwrite := FALSE)	                    FB_StringRingBuffer    W        :    Basic (lower level) string buffer control function block       sDesc          Unknown    W        T    Debug message description string (allows the identification of log message source)    bDbg            W        /    TRUE => Enable debug output, FALSE => Disable    putValue           ''       T_MaxString   W        %    String to add (write) to the buffer       bOk            W 	       T    TRUE = New entry added or removed succesfully, FALSE = Fifo overflow or fifo empty    getValue           ''       T_MaxString   W 
       #    String removed (read) from buffer    nCount           W            Number of fifo entries    cbFree           W            Free buffer space             ^M7U  @    џџџџ           FB_PROTERRORFIFO           buffer   	     §џџџ                 ^            Internal buffer memory    fbBuffer                              FB_MemRingBuffer    ^        3    Basic (lower level) buffer control function block       sDesc          Unknown    ^        P    Debug message description string (allows the identification of message source)    bDbg            ^        /    TRUE => Enable debug output, FALSE => Disable    putError           ^        '    Error code to add (write) to the fifo       bOk            ^ 	       T    TRUE = New entry added or removed succesfully, FALSE = Fifo overflow or fifo empty    getError           ^ 
       )    Error code get/removed (read) from fifo    nCount           ^            Number of fifo entries             ^M7U  @    џџџџ           FB_READPOSITIONFROMFIFO        	   sPosition               T_MaxString                
   rxPosition   	          Q       Q                            oldPosition   	                                                     i                             bGetPosition                           fPositionWindow   	                                                    	   fPosition   	                                      
           Nex Position to Move    iNumbrOfPos                   9    Gives the actual number of Positions in the Fifo Buffer    bNoMoreData                    !    Is TRUE if no more data to read    bNewPosition                          bNextPositionIsOutOfPosArea                              Axis    	                    Axis_Ref                              ^M7U  @    џџџџ           FB_READPOSITIONWINDOWVALUE           i                           ReadParameterAxis   	                                   MC_ReadParameter                                  PositionWindow   	                                                       Axis    	                    Axis_Ref                              ^M7U  @    џџџџ           FB_RESET           eReset          99       E_STATE_RESET               IDLE   LastResetState               E_STATE_RESET                   i                           RStart                 R_TRIG                      bExecute                           
   bResetDone             
                 Axis    	                    Axis_Ref                         STInstances                 ST_Instances                      ^M7U  @    џџџџ           FB_SERVERAPPLICATION           sFromClient           ''       T_MaxString    F            	   sToClient           ''       T_MaxString    F               fbServer                                      FB_LocalServer    F        *    Implements one server->client connection    tx        	               FB_FrameStringFifo    F        	    Tx fifo    rx        	               FB_FrameStringFifo    F        	    Rx fifo    errors                      FB_ProtErrorFifo    F            Error fifo    state            F               i            F               rxLength            F               rxString   	          Q       Q             F               txString   	          Q       Q             F               rxPosString   	          Q       Q             F               fbLogReceive                                   
   FB_LogFile    F            	   fbLogSend                                   
   FB_LogFile    F               sPath    Q       Q     F                   bDbg            F        /    TRUE => Enable debug output, FALSE => Disable    bEnable           F 	       -    TRUE => Enable connection, FALSE => Disable       eState           eSOCKET_DISCONNECTED       E_SocketConnectionState   F            TCP/IP connection state       hServer                           	   T_HSERVER  F            Server connection handle         ^M7U  @    џџџџ           FB_SETCAMSEARCHDIRECTION        
   fbADSWrite                          ADSWRITE    G              _wTmp            G                 bExecute            G              nAxisID           G              eSearchDirection               E_JointSide   G                 bBusy            G              bError            G	              nErrID           G
                       7U  @    џџџџ           FB_SETDEFAULHOMINGDIRECTION           step            i              oldStep            i              fbSetSearchDirection                      FB_SetCamSearchDirection    i              i            i                 bExecute            i                 bDone            i              bBusy            i              bError            i                       тЃ7U  @    џџџџ           MAIN     .   	   fPosition   	                                0,0,0,0,0,0                 0              0              0              0              0              0    f           Absolute Position in DEG   fActPosition   	                          f               bProgrammReset            f            eNumerations    eSystemMode           SystemMode_Boot       E_SystemMode    f 	              eMode          800       E_STATE    f 
       :   Programm Mode: Shows in which Mode the Program actually is
   eTurntable          99       E_STATE_TURNTABLE    f           IDLE   eTray          99       E_STATE_TRAY    f           IDLE   eFloor           99       E_STATE_GRASPFLOOR    f           IDLE	   ePreFloor           99       E_STATE_PREGRASPFLOOR    f           IDLE	   ePreTable           99       E_STATE_PREGRASPTABLE    f           IDLE
   ePutObject           99       E_STATE_OBJECT_TO_TRAY    f           IDLE
   eCandlePos           E_CANDLE_IDLE       E_STATE_CANDLE    f               eHomePos           E_HOME_IDLE       E_STATE_HOME    f               LastMode               E_STATE    f           Shows Last Program Mode   LastTurntableState               E_STATE_TURNTABLE    f               LastTrayState               E_STATE_TRAY    f               LastFloorState               E_STATE_GRASPFLOOR    f               LastPreFloorState               E_STATE_PREGRASPFLOOR    f               LastPreTableState               E_STATE_PREGRASPTABLE    f               LastPutObjectState               E_STATE_OBJECT_TO_TRAY    f               LastCandleState               E_STATE_CANDLE    f               LastHomeState               E_STATE_HOME    f           LastJog				:	E_STATE_JOG;   Joint   	                    Axis_Ref            f            
   Power_Axis   	             1                                                       MC_PowerStepper            f !              MoveAbsoluteJoint   	                                      MC_MoveAbsolute            f "           
   HomingAxis   	                                            MC_Home            f #           	   ResetAxis   	                              MC_Reset            f $              TON1                    TON    f &              TON2                    TON    f '              TON3                    TON    f (              TON4                    TON    f )              TGrip                    TON    f *              RTrigDisable                 R_TRIG    f +              fbCheckState                                      FB_CheckState    f ,              fbInstances                                 FB_Instances    f -              fbHOME                                    FB_Home_new    f .              fbMOVE        2                                                        FB_Move    f /              fbMoveInterpolation                                  FB_MoveInterpolation    f 0          fbJOG				:	FB_Jog;   fbRESET                      FB_Reset    f 2              fbLedBlinking        	               FB_LedBlinking    f 3              bExecute             f 4              fbSUPS                             FB_S_UPS    f 5              i            f 6           	   TON_Retry                    ton    f 7              bSaveParams             f 8           
   fbShutDown                      NT_Shutdown    f 9                               Њ7U  @    џџџџ           PRG_DATAACCESS           FB_XmlSrvReadConfig                                    FB_XmlSrvRead    I              FB_XmlSrvWriteConfig                                    FB_XmlSrvWrite    I       F   	FB_EventSetReadXML: 	FB_EventSet;
	FB_EventSetSaveXML: 	FB_EventSet;   FE_LoadBusy                 F_TRIG    I
              FE_Save                 F_TRIG    I          FB_BlinkBak: FB_Blinktakt;   FB_XmlSrvWriteConfigBak                                    FB_XmlSrvWrite    I              pathname    e       e     I                 bLoadCfg            I              bSaveCfg            I                 bDoneLoadCfg            I              bDoneSaveCfg            I                       ^M7U  @    џџџџ        
   SCODE_CODE               sc           e               
   SCODE_CODE                                     ^M7U  @    џџџџ           TCPIPCLIENT           fbApplication       }    ( sRemoteHost:= REMOTE_IP_ADDRESS, nRemotePort:= CLIENTPORT, bDbg :=TRUE(* TRUE = enable debug output, FALSE = disable *)  )                               192.168.2.122        FB_ClientApplication    {               bEnable            {        7    TRUE => enable client data exchange, FALSE => disable 
   fbCloseAll        	               FB_SocketCloseAll    {            	   bCloseAll            {                                ^M7U  @   џџџџ           TCPIPSERVER        
   sLocalHost          192.168.2.190     |            Server address 
   nLocalPort          |            Server port number    bEnable            |        7    TRUE => enable server data exchange, FALSE => disable    hServer                          	   T_HSERVER    |            Server connection handle    fbApplication           ( bDbg:=FALSE )                              FB_ServerApplication    | 	       $    Application (connection) instances 
   fbCloseAll        	               FB_SocketCloseAll    |            	   bCloseAll            |                                ^M7U  @   џџџџ            
 я  4 f   5       u   >   x   y   }   t   !  (  I  F   >  K  &   (   )   +   -   r   A   v   w      H        B      J     z   Y  H   8  §џџџX  Z  b  c  e  i  =   <   G  ;   g     =     ( КЋ     K   ШЋ    K   жЋ    K   фЋ    K   љЋ                Ќ        +     КЛlocalhost кіu   Ќј     `Т№H `Иућ@lж $ж и Hз сwPCЙ ўџџџw/w.wЌј           Ќј          ућьж x,w ућЌј     ућ з юЪи Eѓ џџџџ    7dз             Xз Ќј          Ќј       nх иДRџџџџи nх №ДRџџџџи -х     ,   ,                                                        K    S   C:\Documents and Settings\Administrator\Desktop\HOBBIT\Programm\bk\Hobbit_00.pro @ ^M7U[Ў /*BECKCONFI3*/
        !џ> @   @           3   +            
   Standard        TCPIPServer     
   TCPIPClient            	аГ8U     &   §џ*            VAR_GLOBAL
END_VAR
                                                                                  "   ,                  Standard
         Main();џџџџ                TCPIPServer        TCPIPServer();џџџџ                TCPIPClient
        TCPIPClient();џџџџ               ЯГ8U                 $ћџџџ,   AЕ               otnBrdro           Standard KбQ	KбQ      telc00_H                         	ЯГ8U     7,#3169,           VAR_CONFIG
END_VAR
                                                                                   '             , Z Z fy           Globale_Constant ^M7U	^M7U    ,}џџ           #  VAR_GLOBAL CONSTANT
	LOCAL_IP_ADDRESS							:	STRING(15) := '192.168.2.190';	(* CX HOBBIT*)
	REMOTE_IP_ADDRESS						:	STRING(15) := '192.168.2.122';	(* XPC *)

	SERVERPORT								:	UDINT := 5010;
	CLIENTPORT								:	UDINT := 5020;

	PLCPRJ_MAX_CONNECTIONS					: UDINT := 2;(* Max. number of server<->client connections *)
	PLCPRJ_SERVER_RESPONSE_TIMEOUT			: TIME 	:= T#10s;
	PLCPRJ_CLIENT_SEND_CYCLE_TIME			: TIME 	:= T#5s;

	PLCPRJ_RECEIVER_POLLING_CYCLE_TIME		: TIME 	:= T#40ms;
	PLCPRJ_BUFFER_SIZE						: UINT := 1000; (* Max. internal fifo/receiver buffer size *)

	POSITION_BUFFER_SIZE						: UDINT := 4000; (* Max. internal fifo position receive buffer size*)


	(* Some project specific error codes *)
	PLCPRJ_ERROR_RECEIVE_BUFFER_OVERFLOW	: UDINT := 16#8101; (* receive fifo/buffer overflow*)
	PLCPRJ_ERROR_SEND_BUFFER_OVERFLOW		: UDINT := 16#8102;(* send fifo/buffer overflow *)
	PLCPRJ_ERROR_RESPONSE_TIMEOUT			: UDINT := 16#8103;(* receive timeout error *)
END_VAR

VAR_GLOBAL
	stTurnTableState: ST_TurnTableState;
END_VAR                                                                                               '              ,             B   Globale_Variablen @      SystemTaskInfoArr H  
   SystemInfo H   HЯГ8U	ЯГ8U     ZE; 0x:           VAR_GLOBAL
	(*Variables:*)
	stParams 					:	ST_Parameters;

	fVelocity				:	LREAL;					(*Command defined Velocity*)
	(*Positions For Interpolation*)
	StringPositionBuffer		:	ARRAY[-3..POSITION_BUFFER_SIZE] OF BYTE; (* Position Buffer for Interpolation Mode *)
	rxPositionBuffer			:	FB_PositionFifoBuffer;

	(*Commandos:*)
	stCommands			:		ST_Commands;
	stInstances			:		ST_Instances;

	(*INPUT:*)
	bHomeRefAxis1		AT %I* :	BOOL;	(* Axis Reference Switch *)
	bHomeRefAxis2		AT %I* :	BOOL;	(* Axis Reference Switch *)
	bHomeRefAxis3		AT %I* : 	BOOL;	(* Axis Reference Switch *)
	bHomeRefAxis4 		AT %I*: 	BOOL;	(* Axis Reference Switch *)
	bHomeRefAxis5 		AT %I*: 	BOOL;	(* Axis Reference Switch *)
	bHomeRefAxis6		AT %I* : 	BOOL;	(* Axis Reference Switch *)
	bEmergencyButton	AT %I*: 	BOOL;		(* Emergency Button *)

	(*OUTPUT*)
	bGripper			AT %Q* : 	BOOL;	(* FALSE: Gripper is Open; TRUE: Gripper is Closed *)
	bEmergencyButtonLED	AT  %Q*:	BOOL;	(* SOS Button Light *)

	stStartRefDialog		: ST_StartReferenceDialog;
	stReferenceDialog		: ST_ReferenceDialog;
	bHomeRefAxis			: ARRAY [1..6] OF BOOL;		(*reference switches (time-on delayed)*)
	bReset					: BOOL;		(*a reset has been executed*)
	fbSetDefaultHomingDirection: FB_SetDefaulHomingDirection;
END_VAR
                                                                                               '              , в в оё        C  TwinCAT_Configuration @      Main.bCloseGripper H     Main.Joint2.PlcToNc H     Main.Joint3.PlcToNc H     Main.Joint1.NcToPlc H     Main.Joint5.NcToPlc H     Main.Joint4.PlcToNc H     Main.Joint2.NcToPlc H     Main.Joint4.NcToPlc H     Main.Joint3.NcToPlc H     Main.Joint5.PlcToNc H     Main.Joint1.PlcToNc H   H^M7U	ЯГ8U     ,}џџ           С  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	Main.Joint[1].PlcToNc AT %QB780 : PLCTONC_AXIS_REF;
	Main.Joint[1].NcToPlc AT %IB772 : NCTOPLC_AXIS_REF;
	Main.Joint[2].PlcToNc AT %QB908 : PLCTONC_AXIS_REF;
	Main.Joint[2].NcToPlc AT %IB900 : NCTOPLC_AXIS_REF;
	Main.Joint[3].PlcToNc AT %QB1036 : PLCTONC_AXIS_REF;
	Main.Joint[3].NcToPlc AT %IB1028 : NCTOPLC_AXIS_REF;
	Main.Joint[4].PlcToNc AT %QB1164 : PLCTONC_AXIS_REF;
	Main.Joint[4].NcToPlc AT %IB1156 : NCTOPLC_AXIS_REF;
	Main.Joint[5].PlcToNc AT %QB1292 : PLCTONC_AXIS_REF;
	Main.Joint[5].NcToPlc AT %IB1284 : NCTOPLC_AXIS_REF;
	Main.Joint[6].PlcToNc AT %QB1420 : PLCTONC_AXIS_REF;
	Main.Joint[6].NcToPlc AT %IB1412 : NCTOPLC_AXIS_REF;
	Main.fbHOME.fbHomeJoint.Axis.PlcToNc AT %QB1556 : PLCTONC_AXIS_REF;
	Main.fbHOME.fbHomeJoint.Axis.NcToPlc AT %IB1544 : NCTOPLC_AXIS_REF;
	.bHomeRefAxis1 AT %IX1540.0 : BOOL;
	.bHomeRefAxis2 AT %IX1540.1 : BOOL;
	.bHomeRefAxis3 AT %IX1540.2 : BOOL;
	.bHomeRefAxis4 AT %IX1540.3 : BOOL;
	.bHomeRefAxis5 AT %IX1540.4 : BOOL;
	.bHomeRefAxis6 AT %IX1540.5 : BOOL;
	.bEmergencyButton AT %IX1540.6 : BOOL;
	.bGripper AT %QX1548.0 : BOOL;
	.bEmergencyButtonLED AT %QX1552.0 : BOOL;
END_VAR                                                                                               '              , x x оч           Variablen_Konfiguration H^M7U	^M7U     ZE; 0x:            VAR_CONFIG
END_VAR
                                                                                                    |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                               4     џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             System         |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @        '             , № №            E_CLIENT_STATE ^M7U	^M7U      t)hact.         i   TYPE E_CLIENT_STATE :
(
	E_CLIENT_INIT	:=	0,
	E_CLIENT_OK		:=	1,
	E_CLIENT_ERROR	:=	100
);
END_TYPE             h  , с с Ћ        
   E_Decision ђ\7U	ђ\7U       §џc          U   TYPE E_Decision: (
	E_Decision_NONE,
	E_Decision_YES,
	E_Decision_NO
);
END_TYPE             >  ,   %Ю           E_HomingJoint ^M7U	^M7U         &            TYPE E_HomingJoint :
(
	E_HomingJoint_IDLE,
	E_HomingJoint_ShowDialog,
	E_HomingJoint_CheckJointSide,
	E_HomingJoint_SetSearchDirection,
	E_HomingJoint_ExecuteHoming,
	E_HomingJoint_MoveToZero,
	E_HomingJoint_DONE,
	E_HomingJoint_Reset
);
END_TYPE             7  ,   мK           E_JointSide ^M7U	^M7U      9П           ]   TYPE E_JointSide :
(
	E_Joint_Unknown,
	E_Joint_Positive,
	E_Joint_Negative
);
END_TYPE                ,   О=        
   E_RX_STATE ^M7U	^M7U       2           L   TYPE E_RX_STATE :
(
	E_RX_INIT		:=		0,
	E_RX_RECEIVED	:=		1
);
END_TYPE                , Д Д Рг           E_SERVER_STATE ^M7U	^M7U      nt
			Si        ћ   TYPE E_SERVER_STATE :
(
	E_SERVER_INIT	:=	0,		(*Connection is initializing*)
	E_SERVER_CONNECTING := 1,
	E_SERVER_OK		:=	2,		(*Connection is OK*)
	E_SERVER_ERROR	:=	100		(*Connection has ERROR; Read ErrorID for further information*)
);
END_TYPE             }   , Д Д Рг           E_STATE ^M7U	^M7U       ЦРн           TYPE E_STATE :
(
	E_HOMING						:=	10,		(*Shows that the Programm is in Homing Mode*)
(*	E_SINGLEHOMING				:=	15,		(*Shows that the Programm is in Singel Axis Homing Mode*)*)
	E_MOVE							:=	20,		(*Shows that the Programm is in Move Mode*)
	E_INTERPOLATION				:=	30,
	E_MOVETOHOMEPOS			:=	40,		(*Shows that the Programm is in Move to Home Position Mode*)
	E_GRASPTURNTABLE			:=	50,		(*Shows that the Programm is in Grasp Turntable Mode*)
	E_STORETURNTABLE			:=	60,
	E_MOVETOLEARNINGPOS		:=	70,
	E_MOVETOTRAY					:=	80,
	E_MOVEGRASPFROMFLOOR		:=	85,
	E_TURNTURNTABLECW			:=	90,
	E_TURNTURNTABLECCW		:=	100,
	E_CLOSEGRIPPER				:=	110,		(*Shows that the Programm is in Closing Gripper Mode*)
	E_OPENGRIPPER				:=	120,		(*Shows that the Programm is in Opening Gripper Mode*)
	E_ENABLEALLAXIS				:=	130,
	E_DISABLEALLAXIS				:=	140,
	E_RESET						:=	150,
	E_STOP							:=	160,		(*Shows that the Programm is in Stop Mode*)
	E_SETPOSTOZERO				:=	170,
	E_MOVEPREGRASPFROMFLOOR 	:= 	180,
	E_MOVEPREGRASPFROMTABLE	:=	185,
	E_PUTOBJECTTOTRAY			:=	190,
	E_JOG							:=	200,
	E_MOVETOCANDLEPOS			:=	210,
	E_WAITFORCOMMAND			:=	800,		(*Shows that the Programm is in Wait For Command Mode*)
	E_ERROR						:=	999		(*Shows that the Programm is in Error Mode*)
);
END_TYPE             ,  ,   рј           E_STATE_CANDLE ^M7U	^M7U      hІиІHЇИЇ        ю   TYPE E_STATE_CANDLE :
(
	E_CANDLE_IDLE,
	E_CANDLE_MoveJoint1,
	E_CANDLE_MoveJoint2,
	E_CANDLE_MoveJoint3,
	E_CANDLE_MoveJoint4,
	E_CANDLE_MoveJoint5,
	E_CANDLE_MoveJoint6,
	E_CANDLE_MoveAll, 
	E_CANDLE_WaitMoveDone
);
END_TYPE             ~   ,                E_STATE_GRASPFLOOR ^M7U	^M7U      ,	','0,	        и   TYPE E_STATE_GRASPFLOOR :
(

	E_FLOOR_MOVEARMOUT			:=	10,	(**)
	E_FLOOR_MOVEPREGRASP			:=	20,	(**)
	E_FLOOR_MOVEFINALGRASP		:=	30,
	E_FLOOR_MOVETOTRAY				:=	50,	(**)
	E_FLOOR_IDLE						:=	99	(**)
);
END_TYPE             6  , Џ Џ мн           E_STATE_HOME ^M7U	^M7U      umr3	re           TYPE E_STATE_HOME :
(
	E_HOME_IDLE,
	E_HOME_MoveArmOut3,
	E_HOME_MoveArmOut2,
	E_HOME_MoveArmOut,
	E_HOME_HomePosition
);
END_TYPE                , Z Z fy           E_STATE_HOMING Жc7U	^M7U      > 
rr=>        ш  TYPE E_STATE_HOMING :
(
	E_HOMING_INIT					:=	5,
	E_HOMING_POSCHECK			:=	7,
	E_HOMING_SETDEFAULT			:=	8,
	E_HOMING_DEFAULT			:=	9,
	E_HOMING_JOINT1				:=	10,	(*In this State Joint1 is moving to the reference*)
	E_HOMING_JOINT2				:=	20,	(*In this State Joint2 is moving to the reference*)
	E_HOMING_JOINT3				:=	30,	(*In this State Joint3 is moving to the reference*)
	E_HOMING_JOINT4				:=	40,	(*In this State Joint4 is moving to the reference*)
	E_HOMING_JOINT5				:=	50,	(*In this State Joint5 is moving to the reference*)
	E_HOMING_JOINT6				:=	60,	(*In this State Joint6 is moving to the reference*)
	E_HOMING_DONE				:=	70,	(*In this State the move to the defined home position is started*)
	E_HOMING_RESET				:=	80,
	E_HOMING_MOVERELATIVE		:= 	90,
	E_HOMING_MOVEZERO			:=	95,
	E_HOMING_IDLE					:=	99,
	E_HOMING_RESETCMD			:=  990,
	E_HOMING_ERROR				:=	999,	(*This State shows that an Error while referencing occured, see ErrorIDs*)
	E_HOMING_STOPPED			:=	100
);
END_TYPE                ,   ЂУ           E_STATE_INTERPOLATION ^M7U	^M7U      t)hact.         p  TYPE E_STATE_INTERPOLATION :
(
	E_INTERPOL_INIT					:=	10,	(*In this State the command struct is reset*)
	E_INTERPOL_START					:=	20,
	E_INTERPOL_ATHOMEPOS			:=	30,
	E_INTERPOL_MOVING				:=	40,
	E_INTERPOL_READNEXTPOSITION	:=	50,
	E_INTERPOL_DONE					:=	60,
	E_INTERPOL_STOPPED				:=	70,
	E_INTERPOL_IDLE					:=	99,
	E_INTERPOL_ERROR					:=	999
);
END_TYPE                , X X dx           E_STATE_JOG ^M7U	^M7U         &             TYPE E_STATE_JOG :
(

	E_JOG_MOVEJOG			:=	10,	(**)
	E_JOG_DONE				:=	20,	(**)
	E_JOG_MOVING				:=	30, 	(**)
	E_JOG_IDLE					:=	99	(**)
);
END_TYPE                , Д Д Vг           E_STATE_MOVE ^M7U	^M7U      	As5	As_        U  TYPE E_STATE_MOVE :
(
	E_MOVE_INIT				:=	10,	(*In this State the command struct is reset*)
	E_MOVE_START				:=	20,
	E_MOVE_MOVING			:=	30,
	E_MOVE_INTERPOLATION	:=	40,
	E_MOVE_SINGLEAXIS			:=	50,
	E_MOVE_DONE				:=	60,
	E_MOVE_STOPPED			:=	70,
	E_MOVE_IDLE				:=	99,
	E_MOVE_RESETCMD			:=990,
	E_MOVE_ERROR				:=	999
);
END_TYPE                ,     Жш           E_STATE_OBJECT_TO_TRAY ^M7U	^M7U      			:99**        џ   TYPE E_STATE_OBJECT_TO_TRAY :
(

	E_OBJECT_PREGRASP1			:=	10,	(**)
	E_OBJECT_PREGRASP2			:=	20,	(**)
	E_OBJECT_PREGRASP3			:=	30,	(**)

	E_OBJECT_FINALGRASP			:=	90,	(**)
	(*E_OBJECT_STORE		:=	100,	(**)*)
	E_OBJECT_IDLE			:=	99	(**)
);
END_TYPE                ,   в№           E_STATE_PREGRASPFLOOR ^M7U	^M7U       4Г]        Ј   TYPE E_STATE_PREGRASPFLOOR :
(

	E_PRE_FLOOR_MOVEARMOUT			:=	10,	(**)
	E_PRE_FLOOR_MOVEPREGRASP			:=	20,	(**)
	
	
	E_PRE_FLOOR_IDLE						:=	99	(**)
);
END_TYPE                , (           E_STATE_PREGRASPTABLE ^M7U	^M7U       f с           ю   TYPE E_STATE_PREGRASPTABLE :
(

	E_PRE_TABLE_MOVEARMOUT			:=	10,	(**)
	E_PRE_TABLE_MOVEARMOUT2			:=	15,
	E_PRE_TABLE_MOVEARMOUT3			:=	16,
	E_PRE_TABLE_MOVEPREGRASP			:=	20,	(**)
	
	
	E_PRE_TABLE_IDLE						:=	99	(**)
);
END_TYPE                , Z Z ќy           E_STATE_RESET ^M7U	^M7U                      '  TYPE E_STATE_RESET :
(
	E_RESET_COMMANDS		:=	10,	(*In this State the command struct is reset*)
	E_RESET_AXIS				:=	50, 	(*In this State all Axis are reset*)
	E_RESET_DISABLE			:=	70,	(*In this State all Axis will be disabled *)
	E_RESET_IDLE				:=	99	(*RESET is in idle mode*)
);
END_TYPE                , № № ќ           E_STATE_TRAY ^M7U	^M7U      t)hact.         э   TYPE E_STATE_TRAY :
(

	E_TRAY_PREGRASP1			:=	10,	(**)
	E_TRAY_PREGRASP2			:=	20,	(**)
	E_TRAY_PREGRASP3			:=	30,	(**)

	E_TRAY_FINALGRASP			:=	90,	(**)
	E_TRAY_MOVETOHOMEPOS		:=	100,	(**)
	E_TRAY_IDLE			:=	99	(**)
);
END_TYPE                ,   ЂЕ           E_STATE_TURNTABLE ^M7U	^M7U      t)hact.         I  TYPE E_STATE_TURNTABLE :
(

	E_TURNTABLE_MOVEPREGRASP_1		:=	10,	(**)
	E_TURNTABLE_MOVEPREGRASP_2		:=	15,	(**)
	E_TURNTABLE_MOVEFINALGRASP		:=	20,	(**)
	E_TURNTABLE_CLOSEGRIPPER			:= 	30, 	(**)
	E_TURNTABLE_MOVETOLEARNINGPOS	:=	40,	(**)
	E_TURNTABLE_MOVETOHOMEPOS		:=	50,	(**)
	E_TURNTABLE_IDLE			:=	99	(**)
);
END_TYPE                , № № 9           E_STATE_VELOCITY ^M7U	^M7U      ar	:_TG;           TYPE E_STATE_VELOCITY :
(
	E_VELOCITY_CALC			:=	10,
	E_VELOCITY_NEWPOS		:=	20,
	E_VELOCITY_IDLE			:=	99				(**)
);
END_TYPE             V  ,   і           E_SystemMode ^M7U	^M7U         &             TYPE E_SystemMode :
(
	SYSTEMMODE_IDLE:=		0,
	SYSTEMMODE_BOOT:=		1,
	SYSTEMMODE_INIT:=		2,
	SYSTEMMODE_PREOP:=		3,
	SYSTEMMODE_OP:=			4
);
END_TYPE                , в в оё           ST_ArmState ^M7U	^M7U      y thhike        a  TYPE ST_ArmState :
STRUCT
	ARM_IN_POS_AREA				:	BOOL;					(*Is TRUE if all axis are in Position Area *)
	ARM_IN_TARGET_POS			:	BOOL;					(*Is TRUE if all axis are at Target Position*)
	ARM_SOFTLIMIT_MAX			:	BOOL;					(*Is TRUE if one or more axis are at the positive software limit*)
	ARM_SOFTLIMIT_MIN				:	BOOL;					(*Is TRUE if one or more axis are at the positive software limit*)
	ARM_HAS_ERROR				:	BOOL;					(*Is TRUE if one ore more axis have an error*)
	ARM_IS_DISABLED				:	BOOL;					(*Is TRUE if one ore more axis are disabled *)
	ARM_HOMED					:	BOOL;					(*Is TRUE if all axis are referenced*)
	ARM_IS_MOVING					:	BOOL;					(*Is TRUE if one ore more axis are moving*)
	ARM_STOPPED					:	BOOL;					(*Is TRUE if all axes have benn stopped*)
	GRIPPER_IS_CLOSED			:	BOOL;					(*Is TRUE if the Gripper is closed*)
	AT_HOME_POS					:	BOOL;					(* TRUE if at home position*)
	AT_LEARNING_POS				:	BOOL;					(* TRUE if at learning position*)
	AT_TRAY_POS					:	BOOL;					(* TRUE if at tray position *)
	AT_TURNTABLE_POS			:	BOOL;					(* TRUE if at Turntable Grasp position*)
	AT_PREGRASPFROMFLOOR_POS	:	BOOL;					(* TRUE if at PreGrasp From Floor position*)
	AT_PREGRASPFROMTABLE_POS	:	BOOL;					(* TRUE if at PreGrasp From Table position*)
	AT_CCW_POS					:	BOOL;					(* TRUE if 6th axis at -168А *)
	AT_CW_POS					:	BOOL;					(* TRUE if 6th axis at 168А *)
	AT_CANDLE_POS				:	BOOL;					(* TRUE if arm is in candle position*)

	(*Merker*)
	ArmInPosAreaChanged			:	BOOL;
	ArmInTargetPosChanged			:	BOOL;
	ArmSoftLimitMaxChanged			:	BOOL;
	ArmSoftLimitMinChanged			:	BOOL;
	ArmHasErrorChanged				:	BOOL;
	ArmIsDisabledChanged			:	BOOL;
	ArmHomedChanged				:	BOOL;
	ArmIsMovingChanged				:	BOOL;
	ArmHasStoppedChanged			:	BOOL;
	GripperIsClosedChanged			:	BOOL;
	AtLearningPosChanged			:	BOOL;
	AtHomePosChanged				:	BOOL;
	AtTrayPosChanged				:	BOOL;
	AtTurntablePosChanged			:	BOOL;
	AtPreGraspFromFloorPosChanged	:	BOOL;
	AtPreGraspFromTablePosChanged	:	BOOL;
	AtCCWPosChanged				:	BOOL;
	AtCWPosChanged				:	BOOL;
	AtCandlePosChanged				:	BOOL;

	AnyDataChanged			:	BOOL;
END_STRUCT
END_TYPE                , < < H[           ST_Commands ^M7U	^M7U      TFCOAN
        [	  TYPE ST_Commands :
STRUCT
(*------------SERVER-----------------*)
	(*SET COMMANDS: *)
	SetAbsolutePosition			:	BOOL;					(*Set a new absolute Position*)
	SetAbsolutePositionValue		:	ARRAY[1..6] OF LREAL;	(*New absolute Positions*)
	SetStartMove					:	BOOL;					(*Start the move*)
	SetMoveVelocity				:	LREAL;
	SetMoveToHomePos			:	BOOL;					(*Start a move to the Home Position*)
	SetMoveToLearningPos		:	BOOL;					(*Start a move to the learning position*)
	SetPutLearningObjectToTray	:	BOOL;					(*Start move an object to tray*)
	SetTurnTurntableCW			:	BOOL;					(*Start turning the turntable CW*)
	SetTurnTurntableCCW			:	BOOL;					(*Start turning the turntable CCW*)
	SetStoreTurntable				:	BOOL;					(*Start a move to store the turntable away*)
	SetMoveToTray				:	BOOL;					(*Start a move to the Tray*)
	SetMoveGraspFromFloor		:	BOOL;					(*Start a move to grasp from Floor*)
	SetMovePreGraspFromFloor	:	BOOL;					(*Start a move to pregrasp from Floor*)
	SetMovePreGraspFromTable	:	BOOL;					(*Start a move to pregrasp from Table*)
	SetEnableInterpolation			:	BOOL;					(*Start interpolatin Mode*)
	SetStartAllAxisRef				:	BOOL;					(*Start a complete axis reference*)
	SetDisableAllAxis				:	BOOL;					(*Disable all axis*)
	SetEnableAllAxis				:	BOOL;					(*Enable all axis*)
	SetOpenGripper				:	BOOL;					(*Open the Gripper*)
	SetCloseGripper				:	BOOL;					(*Close the Gripper*)
	SetReset					:	BOOL;					(*Reset Commands and Axis*)
	SetStopArm					:	BOOL;					(*Stop Arm movement*)
	SetClearPosBuffer				:	BOOL;					(*Clear the Position Buffer*)

	(*GET COMMANDS: *)
	GetActualPos				:	ARRAY[1..6] OF LREAL;		(*Values of actual Positions*)
	(*STATUS; *)
	ArmState					:	ST_ArmState;				(* Arm Status *)
	PositionsForInterpolationReady	:	BOOL;
	EmergencyPressed		:	BOOL;					(* TRUE if button pressed *)
	EmergencyButtonChanged	:	BOOL;

	(*Internal Commands, not used by TCP/IP*)
	SetAllPositionsToZero		:	BOOL;
	SetJogMovePosAxis1		:	BOOL;
	SetJogMoveNegAxis1		:	BOOL;
	SetJogMovePosAxis2		:	BOOL;
	SetJogMoveNegAxis2		:	BOOL;
	SetJogMovePosAxis3		:	BOOL;
	SetJogMoveNegAxis3		:	BOOL;
	SetJogMovePosAxis4		:	BOOL;
	SetJogMoveNegAxis4		:	BOOL;
	SetJogMovePosAxis5		:	BOOL;
	SetJogMoveNegAxis5		:	BOOL;
	SetJogMovePosAxis6		:	BOOL;
	SetJogMoveNegAxis6		:	BOOL;
	SetMoveToCandlePos		:	BOOL;
	SetShutdown				:	BOOL;

END_STRUCT
END_TYPE                , x x            ST_Instances ^M7U	^M7U       ]M           q   TYPE ST_Instances :
STRUCT
	Input		:	ST_Instances_Input;
	Output		:	ST_Instances_Output;
END_STRUCT
END_TYPE                , < < H[           ST_Instances_Input ^M7U	^M7U      nt
			Si          TYPE ST_Instances_Input :
STRUCT
	PowerEnable			:	BOOL;

	HomingEnable		:	ARRAY[1..6] OF BOOL;
	HomingMode			:	MC_HomingMode := MC_DefaultHoming; (*For Simulation: MC_ForceCalibration, For Real: MC_DefaultHoming, For Reset: MC_ResetCalibration *)

	MoveAbsoluteEnable			:	BOOL;
	MoveAbsoluteInterpolation		:	BOOL;
	MoveAbsoluteSingleAxis		:	ARRAY[1..6] OF BOOL;
	MoveJogAxisPos				:	ARRAY[1..6] OF BOOL;
	MoveJogAxisNeg				:	ARRAY[1..6] OF BOOL;

	SetPositionEnable		:	BOOL;

	ResetEnable			:	BOOL;

	StopEnable			:	BOOL;

	fPosition		:	ARRAY[1..6] OF LREAL;
	fVelocity		:	ARRAY[1..6] OF LREAL;
	fMaxVelocity	:	LREAL;
END_STRUCT
END_TYPE                , Z Z fy           ST_Instances_Output ^M7U	^M7U      y thhike        с  TYPE ST_Instances_Output :
STRUCT
	PowerEnableDone	:	BOOL;
	MoveAbsoluteDone	:	BOOL;
	MoveAbsoluteBusy	:	BOOL;
	MoveAbsoluteSingleAxisDone	:	ARRAY[1..6] OF BOOL;
	MoveAbsoluteSingleAxisBusy	:	ARRAY[1..6] OF BOOL;
(*	SetPositionDone		:	BOOL;*)
	HomingEnableDone	:	BOOL;
	ResetEnableDone	:	BOOL;
	ResetFailed			:	BOOL;
	StopDone			:	BOOL;
	ActualPosition		:	ARRAY[1..6] OF LREAL;
	MoveJogDone		:	BOOL;
	MoveJogError		:	BOOL;
	PowerError			:	BOOL;
END_STRUCT
END_TYPE             H  , } } 2           ST_Parameters ^M7U	^M7U      АЊ ЋЋ Ќ        X  TYPE ST_Parameters :
STRUCT
	MaxVelocity				:	LREAL:=20;				(*Maximum Velocity in DEG per Second*)
	MinVelocity				:	LREAL:=1;				(*Minimum Velocity in DEG per Second*)

	(*__________________________________________PREDEFINED POSITIONS ___________________________ *)
	fZeroPosition				:	ARRAY[1..6] OF LREAL :=  0,		0,		0,		0,		0,		0;
	fHomePosition			:	ARRAY[1..6] OF LREAL:=   90, 		86,		70, 		0, 		110,		0;		(*Home Position: Axis will move to this Position after referencing*)

	(*Positions for moving into the turntable and after storing moving out of the turntable:*)
	fPreGraspTurntable1		:	ARRAY[1..6] OF LREAL :=  90, 		0,		50, 		0,		109, 		90;		(*Pre-grasp Position of the turntable*)
	fPreGraspTurntable2		:	ARRAY[1..6] OF LREAL :=  90,		0,		70,		0,		108,		90;		(*Pre-grasp Position 2 of the turntable*)
	fFinalGraspTurntable		:	ARRAY[1..6] OF LREAL :=  90, 		0,		89, 		0,		91,	 	90;		(*Final grasp Position of the turntable*)

	(*Positions for moving the turntable out and putting the turntable into the storage:*)
	fPreStoreTurntable1		:	ARRAY[1..6] OF LREAL :=  90, 		0,		50, 		-3,		109, 		90;		(*Pre-grasp Position of the turntable*)
	fPreStoreTurntable2		:	ARRAY[1..6] OF LREAL :=  90,		0,		70,		-2,		108,		90;		(*Pre-store Position 2 of the turntable*)
	fFinalStoreTurntable		:	ARRAY[1..6] OF LREAL :=  90, 		0,		90, 		-2,		90.5,	 	90;		(*Final store Position of the turntable*)

	(* Positions for putting an learning object to the tray and then store turntable *)
	fPrePutObjectToTray1		:	ARRAY[1..6] OF LREAL := -47,	 	50,	 	34,	 	68, 		92,	 	95;
	fPrePutObjectToTray2		:	ARRAY[1..6] OF LREAL := -47,	 	78,	 	43,	 	79, 		120,	 	91;
	fPrePutObjectToTray3		:	ARRAY[1..6] OF LREAL := -47,	 	78,	 	26, 		0, 		100,	 	0;
	fFinalPutObjectToTray		:	ARRAY[1..6] OF LREAL := -47,	 	78,	 	43, 		78,	 	120,	 	92;

	fPreGraspTray1			:	ARRAY[1..6] OF LREAL := -47,	 	50,	 	34,	 	68, 		92,	 	95;
	fPreGraspTray2			:	ARRAY[1..6] OF LREAL := -47,	 	78,	 	43,	 	78, 	110,	91;
	fPreGraspTray3			:	ARRAY[1..6] OF LREAL :=  0,	 	78,	 	50, 		0, 		70,	 	0;
	fFinalGraspTray			:	ARRAY[1..6] OF LREAL := -47,	 	78,	 	43, 		78,	 	120,	 	92;

	fMoveArmOut				:	ARRAY[1..6] OF LREAL :=  70,		50,		30,		20,		70,		0;
	fPreGraspFromFloor		:	ARRAY[1..6] OF LREAL :=  69.7,		31.4,		96.31,		122.22,	109.8,	0;
	fFinalGraspFromFloor		:	ARRAY[1..6] OF LREAL :=  67.4,		58.7,		60.2,		151.2,	86.6,		-13.6;

	fMoveArmOut2			:	ARRAY[1..6] OF LREAL := 70,		56,		84,		156,		70,		0;
	fMoveArmOut3			:	ARRAY[1..6] OF LREAL := 0,			56,		114,		156,		110,		104.5;
	fPreGraspFromTable		:	ARRAY[1..6] OF LREAL :=  0,		64,		84,		156,		86,		89;

	fLearningPosition			:	ARRAY[1..6] OF LREAL :=  43,		60,		0,		-23,		125,		168;		(*Learning Position for learning objectes*)

	fTurntableCW				:	ARRAY[1..6] OF LREAL :=  43,		60,		0,		-23,		125,		168;		(* Turn Turntable Clockwise to 170 Degree *)
	fTurntableCCW			:	ARRAY[1..6] OF LREAL :=  43,		60,		0,		-23,		125,		-168;	(* Turn Turntable Clockwise to -170 Degree *)

	fCandlePosition: ARRAY [1..6] OF LREAL := 0,0,0,0,0,0;		(*Candle position*)

	sIdentity				: 	STRING := 'PT2e';
END_STRUCT
END_TYPE             Z  , Ш Ш д           ST_ReferenceDialog ^M7U	^M7U      PotiOpon          TYPE ST_ReferenceDialog :
STRUCT
	bActive			:BOOL; 	(*reference wizard active*)
	nJoint			:INT;	(*number of joint to reference next*)
	bPositive		:BOOL;	(*joint is on positive side*)
	bNegative		:BOOL;	(*joint is on negative side*)
END_STRUCT
END_TYPE             X  , d d p           ST_StartReferenceDialog (Q7U	(Q7U         &          ж   TYPE ST_StartReferenceDialog :
STRUCT
	bShow		:BOOL; 	(*reference wizard active*)
	bYes		:BOOL;	(*joint is on positive side*)
	bNo			:BOOL;	(*joint is on negative side*)
	bReserved	:BYTE;
END_STRUCT
END_TYPE             K  ,   %G           ST_TurnTableState ^M7U	^M7U      |	0.			T        h   TYPE ST_TurnTableState :
STRUCT
	TurnTableGrasped		:BOOL;
	InTrayArea				:BOOL;
END_STRUCT
END_TYPE             V N   ,   Р=           F_ADSLOGERROR ^M7U	^M7U      xЊ фHШ;          FUNCTION F_ADSLOGERROR : DINT
(* This function logs communication error messages to the TwinCAT System Log View *)
VAR_INPUT
	sPrefix		: STRING(20);(* Debug message prefix string (allows the identification of log message source) *)
	nErrID		: DWORD; (* Error code *)
END_VAR
Џ  IF nErrId = 0 THEN
	F_ADSLOGERROR := ADSLOGSTR( ADSLOG_MSGTYPE_HINT OR ADSLOG_MSGTYPE_LOG, CONCAT( sPrefix, ' No error!   %s'),'' );
ELSIF (  nErrId AND DWORD#16#80000000 ) = 16#80000000 THEN
	F_ADSLOGERROR := ADSLOGDINT( ADSLOG_MSGTYPE_ERROR OR ADSLOG_MSGTYPE_LOG, CONCAT( sPrefix, ' Win32 error: %d' ), DWORD_TO_DINT(SCODE_CODE( nErrId )) );
ELSIF (nErrId AND 16#00008100) =16#00008100 THEN
	F_ADSLOGERROR := ADSLOGDINT( ADSLOG_MSGTYPE_ERROR OR ADSLOG_MSGTYPE_LOG, CONCAT( sPrefix, ' Internal PLC sample project (user) error: %d' ), DWORD_TO_DINT(nErrId) );
ELSIF (nErrId AND 16#00008000) =16#00008000 THEN
	F_ADSLOGERROR := ADSLOGDINT( ADSLOG_MSGTYPE_ERROR OR ADSLOG_MSGTYPE_LOG, CONCAT( sPrefix, ' Internal TCP/IP Connection Server error: %d' ), DWORD_TO_DINT(nErrId) );
ELSE
	F_ADSLOGERROR := ADSLOGDINT( ADSLOG_MSGTYPE_ERROR OR ADSLOG_MSGTYPE_LOG, CONCAT( sPrefix, ' TwinCAT System error: %d' ), DWORD_TO_DINT(nErrId) );
END_IF               O   , Z Z fy           F_ADSLOGSTRING ^M7U	^M7U      xЊ фHШ;          FUNCTION F_ADSLOGSTRING : DINT
(* This function logs message string to the TwinCAT System Log View *)
VAR_INPUT
	sPrefix	: STRING(20);(* Debug message prefix string (allows the identification of log message source) *)
	sMsg	: T_MaxString;(* Message string *)
END_VAR
VAR
END_VARh   F_ADSLOGSTRING := ADSLOGSTR( ADSLOG_MSGTYPE_HINT OR ADSLOG_MSGTYPE_LOG, CONCAT( sPrefix, '%s' ), sMsg );               :   ,   *=           F_CalcVelocity ^M7U	^M7U       §џ          с   FUNCTION F_CalcVelocity : ARRAY[1..6] OF LREAL
VAR_INPUT
	Position	:	ARRAY[1..6] OF LREAL;
	Velocity	:	LREAL;
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PosDiff	:	ARRAY[1..6] OF LREAL;
END_VAR  
(*Calculating the Position Difference: *)

PosDiff[1] := ABS( Position[1] - Axis[1].NcToPlc.ActPos );
PosDiff[2] := ABS( Position[2] - Axis[2].NcToPlc.ActPos );
PosDiff[3] := ABS( Position[3] - Axis[3].NcToPlc.ActPos );
PosDiff[4] := ABS( Position[4] - Axis[4].NcToPlc.ActPos );
PosDiff[5] := ABS( Position[5] - Axis[5].NcToPlc.ActPos );
PosDiff[6] := ABS( Position[6] - Axis[6].NcToPlc.ActPos );

IF Velocity > stParams.MaxVelocity THEN
	Velocity := stParams.MaxVelocity;
END_IF

(*Axis 6 always turns with Input Velocity*)
F_CalcVelocity[6] := Velocity;

(*Axis 1 has biggest way to move: *)
IF PosDiff[1]<>0 AND
	PosDiff[1] >= PosDiff[2] AND
	PosDiff[1] >= PosDiff[3] AND
	PosDiff[1] >= PosDiff[4] AND
	PosDiff[1] >= PosDiff[5]
(*	PosDiff[1] >= PosDiff[6]*)
THEN
	F_CalcVelocity[1] := Velocity;
	F_CalcVelocity[2] := Velocity/PosDiff[1]*PosDiff[2];
	F_CalcVelocity[3] := Velocity/PosDiff[1]*PosDiff[3];
	F_CalcVelocity[4] := Velocity/PosDiff[1]*PosDiff[4];
	F_CalcVelocity[5] := Velocity/PosDiff[1]*PosDiff[5];
(*	F_CalcVelocity[6] := Velocity/PosDiff[1]*PosDiff[6]; *)
	F_CalcVelocity[6] := stParams.MaxVelocity;

(*Axis 2 has biggest way to move: *)
ELSIF PosDiff[2]<>0 AND
	PosDiff[2] > PosDiff[1] AND
	PosDiff[2] >= PosDiff[3] AND
	PosDiff[2] >= PosDiff[4] AND
	PosDiff[2] >= PosDiff[5]
(*	PosDiff[2] >= PosDiff[6]*)
THEN
	F_CalcVelocity[2] := Velocity;
	F_CalcVelocity[1] := Velocity/PosDiff[2]*PosDiff[1];
	F_CalcVelocity[3] := Velocity/PosDiff[2]*PosDiff[3];
	F_CalcVelocity[4] := Velocity/PosDiff[2]*PosDiff[4];
	F_CalcVelocity[5] := Velocity/PosDiff[2]*PosDiff[5];
(*	F_CalcVelocity[6] := Velocity/PosDiff[2]*PosDiff[6];*)
	F_CalcVelocity[6] := stParams.MaxVelocity;

(*Axis 3 has biggest way to move: *)
ELSIF PosDiff[3]<>0 AND
	PosDiff[3] > PosDiff[1] AND
	PosDiff[3] > PosDiff[2] AND
	PosDiff[3] >= PosDiff[4] AND
	PosDiff[3] >= PosDiff[5]
(*	PosDiff[3] >= PosDiff[6]*)
THEN
	F_CalcVelocity[3] := Velocity;
	F_CalcVelocity[1] := Velocity/PosDiff[3]*PosDiff[1];
	F_CalcVelocity[2] := Velocity/PosDiff[3]*PosDiff[2];
	F_CalcVelocity[4] := Velocity/PosDiff[3]*PosDiff[4];
	F_CalcVelocity[5] := Velocity/PosDiff[3]*PosDiff[5];
(*	F_CalcVelocity[6] := Velocity/PosDiff[3]*PosDiff[6];*)
	F_CalcVelocity[6] := stParams.MaxVelocity;

(*Axis 4 has biggest way to move: *)
ELSIF PosDiff[4]<>0 AND
	PosDiff[4] > PosDiff[1] AND
	PosDiff[4] > PosDiff[2] AND
	PosDiff[4] > PosDiff[3] AND
	PosDiff[4] >= PosDiff[5]
(*	PosDiff[4] >= PosDiff[6]*)
THEN
	F_CalcVelocity[4] := Velocity;
	F_CalcVelocity[1] := Velocity/PosDiff[4]*PosDiff[1];
	F_CalcVelocity[2] := Velocity/PosDiff[4]*PosDiff[2];
	F_CalcVelocity[3] := Velocity/PosDiff[4]*PosDiff[3];
	F_CalcVelocity[5] := Velocity/PosDiff[4]*PosDiff[5];
(*	F_CalcVelocity[6] := Velocity/PosDiff[4]*PosDiff[6];*)
	F_CalcVelocity[6] := stParams.MaxVelocity;

(*Axis 5 has biggest way to move: *)
ELSIF PosDiff[5]<>0 AND
	PosDiff[5] > PosDiff[1] AND
	PosDiff[5] > PosDiff[2] AND
	PosDiff[5] > PosDiff[3] AND
	PosDiff[5] > PosDiff[4]
(*	PosDiff[5] >= PosDiff[6]*)
THEN
	F_CalcVelocity[5] := Velocity;
	F_CalcVelocity[1] := Velocity/PosDiff[5]*PosDiff[1];
	F_CalcVelocity[2] := Velocity/PosDiff[5]*PosDiff[2];
	F_CalcVelocity[3] := Velocity/PosDiff[5]*PosDiff[3];
	F_CalcVelocity[4] := Velocity/PosDiff[5]*PosDiff[4];
(*	F_CalcVelocity[6] := Velocity/PosDiff[5]*PosDiff[6];*)
	F_CalcVelocity[6] := stParams.MaxVelocity;


(*Axis 6 has biggest way to move: *)
ELSIF PosDiff[6]<>0 AND
	PosDiff[6] > PosDiff[1] AND
	PosDiff[6] > PosDiff[2] AND
	PosDiff[6] > PosDiff[3] AND
	PosDiff[6] > PosDiff[4] AND
	PosDiff[6] > PosDiff[5]
THEN
	F_CalcVelocity[6] := stParams.MaxVelocity;
	F_CalcVelocity[1] := Velocity/PosDiff[6]*PosDiff[1];
	F_CalcVelocity[2] := Velocity/PosDiff[6]*PosDiff[2];
	F_CalcVelocity[3] := Velocity/PosDiff[6]*PosDiff[3];
	F_CalcVelocity[4] := Velocity/PosDiff[6]*PosDiff[4];
	F_CalcVelocity[5] := Velocity/PosDiff[6]*PosDiff[5];
END_IF


IF F_CalcVelocity[1] < stParams.MinVelocity THEN
	F_CalcVelocity[1] := stParams.MinVelocity;
END_IF

IF F_CalcVelocity[2] < stParams.MinVelocity THEN
	F_CalcVelocity[2] := stParams.MinVelocity;
END_IF

IF F_CalcVelocity[3] < stParams.MinVelocity THEN
	F_CalcVelocity[3] := stParams.MinVelocity;
END_IF

IF F_CalcVelocity[4] < stParams.MinVelocity THEN
	F_CalcVelocity[4] := stParams.MinVelocity;
END_IF

IF F_CalcVelocity[5] < stParams.MinVelocity THEN
	F_CalcVelocity[5] := stParams.MinVelocity;
END_IF

IF F_CalcVelocity[6] < stParams.MinVelocity THEN
	F_CalcVelocity[6] := stParams.MinVelocity;
END_IF

               *  , K K             F_CheckAtCandlePos ^M7U	^M7U      клxлшл           FUNCTION F_CheckAtCandlePos : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=0.8;
END_VARZ  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fCandlePosition[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fCandlePosition[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fCandlePosition[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fCandlePosition[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fCandlePosition[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fCandlePosition[6]) < PositionWindow
THEN
	IF F_CheckIfInTargetPos(Axis) THEN
		F_CheckAtCandlePos := TRUE;
	END_IF
ELSE
	F_CheckAtCandlePos := FALSE;
END_IF

               %   ,   *=           F_CheckAtFinalGraspFromFloorPos ^M7U	^M7U       §џ          Ј   FUNCTION F_CheckAtFinalGraspFromFloorPos : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=0.5;
END_VARС  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fFinalGraspFromFloor[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fFinalGraspFromFloor[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fFinalGraspFromFloor[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fFinalGraspFromFloor[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fFinalGraspFromFloor[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fFinalGraspFromFloor[6]) < PositionWindow
THEN
	F_CheckAtFinalGraspFromFloorPos := TRUE;

(*	IF F_CheckIfInTargetPos(Axis) THEN
		F_CheckAtFinalGraspFromFloorPos := TRUE;
	END_IF
*)
ELSE
	F_CheckAtFinalGraspFromFloorPos := FALSE;
END_IF               &   ,   *=           F_CheckAtFinalGraspTrayPosition ^M7U	^M7U      И`	№        І   FUNCTION F_CheckAtFinalGraspTrayPosition : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=1;
END_VARЁ  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fFinalGraspTray[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fFinalGraspTray[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fFinalGraspTray[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fFinalGraspTray[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fFinalGraspTray[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fFinalGraspTray[6]) < PositionWindow
THEN
(*	F_CheckAtFinalGraspTrayPosition := TRUE;*)

	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtFinalGraspTrayPosition := TRUE;
	END_IF

ELSE
	F_CheckAtFinalGraspTrayPosition := FALSE;
END_IF               '   , Д Д Рг        $   F_CheckAtFinalGraspTurntablePosition ^M7U	^M7U      pя ^8гР=        Ћ   FUNCTION F_CheckAtFinalGraspTurntablePosition : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=1;
END_VAR  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fFinalGraspTurntable[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fFinalGraspTurntable[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fFinalGraspTurntable[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fFinalGraspTurntable[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fFinalGraspTurntable[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fFinalGraspTurntable[6]) < PositionWindow
THEN
	IF F_CheckIfInTargetPos(Axis) THEN
		F_CheckAtFinalGraspTurntablePosition := TRUE;
	END_IF
ELSE
	F_CheckAtFinalGraspTurntablePosition := FALSE;
END_IF               (   , n n $V        %   F_CheckAtFinalPutObjecttoTrayPosition ^M7U	^M7U         &          Ќ   FUNCTION F_CheckAtFinalPutObjecttoTrayPosition : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=1;
END_VARб  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fFinalPutObjectToTray[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fFinalPutObjectToTray[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fFinalPutObjectToTray[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fFinalPutObjectToTray[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fFinalPutObjectToTray[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fFinalPutObjectToTray[6]) < PositionWindow
THEN
(*	F_CheckAtFinalGraspTrayPosition := TRUE;*)

	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtFinalPutObjecttoTrayPosition := TRUE;
	END_IF

ELSE
	F_CheckAtFinalPutObjecttoTrayPosition := FALSE;
END_IF               )   , , , 8L        $   F_CheckAtFinalStoreTurntablePosition ^M7U	^M7U      GGјGhH        Ћ   FUNCTION F_CheckAtFinalStoreTurntablePosition : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=1;
END_VAR  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fFinalStoreTurntable[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fFinalStoreTurntable[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fFinalStoreTurntable[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fFinalStoreTurntable[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fFinalStoreTurntable[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fFinalStoreTurntable[6]) < PositionWindow
THEN
	IF F_CheckIfInTargetPos(Axis) THEN
		F_CheckAtFinalStoreTurntablePosition := TRUE;
	END_IF
ELSE
	F_CheckAtFinalStoreTurntablePosition := FALSE;
END_IF               *   , в в оё           F_CheckAtHomePosition ^M7U	^M7U      U=               FUNCTION F_CheckAtHomePosition : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=0.8;
END_VART  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fHomePosition[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fHomePosition[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fHomePosition[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fHomePosition[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fHomePosition[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fHomePosition[6]) < PositionWindow
THEN
	IF F_CheckIfInTargetPos(Axis) THEN
		F_CheckAtHomePosition := TRUE;
	END_IF
ELSE
	F_CheckAtHomePosition := FALSE;
END_IF

               +   ,   ЂЕ           F_CheckAtLearningPosition ^M7U	^M7U      Јл8 §            FUNCTION F_CheckAtLearningPosition : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=1;
END_VARu  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fLearningPosition[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fLearningPosition[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fLearningPosition[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fLearningPosition[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fLearningPosition[5]) < PositionWindow (*AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fLearningPosition[6]) < PositionWindow*)
THEN
(*
	IF F_CheckIfInTargetPos(Axis) THEN
		F_CheckAtLearningPosition := TRUE;
	END_IF
*)
	IF Axis[1].Status.InTargetPosition AND
		Axis[2].Status.InTargetPosition AND
		Axis[3].Status.InTargetPosition AND
		Axis[4].Status.InTargetPosition AND
		Axis[5].Status.InTargetPosition
	THEN
		F_CheckAtLearningPosition := TRUE;
	END_IF

ELSE
	F_CheckAtLearningPosition := FALSE;
END_IF               ,   ,   *=           F_CheckAtMoveArmOutPos ^M7U	^M7U         О            FUNCTION F_CheckAtMoveArmOutPos : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=2;
END_VARD  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fMoveArmOut[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fMoveArmOut[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fMoveArmOut[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fMoveArmOut[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fMoveArmOut[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fMoveArmOut[6]) < PositionWindow
THEN
	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtMoveArmOutPos := TRUE;
	END_IF
ELSE
	F_CheckAtMoveArmOutPos := FALSE;
END_IF               %  , (           F_CheckAtMoveArmOutPos2 ^M7U	^M7U         &             FUNCTION F_CheckAtMoveArmOutPos2 : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=2;
END_VARL  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fMoveArmOut2[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fMoveArmOut2[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fMoveArmOut2[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fMoveArmOut2[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fMoveArmOut2[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fMoveArmOut2[6]) < PositionWindow
THEN
	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtMoveArmOutPos2 := TRUE;
	END_IF
ELSE
	F_CheckAtMoveArmOutPos2 := FALSE;
END_IF               $  , X X dx           F_CheckAtMoveArmOutPos3 ^M7U	^M7U       §џ             FUNCTION F_CheckAtMoveArmOutPos3 : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=2;
END_VARL  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fMoveArmOut3[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fMoveArmOut3[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fMoveArmOut3[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fMoveArmOut3[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fMoveArmOut3[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fMoveArmOut3[6]) < PositionWindow
THEN
	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtMoveArmOutPos3 := TRUE;
	END_IF
ELSE
	F_CheckAtMoveArmOutPos3 := FALSE;
END_IF               -   , < < H[           F_CheckAtPreGraspFromFloorPos ^M7U	^M7U      hh№wu        Є   FUNCTION F_CheckAtPreGraspFromFloorPos : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=2;
END_VAR|  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fPreGraspFromFloor[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fPreGraspFromFloor[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fPreGraspFromFloor[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fPreGraspFromFloor[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fPreGraspFromFloor[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fPreGraspFromFloor[6]) < PositionWindow
THEN
	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtPreGraspFromFloorPos := TRUE;
	END_IF
ELSE
	F_CheckAtPreGraspFromFloorPos := FALSE;
END_IF               #  , А А Ма           F_CheckAtPreGraspFromTablePos ^M7U	^M7U       §џ          Є   FUNCTION F_CheckAtPreGraspFromTablePos : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=2;
END_VAR|  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fPreGraspFromTable[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fPreGraspFromTable[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fPreGraspFromTable[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fPreGraspFromTable[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fPreGraspFromTable[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fPreGraspFromTable[6]) < PositionWindow
THEN
	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtPreGraspFromTablePos := TRUE;
	END_IF
ELSE
	F_CheckAtPreGraspFromTablePos := FALSE;
END_IF               .   , < < H[           F_CheckAtPregraspTrayPos1 ^M7U	^M7U      И`	№            FUNCTION F_CheckAtPregraspTrayPos1 : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=2;
END_VAR\  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fPreGraspTray1[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fPreGraspTray1[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fPreGraspTray1[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fPreGraspTray1[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fPreGraspTray1[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fPreGraspTray1[6]) < PositionWindow
THEN
	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtPregraspTrayPos1 := TRUE;
	END_IF
ELSE
	F_CheckAtPregraspTrayPos1 := FALSE;
END_IF               /   , , , d           F_CheckAtPregraspTrayPos2 ^M7U	^M7U       §џ              FUNCTION F_CheckAtPregraspTrayPos2 : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=2;
END_VAR\  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fPreGraspTray2[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fPreGraspTray2[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fPreGraspTray2[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fPreGraspTray2[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fPreGraspTray2[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fPreGraspTray2[6]) < PositionWindow
THEN
	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtPregraspTrayPos2 := TRUE;
	END_IF
ELSE
	F_CheckAtPregraspTrayPos2 := FALSE;
END_IF               0   , B B z           F_CheckAtPregraspTrayPos3 ^M7U	^M7U         &              FUNCTION F_CheckAtPregraspTrayPos3 : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=2;
END_VAR\  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fPreGraspTray3[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fPreGraspTray3[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fPreGraspTray3[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fPreGraspTray3[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fPreGraspTray3[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fPreGraspTray3[6]) < PositionWindow
THEN
	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtPregraspTrayPos3 := TRUE;
	END_IF
ELSE
	F_CheckAtPregraspTrayPos3 := FALSE;
END_IF               1   , Z Z fy        #   F_CheckAtPregraspTurntablePosition1 ^M7U	^M7U      рmipHi        Њ   FUNCTION F_CheckAtPregraspTurntablePosition1 : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=1;
END_VAR  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fPreGraspTurntable1[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fPreGraspTurntable1[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fPreGraspTurntable1[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fPreGraspTurntable1[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fPreGraspTurntable1[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fPreGraspTurntable1[6]) < PositionWindow
THEN
	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtPregraspTurntablePosition1 := TRUE;
	END_IF
ELSE
	F_CheckAtPregraspTurntablePosition1 := FALSE;
END_IF               2   , Д Д Рг        #   F_CheckAtPregraspTurntablePosition2 ^M7U	^M7U      АаЏ `ѕ        Њ   FUNCTION F_CheckAtPregraspTurntablePosition2 : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=1;
END_VAR  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fPreGraspTurntable2[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fPreGraspTurntable2[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fPreGraspTurntable2[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fPreGraspTurntable2[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fPreGraspTurntable2[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fPreGraspTurntable2[6]) < PositionWindow
THEN
	IF F_CheckIfInTargetPos(Axis) THEN
		F_CheckAtPregraspTurntablePosition2 := TRUE;
	END_IF
ELSE
	F_CheckAtPregraspTurntablePosition2 := FALSE;
END_IF               3   , , , т           F_CheckAtPrePutObjectToTrayPos1 ^M7U	^M7U         &          І   FUNCTION F_CheckAtPrePutObjectToTrayPos1 : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=2;
END_VAR  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fPrePutObjectToTray1[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fPrePutObjectToTray1[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fPrePutObjectToTray1[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fPrePutObjectToTray1[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fPrePutObjectToTray1[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fPrePutObjectToTray1[6]) < PositionWindow
THEN
	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtPrePutObjectToTrayPos1 := TRUE;
	END_IF
ELSE
	F_CheckAtPrePutObjectToTrayPos1 := FALSE;
END_IF               4   , B B ј*           F_CheckAtPrePutObjectToTrayPos2 ^M7U	^M7U         &          І   FUNCTION F_CheckAtPrePutObjectToTrayPos2 : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=2;
END_VAR  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fPrePutObjectToTray2[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fPrePutObjectToTray2[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fPrePutObjectToTray2[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fPrePutObjectToTray2[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fPrePutObjectToTray2[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fPrePutObjectToTray2[6]) < PositionWindow
THEN
	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtPrePutObjectToTrayPos2 := TRUE;
	END_IF
ELSE
	F_CheckAtPrePutObjectToTrayPos2 := FALSE;
END_IF               5   , X X @           F_CheckAtPrePutObjectToTrayPos3 ^M7U	^M7U         &          І   FUNCTION F_CheckAtPrePutObjectToTrayPos3 : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=2;
END_VAR  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fPrePutObjectToTray3[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fPrePutObjectToTray3[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fPrePutObjectToTray3[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fPrePutObjectToTray3[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fPrePutObjectToTray3[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fPrePutObjectToTray3[6]) < PositionWindow
THEN
	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtPrePutObjectToTrayPos3 := TRUE;
	END_IF
ELSE
	F_CheckAtPrePutObjectToTrayPos3 := FALSE;
END_IF               6   , (        #   F_CheckAtPreStoreTurntablePosition1 ^M7U	^M7U       §џ          Њ   FUNCTION F_CheckAtPreStoreTurntablePosition1 : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=1;
END_VAR  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fPreStoreTurntable1[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fPreStoreTurntable1[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fPreStoreTurntable1[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fPreStoreTurntable1[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fPreStoreTurntable1[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fPreStoreTurntable1[6]) < PositionWindow
THEN
	IF F_CheckIfInPosArea(Axis) THEN
		F_CheckAtPreStoreTurntablePosition1 := TRUE;
	END_IF
ELSE
	F_CheckAtPreStoreTurntablePosition1 := FALSE;
END_IF               7   ,              #   F_CheckAtPreStoreTurntablePosition2 ^M7U	^M7U      №ёxёшё        Њ   FUNCTION F_CheckAtPreStoreTurntablePosition2 : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=1;
END_VAR  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fPreStoreTurntable2[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fPreStoreTurntable2[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fPreStoreTurntable2[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fPreStoreTurntable2[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fPreStoreTurntable2[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fPreStoreTurntable2[6]) < PositionWindow
THEN
	IF F_CheckIfInTargetPos(Axis) THEN
		F_CheckAtPreStoreTurntablePosition2 := TRUE;
	END_IF
ELSE
	F_CheckAtPreStoreTurntablePosition2 := FALSE;
END_IF               8   , Д Д Рг           F_CheckAtTurntableCCWPosition ^M7U	^M7U      X3axc(        Є   FUNCTION F_CheckAtTurntableCCWPosition : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=1;
END_VAR?  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fTurntableCCW[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fTurntableCCW[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fTurntableCCW[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fTurntableCCW[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fTurntableCCW[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fTurntableCCW[6]) < PositionWindow
THEN
	IF F_CheckIfInTargetPos(Axis) THEN
		F_CheckAtTurntableCCWPosition := TRUE;
	END_IF
ELSE
	F_CheckAtTurntableCCWPosition := FALSE;
END_IF

(*
IF ABS(Axis[6].NcToPlc.ActPos-stParams.fTurntableCCW[6]) < PositionWindow AND Axis[6].Status.InTargetPosition THEN
	F_CheckAtTurntableCCWPosition := TRUE;
ELSE
	F_CheckAtTurntableCCWPosition := FALSE;
END_IF
*)               9   ,   ЂЕ           F_CheckAtTurntableCWPosition ^M7U	^M7U       ^_ЩУ          Ѓ   FUNCTION F_CheckAtTurntableCWPosition : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	PositionWindow	:	LREAL:=1;
END_VAR4  IF ABS(Axis[1].NcToPlc.ActPos-stParams.fTurntableCW[1]) < PositionWindow AND
	ABS(Axis[2].NcToPlc.ActPos-stParams.fTurntableCW[2]) < PositionWindow AND
	ABS(Axis[3].NcToPlc.ActPos-stParams.fTurntableCW[3]) < PositionWindow AND
	ABS(Axis[4].NcToPlc.ActPos-stParams.fTurntableCW[4]) < PositionWindow AND
	ABS(Axis[5].NcToPlc.ActPos-stParams.fTurntableCW[5]) < PositionWindow AND
	ABS(Axis[6].NcToPlc.ActPos-stParams.fTurntableCW[6]) < PositionWindow
THEN
	IF F_CheckIfInTargetPos(Axis) THEN
		F_CheckAtTurntableCWPosition := TRUE;
	END_IF
ELSE
	F_CheckAtTurntableCWPosition := FALSE;
END_IF

(*
IF ABS(Axis[6].NcToPlc.ActPos-stParams.fTurntableCW[6]) < PositionWindow AND Axis[6].Status.InTargetPosition THEN
	F_CheckAtTurntableCWPosition := TRUE;
ELSE
	F_CheckAtTurntableCWPosition := FALSE;
END_IF
*)                  , № № ќ           F_CheckAxisHaveStopped ^M7U	^M7U      s e fat            FUNCTION F_CheckAxisHaveStopped : BOOL
VAR_INPUT
END_VAR

VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;

END_VAR

VAR
END_VAR/  IF Axis[1].Status.HasBeenStopped AND
	Axis[2].Status.HasBeenStopped AND
	Axis[3].Status.HasBeenStopped AND
	Axis[4].Status.HasBeenStopped AND
	Axis[5].Status.HasBeenStopped AND
	Axis[6].Status.HasBeenStopped
THEN
	F_CheckAxisHaveStopped := TRUE;
ELSE
	F_CheckAxisHaveStopped := FALSE;
END_IF
               0                      F_CheckAxisInPositionWindow ^M7U	^M7U           J        Ё   FUNCTION F_CheckAxisInPositionWindow : BOOL
VAR_INPUT
	SetPosition: REAL;
	PositionWindow: REAL;
END_VAR
VAR_IN_OUT
	Axis: Axis_Ref;
END_VAR
VAR
END_VAR   IF (ABS(Axis.NcToPlc.ActPos-SetPosition)<PositionWindow) THEN
	F_CheckAxisInPositionWindow	 := TRUE;
ELSE
	F_CheckAxisInPositionWindow	 := FALSE;
END_IF                  ,   AЕ           F_CheckIfAllAxisHomed ^M7U	^M7U      јЇи шѕ           FUNCTION F_CheckIfAllAxisHomed : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;

END_VAR
VAR
END_VARѕ   IF Axis[1].Status.Homed AND
	Axis[2].Status.Homed AND
	Axis[3].Status.Homed AND
	Axis[4].Status.Homed AND
	Axis[5].Status.Homed AND
	Axis[6].Status.Homed
THEN
	F_CheckIfAllAxisHomed := TRUE;
ELSE
	F_CheckIfAllAxisHomed := FALSE;
END_IF                  , Д Д Vг           F_CheckIfAxisDisabled ^M7U	^M7U      .               FUNCTION F_CheckIfAxisDisabled : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
END_VAR?  (* If all Axis are Disabled, then output is true: *)

IF Axis[1].Status.Disabled AND
	Axis[2].Status.Disabled AND
	Axis[3].Status.Disabled AND
	Axis[4].Status.Disabled AND
	Axis[5].Status.Disabled AND
	Axis[6].Status.Disabled
THEN
	F_CheckIfAxisDisabled := TRUE;
ELSE
	F_CheckIfAxisDisabled := FALSE;
END_IF                  , < < ч[           F_CheckIfAxisEnabled ^M7U	^M7U       §џ             FUNCTION F_CheckIfAxisEnabled : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;

END_VAR
VAR
END_VAR  IF Axis[1].Status.Disabled OR
	Axis[2].Status.Disabled OR
	Axis[3].Status.Disabled OR
	Axis[4].Status.Disabled OR
	Axis[5].Status.Disabled OR
	Axis[6].Status.Disabled
THEN
	F_CheckIfAxisEnabled := FALSE;
ELSE
	F_CheckIfAxisEnabled := TRUE;
END_IF
                  , Д Д _г           F_CheckIfAxisHasError ^M7U	^M7U       Swsn ic           FUNCTION F_CheckIfAxisHasError : BOOL
VAR_INPUT
END_VAR

VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;

END_VAR

VAR
END_VAR№   IF Axis[1].Status.Error OR
	Axis[2].Status.Error OR
	Axis[3].Status.Error OR
	Axis[4].Status.Error OR
	Axis[5].Status.Error OR
	Axis[6].Status.Error
THEN
	F_CheckIfAxisHasError := TRUE;
ELSE
	F_CheckIfAxisHasError := FALSE;
END_IF                  ,   *=           F_CheckIfAxisHasJob ^M7U	^M7U         &          }   FUNCTION F_CheckIfAxisHasJob : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
END_VARђ   IF Axis[1].Status.HasJob OR
	Axis[2].Status.HasJob OR
	Axis[3].Status.HasJob OR
	Axis[4].Status.HasJob OR
	Axis[5].Status.HasJob OR
	Axis[6].Status.HasJob
THEN
	F_CheckIfAxisHasJob := TRUE;
ELSE
	F_CheckIfAxisHasJob := FALSE;
END_IF                  , № №            F_CheckIfAxisIsMoving ^M7U	^M7U       §џ             FUNCTION F_CheckIfAxisIsMoving : BOOL
VAR_INPUT
END_VAR

VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;

END_VAR

VAR
END_VARј   IF Axis[1].Status.Moving OR
	Axis[2].Status.Moving OR
	Axis[3].Status.Moving OR
	Axis[4].Status.Moving OR
	Axis[5].Status.Moving OR
	Axis[6].Status.Moving
THEN
	F_CheckIfAxisIsMoving := TRUE;
ELSE
	F_CheckIfAxisIsMoving := FALSE;
END_IF
                  ,   8Е           F_CheckIfAxisNotMoving ^M7U	^M7U      iore
sM           FUNCTION F_CheckIfAxisNotMoving : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
END_VAR  IF Axis[1].Status.NotMoving AND
	Axis[2].Status.NotMoving AND
	Axis[3].Status.NotMoving AND
	Axis[4].Status.NotMoving AND
	Axis[5].Status.NotMoving AND
	Axis[6].Status.NotMoving
THEN
	F_CheckIfAxisNotMoving := TRUE;
ELSE
	F_CheckIfAxisNotMoving := FALSE;
END_IF                  , Д Д §г           F_CheckIfHomingIsBusy ^M7U	^M7U      йF)               FUNCTION F_CheckIfHomingIsBusy : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
END_VAR  IF Axis[1].Status.HomingBusy OR
	Axis[2].Status.HomingBusy OR
	Axis[3].Status.HomingBusy OR
	Axis[4].Status.HomingBusy OR
	Axis[5].Status.HomingBusy OR
	Axis[6].Status.HomingBusy
THEN
	F_CheckIfHomingIsBusy := TRUE;
ELSE
	F_CheckIfHomingIsBusy := FALSE;
END_IF                   , Z Z fy           F_CheckIfInPosArea ^M7U	^M7U       рИ з        ~   FUNCTION F_CheckIfInPosArea : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;

END_VAR
VAR
END_VAR%  IF Axis[1].Status.InPositionArea AND
	Axis[2].Status.InPositionArea AND
	Axis[3].Status.InPositionArea AND
	Axis[4].Status.InPositionArea AND
	Axis[5].Status.InPositionArea AND
	Axis[6].Status.InPositionArea
THEN
	F_CheckIfInPosArea := TRUE;
ELSE
	F_CheckIfInPosArea := FALSE;
END_IF               !   , x x            F_CheckIfInTargetPos ^M7U	^M7U      yBto:=AL           FUNCTION F_CheckIfInTargetPos : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;

END_VAR
VAR
	i: INT;
END_VAR   F_CheckIfInTargetPos := TRUE;

FOR i:=1 TO 6 DO
	IF NOT Axis[i].Status.InTargetPosition THEN
		F_CheckIfInTargetPos := FALSE;
	END_IF
END_FOR               /  , , , rщ           F_CheckIfInTargetPosEx ^M7U	^M7U      ''ј'ў        ж   FUNCTION F_CheckIfInTargetPosEx : BOOL
VAR_INPUT
	fPosition	:	ARRAY[1..6] OF LREAL;
	PositionWindow 	:ARRAY[1..6] OF REAL;
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
	i: INT;
END_VARц   F_CheckIfInTargetPosEx := TRUE;

FOR i:=1 TO 6 DO
	IF NOT Axis[i].Status.InTargetPosition
	OR NOT F_CheckAxisInPositionWindow(fPosition[i], PositionWindow[i], Axis[i]) THEN
		F_CheckIfInTargetPosEx := FALSE;
	END_IF
END_FOR               "   , x x            F_CheckIfNextPosIsOutOfPosArea ^M7U	^M7U      _№Я [ q        й   FUNCTION F_CheckIfNextPosIsOutOfPosArea : BOOL
VAR_INPUT
	NextPosition		:	ARRAY[1..6] OF LREAL;
	PositionWindow	:	ARRAY[1..6] OF LREAL;
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR
END_VAR  
IF ABS(NextPosition[1] - Axis[1].NcToPlc.ActPos) > PositionWindow[1] OR
	ABS(NextPosition[2] - Axis[2].NcToPlc.ActPos) > PositionWindow[2] OR
	ABS(NextPosition[3] - Axis[3].NcToPlc.ActPos) > PositionWindow[3] OR
	ABS(NextPosition[4] - Axis[4].NcToPlc.ActPos) > PositionWindow[4] OR
	ABS(NextPosition[5] - Axis[5].NcToPlc.ActPos) > PositionWindow[5] OR
	ABS(NextPosition[6] - Axis[6].NcToPlc.ActPos) > PositionWindow[6]
THEN
	F_CheckIfNextPosIsOutOfPosArea := TRUE;
ELSE
	F_CheckIfNextPosIsOutOfPosArea := FALSE;
END_IF               #   ,   8Е           F_CheckIfSoftLimitMax ^M7U	^M7U      tuInrgPo           FUNCTION F_CheckIfSoftLimitMax : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;

END_VAR
VAR
END_VARJ  IF Axis[1].Status.SoftLimitMaxExceeded OR
	Axis[2].Status.SoftLimitMaxExceeded OR
	Axis[3].Status.SoftLimitMaxExceeded OR
	Axis[4].Status.SoftLimitMaxExceeded OR
	Axis[5].Status.SoftLimitMaxExceeded OR
	Axis[6].Status.SoftLimitMaxExceeded
THEN
	F_CheckIfSoftLimitMax := TRUE;
ELSE
	F_CheckIfSoftLimitMax := FALSE;
END_IF               $   , Д Д Vг           F_CheckIfSoftLimitMin ^M7U	^M7U      tuInrgPo           FUNCTION F_CheckIfSoftLimitMin : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;

END_VAR
VAR
END_VARJ  IF Axis[1].Status.SoftLimitMinExceeded OR
	Axis[2].Status.SoftLimitMinExceeded OR
	Axis[3].Status.SoftLimitMinExceeded OR
	Axis[4].Status.SoftLimitMinExceeded OR
	Axis[5].Status.SoftLimitMinExceeded OR
	Axis[6].Status.SoftLimitMinExceeded
THEN
	F_CheckIfSoftLimitMin := TRUE;
ELSE
	F_CheckIfSoftLimitMin := FALSE;
END_IF               8  , Џ Џ Лd           F_CheckJointSide ^M7U	^M7U         &          I   FUNCTION F_CheckJointSide : E_JointSide
VAR_INPUT
END_VAR
VAR
END_VARі   IF stReferenceDialog.bPositive THEN
	F_ResetDialog();
	F_CheckJointSide := E_Joint_Positive;
ELSIF stReferenceDialog.bNegative THEN
	F_ResetDialog();
	F_CheckJointSide := E_Joint_Negative;
ELSE
	F_CheckJointSide := E_Joint_Unknown;
END_IF               `  , 2 2 _ќ           F_CheckStartRef ]7U	Љ[7U       §џ          G   FUNCTION F_CheckStartRef : E_Decision
VAR_INPUT
END_VAR
VAR
END_VARё   IF stStartRefDialog.bYes THEN
	F_ResetStartRefDialog();
	F_CheckStartRef := E_Decision_YES;
ELSIF stStartRefDialog.bNo THEN
	F_ResetStartRefDialog();
	F_CheckStartRef := E_Decision_NO;
ELSE
	F_CheckStartRef := E_Decision_NONE;
END_IF               I   , x x            F_CutString ^M7U	^M7U       ]+          Т   FUNCTION F_CutString : ARRAY[0..20] OF STRING
VAR_INPUT
	IN:			T_MaxString;
	sDelimiter:	STRING:='/';
END_VAR
VAR
	_str		:	T_MaxString;
	i: UINT;
	iCutPos	:	ARRAY[0..20] OF INT;
END_VARЅ  _str := IN;

FOR i:=0 TO 20 DO
	iCutPos[i] := FIND(_str,sDelimiter);
	IF iCutPos[i] > 0 THEN
		_str := REPLACE( _str, '&', 1, iCutPos[i] );
	ELSE
		EXIT;
	END_IF

END_FOR


FOR i:=0 TO 20 DO
	IF iCutPos[i] > 0 THEN
		IF i=0 THEN
			F_CutString[i]:=LEFT(_str, iCutPos[i]-1);
		ELSE
			F_CutString[i]:=MID(_str, iCutPos[i] - iCutPos[i-1]-1, iCutPos[i-1]+1);
		END_IF
	ELSE
		EXIT;
	END_IF
END_FOR

               J   , № № ќо           F_MergeSendArmState ^M7U	^M7U       и(ыР'0Ѓ        б   FUNCTION F_MergeSendArmState : T_MaxString
VAR_INPUT
	Variable	:		STRING;
	sStatus	:		T_MaxString;
	STCommands	:		ST_Commands;
	sDelimiter	:	STRING;
END_VAR
VAR
	_str		:	T_MaxString;
	i: INT;
END_VARМ	  
_str := CONCAT( _str , Variable );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , sStatus );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.ARM_HAS_ERROR) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.ARM_HOMED) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.ARM_STOPPED) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.ARM_IN_POS_AREA) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.ARM_IN_TARGET_POS) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.ARM_IS_DISABLED) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.ARM_IS_MOVING) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.ARM_SOFTLIMIT_MAX) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.ARM_SOFTLIMIT_MIN) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.AT_HOME_POS) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.AT_LEARNING_POS) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.AT_TURNTABLE_POS) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.AT_TRAY_POS) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.AT_PREGRASPFROMFLOOR_POS) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.AT_PREGRASPFROMTABLE_POS) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.AT_CCW_POS) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.AT_CW_POS) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.AT_CANDLE_POS) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(STCommands.ArmState.GRIPPER_IS_CLOSED) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(bEmergencyButton) );
_str := CONCAT( _str , sDelimiter );

F_MergeSendArmState := _str;               D   ,   ЂЕ           F_MergeSendData ^M7U	^M7U      vЈXu        в   FUNCTION F_MergeSendData : T_MaxString
VAR_INPUT
	CMD	:		STRING;
	Variable	:		STRING;
	Value	:		BOOL;
	sDelimiter	:	STRING;
END_VAR
VAR
	_str		:	T_MaxString;
	_strData	:	T_MaxString;
	i: INT;
END_VARМ  _strData := BOOL_TO_STRING(Value);

_str := CONCAT( _str , CMD );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , Variable );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , _strData );
_str := CONCAT( _str , sDelimiter );
(*
_str := CONCAT( _str , BOOL_TO_STRING(_stData.ARM_HOMED) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(_stData.ARM_IN_POS_AREA) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(_stData.ARM_IN_TARGET_POS) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(_stData.ARM_IS_DISABLED) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(_stData.ARM_IS_MOVING) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(_stData.ARM_SOFTLIMIT_MAX) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(_stData.ARM_SOFTLIMIT_MIN) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(_stData.AT_HOME_POS) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(_stData.AT_LEARNING_POS) );
_str := CONCAT( _str , sDelimiter );
_str := CONCAT( _str , BOOL_TO_STRING(_stData.GRIPPER_IS_CLOSED) );
_str := CONCAT( _str , sDelimiter );
*)
(*
FOR i:=1 TO 6 DO

	_str := CONCAT( _str , DWORD_TO_STRING( Value[i]) );
	_str := CONCAT( _str , sDelimiter );

END_FOR
*)

F_MergeSendData := _str;               K   , Д Д Рг           F_MergeString ^M7U	^M7U      x`ДРЩ        К   FUNCTION F_MergeString : T_MaxString
VAR_INPUT
	IN			:		T_MaxString;
	sStatus		:		T_MaxString;
	sDelimiter	:		STRING:=';';
END_VAR
VAR
	_Merge		:	T_MaxString;
	i: INT;

END_VAR   _Merge := CONCAT( IN , sDelimiter );
_Merge := CONCAT( _Merge , sStatus );
_Merge := CONCAT( _Merge , sDelimiter );
F_MergeString := _Merge;               L   ,   ЂЕ           F_MergeStringOneValue ^M7U	^M7U       ШЈ8G        м   FUNCTION F_MergeStringOneValue : T_MaxString
VAR_INPUT
	IN			:		T_MaxString;
	sStatus		:		T_MaxString;
	sValue		:		T_MaxString;
	sDelimiter	:		STRING:=';';
END_VAR
VAR
	_Merge		:	T_MaxString;
	i: INT;

END_VARч   _Merge := CONCAT( IN , sDelimiter );
_Merge := CONCAT( _Merge , sStatus );
_Merge := CONCAT( _Merge , sDelimiter );
_Merge := CONCAT( _Merge , sValue );
_Merge := CONCAT( _Merge , sDelimiter );
F_MergeStringOneValue := _Merge;               M   , Д Д Рг           F_MergeStringValue ^M7U	^M7U      Аз`i~Аx        q  FUNCTION F_MergeStringValue : T_MaxString
VAR_INPUT
	IN			:		ARRAY[0..20] OF STRING;
	sStatus		:		T_MaxString;
	sDelimiter	:		STRING:=';';
	Value1		:		STRING;
	Value2		:		STRING;
	Value3		:		STRING;
	Value4		:		STRING;
	Value5		:		STRING;
	Value6		:		STRING;
END_VAR
VAR
	_Merge		:	T_MaxString;
	_Values		:	ARRAY[0..5] OF T_MaxString;
	i: INT;

END_VARЮ  _Values[0] := Value1;
_Values[1] := Value2;
_Values[2] := Value3;
_Values[3] := Value4;
_Values[4] := Value5;
_Values[5] := Value6;

_Merge := CONCAT( IN[1] , sDelimiter );
_Merge := CONCAT( _Merge , sStatus );
_Merge := CONCAT( _Merge , sDelimiter );

FOR i:=0 TO 5 DO
	IF _Values[i] <> '' THEN
		_Merge := CONCAT( _Merge , _Values[i] );
		_Merge := CONCAT( _Merge , sDelimiter );
	ELSE
		EXIT;
	END_IF
END_FOR

F_MergeStringValue := _Merge;               ;   , < < H[           F_ResetCommands ^M7U	^M7U      iore
sM        2  FUNCTION F_ResetCommands : BOOL
(*resets all commands*)
(*|------------------------------------------------------|
  | 16.10.2014|FlA|added some reset stuff of stInstances |
  |------------------------------------------------------|*)
VAR_INPUT
END_VAR
VAR_IN_OUT
END_VAR
VAR
	i 	:	UINT;
END_VAR  (*Reset stCommands*)
stCommands.SetAbsolutePosition:=FALSE;
FOR i:=1 TO 6 DO
	stCommands.SetAbsolutePositionValue[i] := 0;
	stInstances.Input.MoveAbsoluteSingleAxis[i] := FALSE;
	stInstances.Input.HomingEnable[i] := FALSE;
	stInstances.Input.MoveJogAxisNeg[i] := FALSE;
	stInstances.Input.MoveJogAxisPos[i] := FALSE;
END_FOR
stCommands.SetStartMove:=FALSE;
stCommands.SetMoveToHomePos := FALSE;
stCommands.SetMoveToLearningPos := FALSE;
(*stCommands.SetReset := FALSE;*)
stCommands.SetStoreTurntable := FALSE;
stCommands.SetStopArm := FALSE;
stCommands.SetTurnTurntableCCW := FALSE;
stCommands.SetTurnTurntableCW := FALSE;
stCommands.SetMoveToCandlePos := FALSE;
stCommands.SetMovePreGraspFromFloor := FALSE;
stCommands.SetMovePreGraspFromTable := FALSE;
stCommands.SetMoveToTray := FALSE;
(*stCommands.SetStartAxisRef := FALSE;*)
(*stCommands.SetStartAxisRefValue := 0;*)
stCommands.SetStartAllAxisRef:=FALSE;
stCommands.SetDisableAllAxis:=FALSE;
stCommands.SetEnableAllAxis:=FALSE;
stCommands.SetCloseGripper:=FALSE;
stCommands.SetOpenGripper:=FALSE;
(*bGripper := TRUE; (*Close Gripper*)*)
stCommands.SetJogMoveNegAxis1 := FALSE;
stCommands.SetJogMoveNegAxis2 := FALSE;
stCommands.SetJogMoveNegAxis3 := FALSE;
stCommands.SetJogMoveNegAxis4 := FALSE;
stCommands.SetJogMoveNegAxis5 := FALSE;
stCommands.SetJogMoveNegAxis6 := FALSE;
stCommands.SetJogMovePosAxis1 := FALSE;
stCommands.SetJogMovePosAxis2 := FALSE;
stCommands.SetJogMovePosAxis3 := FALSE;
stCommands.SetJogMovePosAxis4 := FALSE;
stCommands.SetJogMovePosAxis5 := FALSE;
stCommands.SetJogMovePosAxis6 := FALSE;

stInstances.Input.MoveAbsoluteEnable:=FALSE;
stInstances.Input.MoveAbsoluteInterpolation:=FALSE;
stInstances.Input.StopEnable := FALSE;
stInstances.Input.SetPositionEnable := FALSE;

bReset := TRUE;
               g  , K K W           F_ResetDialog ЖU7U	ЖU7U         &          ?   FUNCTION F_ResetDialog : BOOL
VAR_INPUT
END_VAR
VAR
END_VAR   stReferenceDialog.bActive:=FALSE;
stReferenceDialog.bNegative := FALSE;
stReferenceDialog.bPositive := FALSE;
F_ResetDialog := TRUE;               e  ,     Е           F_ResetStartRefDialog d7U	U7U         &          G   FUNCTION F_ResetStartRefDialog : BOOL
VAR_INPUT
END_VAR
VAR
END_VAR   stStartRefDialog.bShow := FALSE;
stStartRefDialog.bNo := FALSE;
stStartRefDialog.bYes := FALSE;
F_ResetStartRefDialog := TRUE;               <   ,   *=           F_SetHomingDisable ^M7U	^M7U      и№жXb№Г        x   FUNCTION F_SetHomingDisable : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	STInstances		:	ST_Instances;
END_VAR
VAR
END_VARO  STInstances.Input.HomingEnable[1] := FALSE;
STInstances.Input.HomingEnable[2] := FALSE;
STInstances.Input.HomingEnable[3] := FALSE;
STInstances.Input.HomingEnable[4] := FALSE;
STInstances.Input.HomingEnable[5] := FALSE;
STInstances.Input.HomingEnable[6] := FALSE;

IF STInstances.Input.HomingEnable[1] AND
	STInstances.Input.HomingEnable[1] AND
	STInstances.Input.HomingEnable[1] AND
	STInstances.Input.HomingEnable[1] AND
	STInstances.Input.HomingEnable[1] AND
	STInstances.Input.HomingEnable[1]
THEN
	F_SetHomingDisable := TRUE;
ELSE
	F_SetHomingDisable := FALSE;
END_IF
               =   ,                F_SetHomingEnable ^M7U	^M7U      и№жXb№Г        w   FUNCTION F_SetHomingEnable : BOOL
VAR_INPUT
END_VAR
VAR_IN_OUT
	STInstances		:	ST_Instances;
END_VAR
VAR
END_VAR
  STInstances.Input.HomingEnable[1] := TRUE;
STInstances.Input.HomingEnable[2] := TRUE;
STInstances.Input.HomingEnable[3] := TRUE;
STInstances.Input.HomingEnable[4] := TRUE;
STInstances.Input.HomingEnable[5] := TRUE;
STInstances.Input.HomingEnable[6] := TRUE;

               b  , d d p.           F_SetRefDialog PU7U	PU7U       §џJ          Q   FUNCTION F_SetRefDialog : BOOL
VAR_INPUT
	nJointNo	:INT;
END_VAR
VAR
END_VARK   
stReferenceDialog.nJoint := nJointNo;
stReferenceDialog.bActive := TRUE;               c  , K K W            F_SetStartRefDialog VU7U	VU7U       §џ          1   FUNCTION F_SetStartRefDialog : BOOL
VAR
END_VAR!   
stStartRefDialog.bShow := TRUE;               ?  , 2 2 >ч           F_SwitchStep ^M7U	^M7U         &             FUNCTION F_SwitchStep : BOOL
VAR_INPUT
	pStepCounter		:POINTER TO INT;
	NextStep			:INT;
	pLastStep			:POINTER TO INT;
END_VAR
VAR
END_VAR:   	pLastStep^ := pStepCounter^;
	pStepCounter^ := NextStep;                  , в в оё           FB_CheckState ^M7U	^M7U       GP[8hшJ          FUNCTION_BLOCK FB_CheckState
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;

END_VAR
VAR
	_ArmHomedStateOld			:	BOOL:=FALSE;
	_ArmIsMovingStateOld			:	BOOL:=FALSE;
	_ArmHasStoppedOld			:	BOOL:=FALSE;
	_ArmIsDisabledStateOld		:	BOOL:=FALSE;
	_ArmHasErrorStateOld			:	BOOL:=FALSE;
	_ArmInPosAreaStateOld		:	BOOL:=FALSE;
	_ArmInTargetPosStateOld		:	BOOL:=FALSE;
	_ArmSoftLimitMaxStateOld		:	BOOL:=FALSE;
	_ArmSoftLimitMinStateOld		:	BOOL:=FALSE;
	_GripperIsClosedOld			:	BOOL:=TRUE;
	_AtHomePosStateOld			:	BOOL:=FALSE;
	_AtLearningPosStateOld		:	BOOL:=FALSE;
	_AtTurntablePosOld			:	BOOL:=FALSE;
	_AtTrayPosOld				:	BOOL:=FALSE;
	_AtPreGraspFromFloorPosOld	:	BOOL:=FALSE;
	_AtPreGraspFromTablePosOld	:	BOOL:=FALSE;
	_AtCCWPosOld				:	BOOL:=FALSE;
	_AtCWPosOld				:	BOOL:=FALSE;
	_EmergencyButtonStateOld		:	BOOL:=FALSE;

(*
	_AtPreGraspPosOld		:	BOOL:=FALSE;
	_AtFinalGraspPosOld		:	BOOL:=FALSE;
	_AtTurntableCWPosOld	:	BOOL:=FALSE;
	_AtTurntableCCWPosOld	:	BOOL:=FALSE;
*)

	PosWindow :ARRAY[1..6] OF REAL := 6(0.8);
	RTRIG: R_TRIG;
	FMP_CandlePos: r_trig;
	FMN_CandlePos: F_TRIG;
END_VAR

VAR_OUTPUT

END_VARч  
stCommands.ArmState.ARM_HOMED := F_CheckIfAllAxisHomed(Axis);
stCommands.ArmState.ARM_IS_MOVING := F_CheckIfAxisIsMoving(Axis);
stCommands.ArmState.ARM_STOPPED := F_CheckAxisHaveStopped(Axis);
stCommands.ArmState.ARM_IS_DISABLED := F_CheckIfAxisDisabled(Axis);
stCommands.ArmState.ARM_HAS_ERROR := F_CheckIfAxisHasError(Axis);
stCommands.ArmState.ARM_IN_POS_AREA := F_CheckIfInPosArea(Axis);
stCommands.ArmState.ARM_IN_TARGET_POS := F_CheckIfInTargetPosEx(stInstances.Input.fPosition, PosWindow, Axis);
stCommands.ArmState.ARM_SOFTLIMIT_MAX := F_CheckIfSoftLimitMax(Axis);
stCommands.ArmState.ARM_SOFTLIMIT_MIN := F_CheckIfSoftLimitMin(Axis);

stCommands.ArmState.GRIPPER_IS_CLOSED := bGripper;
stCommands.ArmState.AT_HOME_POS := F_CheckAtHomePosition(Axis);
stCommands.ArmState.AT_LEARNING_POS := F_CheckAtLearningPosition(Axis);
stCommands.ArmState.AT_TURNTABLE_POS := F_CheckAtFinalGraspTurntablePosition(Axis);
stCommands.ArmState.AT_TRAY_POS := F_CheckAtFinalGraspTrayPosition(Axis);
stCommands.ArmState.AT_PREGRASPFROMFLOOR_POS := F_CheckAtPreGraspFromFloorPos(Axis);
stCommands.ArmState.AT_PREGRASPFROMTABLE_POS := F_CheckAtPreGraspFromTablePos(Axis);
stCommands.ArmState.AT_CCW_POS := F_CheckAtTurntableCCWPosition(Axis);
stCommands.ArmState.AT_CW_POS := F_CheckAtTurntableCWPosition(Axis);
stCommands.ArmState.AT_CANDLE_POS := F_CheckAtCandlePos(Axis);

stCommands.EmergencyPressed := NOT bEmergencyButton; (*жffner Kontakt*)

IF _ArmHomedStateOld <> stCommands.ArmState.ARM_HOMED THEN
	stCommands.ArmState.ArmHomedChanged := TRUE;
END_IF

IF _ArmIsMovingStateOld <> stCommands.ArmState.ARM_IS_MOVING THEN
	stCommands.ArmState.ArmIsMovingChanged := TRUE;
END_IF

IF _ArmHasStoppedOld <> stCommands.ArmState.ARM_STOPPED THEN
	stCommands.ArmState.ArmHasStoppedChanged := TRUE;
END_IF

IF _ArmIsDisabledStateOld <> stCommands.ArmState.ARM_IS_DISABLED THEN
	stCommands.ArmState.ArmIsDisabledChanged := TRUE;
END_IF

IF _ArmHasErrorStateOld <> stCommands.ArmState.ARM_HAS_ERROR THEN
	stCommands.ArmState.ArmHasErrorChanged := TRUE;
END_IF

IF _ArmInPosAreaStateOld <> stCommands.ArmState.ARM_IN_POS_AREA THEN
	stCommands.ArmState.ArmInPosAreaChanged := TRUE;
END_IF

IF _ArmInTargetPosStateOld <> stCommands.ArmState.ARM_IN_TARGET_POS THEN
	stCommands.ArmState.ArmInTargetPosChanged := TRUE;
END_IF

IF _ArmSoftLimitMaxStateOld <> stCommands.ArmState.ARM_SOFTLIMIT_MAX THEN
	stCommands.ArmState.ArmSoftLimitMaxChanged := TRUE;
END_IF

IF _ArmSoftLimitMinStateOld <> stCommands.ArmState.ARM_SOFTLIMIT_MIN THEN
	stCommands.ArmState.ArmSoftLimitMinChanged := TRUE;
END_IF

IF _GripperIsClosedOld <> stCommands.ArmState.GRIPPER_IS_CLOSED THEN
	stCommands.ArmState.GripperIsClosedChanged := TRUE;
END_IF


IF _AtHomePosStateOld <> stCommands.ArmState.AT_HOME_POS THEN
	stCommands.ArmState.AtHomePosChanged := TRUE;
END_IF

IF _AtLearningPosStateOld <> stCommands.ArmState.AT_LEARNING_POS THEN
	stCommands.ArmState.AtLearningPosChanged := TRUE;
END_IF

IF _AtTurntablePosOld <> stCommands.ArmState.AT_TURNTABLE_POS THEN
	stCommands.ArmState.AtTurntablePosChanged := TRUE;
END_IF

IF _AtTrayPosOld <> stCommands.ArmState.AT_TRAY_POS THEN
	stCommands.ArmState.AtTrayPosChanged := TRUE;
END_IF

IF _AtPreGraspFromFloorPosOld <> stCommands.ArmState.AT_PREGRASPFROMFLOOR_POS THEN
	stCommands.ArmState.AtPreGraspFromFloorPosChanged := TRUE;
END_IF

IF _AtPreGraspFromTablePosOld <> stCommands.ArmState.AT_PREGRASPFROMTABLE_POS THEN
	stCommands.ArmState.AtPreGraspFromTablePosChanged := TRUE;
END_IF

IF _AtCCWPosOld <> stCommands.ArmState.AT_CCW_POS THEN
	stCommands.ArmState.AtCCWPosChanged := TRUE;
END_IF

IF _AtCWPosOld <> stCommands.ArmState.AT_CW_POS THEN
	stCommands.ArmState.AtCWPosChanged := TRUE;
END_IF

FMP_CandlePos(clk:=stCommands.ArmState.AT_CANDLE_POS);
FMN_CandlePos(clk:=stCommands.ArmState.AT_CANDLE_POS);

IF FMP_CandlePos.Q OR FMN_CandlePos.Q  THEN
	stCommands.ArmState.AtCandlePosChanged := TRUE;
END_IF

IF _EmergencyButtonStateOld <> stCommands.EmergencyPressed THEN
	stCommands.EmergencyButtonChanged := TRUE;
END_IF

(*RTRIG(CLK:= NOT bEmergencyButton); (* жffner Kontakt *)

IF RTRIG.Q  THEN
	stCommands.EmergencyPressed := TRUE;
	stCommands.EmergencyButtonChanged := TRUE;
ELSE
	stCommands.EmergencyPressed := FALSE;
END_IF
*)

IF 	stCommands.ArmState.ArmHomedChanged				OR
	stCommands.ArmState.ArmIsMovingChanged				OR
	stCommands.ArmState.ArmHasStoppedChanged			OR
	stCommands.ArmState.ArmIsDisabledChanged			OR
	stCommands.ArmState.ArmHasErrorChanged 				OR
	stCommands.ArmState.ArmInPosAreaChanged			OR
	stCommands.ArmState.ArmInTargetPosChanged			OR
	stCommands.ArmState.ArmSoftLimitMaxChanged			OR
	stCommands.ArmState.ArmSoftLimitMinChanged			OR
	stCommands.ArmState.GripperIsClosedChanged			OR
	stCommands.ArmState.AtHomePosChanged				OR
	stCommands.ArmState.AtLearningPosChanged			OR
	stCommands.ArmState.AtTurntablePosChanged			OR
	stCommands.ArmState.AtTrayPosChanged				OR
	stCommands.ArmState.AtPreGraspFromFloorPosChanged 	OR
	stCommands.ArmState.AtPreGraspFromFloorPosChanged	OR
	stCommands.ArmState.AtCCWPosChanged				OR
	stCommands.ArmState.AtCWPosChanged				OR
	stCommands.EmergencyButtonChanged					OR
	stCommands.ArmState.AtCandlePosChanged
THEN
	stCommands.ArmState.AnyDataChanged := TRUE;
ELSE
	stCommands.ArmState.AnyDataChanged := FALSE;
END_IF


_ArmHomedStateOld			:=	stCommands.ArmState.ARM_HOMED;
_ArmIsMovingStateOld			:=	stCommands.ArmState.ARM_IS_MOVING;
_ArmHasStoppedOld			:=	stCommands.ArmState.ARM_STOPPED;
_ArmIsDisabledStateOld		:=	stCommands.ArmState.ARM_IS_DISABLED;
_ArmHasErrorStateOld			:=	stCommands.ArmState.ARM_HAS_ERROR;
_ArmInPosAreaStateOld		:=	stCommands.ArmState.ARM_IN_POS_AREA;
_ArmInTargetPosStateOld		:=	stCommands.ArmState.ARM_IN_TARGET_POS;
_ArmSoftLimitMaxStateOld		:=	stCommands.ArmState.ARM_SOFTLIMIT_MAX;
_ArmSoftLimitMinStateOld		:=	stCommands.ArmState.ARM_SOFTLIMIT_MIN;
_GripperIsClosedOld			:=	stCommands.ArmState.GRIPPER_IS_CLOSED;
_AtHomePosStateOld			:=	stCommands.ArmState.AT_HOME_POS;
_AtLearningPosStateOld		:=	stCommands.ArmState.AT_LEARNING_POS;
_AtTrayPosOld				:=	stCommands.ArmState.AT_TRAY_POS;
_AtTurntablePosOld			:= 	stCommands.ArmState.AT_TURNTABLE_POS;
_AtPreGraspFromFloorPosOld	:= 	stCommands.ArmState.AT_PREGRASPFROMFLOOR_POS;
_AtPreGraspFromTablePosOld	:= 	stCommands.ArmState.AT_PREGRASPFROMTABLE_POS;
_AtCCWPosOld				:=	stCommands.ArmState.AT_CCW_POS;
_AtCWPosOld				:=	stCommands.ArmState.AT_CW_POS;

_EmergencyButtonStateOld := 	stCommands.EmergencyPressed;               >   ,   ЂЕ           FB_ClientApplication ^M7U	^M7U                      И  FUNCTION_BLOCK FB_ClientApplication
(* Sample client application. Adapt this code to match your needs. *)
VAR_INPUT
	bDbg		: BOOL 			:= FALSE;(* TRUE => Enable debug output, FALSE => Disable *)
	sRemoteHost	: STRING(15);
	nRemotePort	: UDINT;
	bEnable		: BOOL 			:= FALSE;
END_VAR
VAR_OUTPUT
	eState		: E_SocketConnectionState := eSOCKET_DISCONNECTED;(* TCP/IP connection state *)
END_VAR
VAR
	sToServer	: T_MaxString	:= '';
	sFromServer	: T_MaxString	:= '';
	fbClient		: FB_LocalClient;(* Client data exchange control function block *)
	tx 			: FB_FrameStringFifo;(* Tx fifo *)
	rx 			: FB_FrameStringFifo;(* Rx fifo *)
	errors		: FB_ProtErrorFifo;(* Error fifo *)
	sndTimer	: TON;
	rcvTimer		: TON;
	firstConnect	: BOOL:=TRUE;
	state		: BYTE;(* application state *)
	rxString		:	ARRAY[0..20] OF STRING;
	iState		:	UINT:=999;
	fbLogState	: FB_LogFile;
	FMP_CandlePos: R_TRIG;
	FMN_CandlePos: F_TRIG;
	sPath: STRING;
END_VAR  (*-------------------------- trigger data exchange -----------------------------------------------*)
fbClient( bDbg := bDbg, rx := rx, tx := tx, errors := errors, bEnable := bEnable, sRemoteHost := sRemoteHost, nRemotePort := nRemotePort, eState=>eState );

(*--------------------------Simple TCP/IP application-----------------------------------------------*)
CASE state OF
	0:(* init state *)
		sndTimer( IN := FALSE, PT := PLCPRJ_CLIENT_SEND_CYCLE_TIME );
		rcvTimer( IN := FALSE, PT := PLCPRJ_SERVER_RESPONSE_TIMEOUT );
		state := 1;

	1:
		(* send string to server *)
		IF fbClient.eState = eSOCKET_CONNECTED THEN
			(*sndTimer( IN := TRUE );*)
			IF sndTimer.Q (*OR iState<>999*) OR stCommands.ArmState.AnyDataChanged THEN
				ProcessSendData;
				sndTimer( IN := FALSE );

				tx.A_AddTail( putValue := sToServer );(* put string to the tx fifo *)
				IF tx.bOk THEN(* success *)
					rcvTimer( IN := FALSE );
					state := 2;(* wait for response (ECHO from server) ) *)
				ELSE(* TX fifo overflow => log error *)
					errors.A_AddTail( putError := PLCPRJ_ERROR_SEND_BUFFER_OVERFLOW );
				END_IF

			END_IF
		ELSE
			state := 0;
		END_IF

	2:(* wait for response from server *)
		REPEAT
			rx.A_RemoveHead();(* fetch string from rx fifo *)
			IF rx.bOk THEN(* success *)
				sFromServer := rx.getValue;
				(* TODO: Check if the response string == request string *)
				ProcessReceiveData;

				state := 0;(* repeat send-receive cycle *)
			ELSE
				rcvTimer( IN := TRUE );
				IF rcvTimer.Q THEN(* receive timeout => log error *)
					rcvTimer( IN := FALSE );
					errors.A_AddTail( putError := PLCPRJ_ERROR_RESPONSE_TIMEOUT );
					state := 0;
				END_IF
			END_IF
		UNTIL NOT rx.bOk
		END_REPEAT


END_CASE

fbLogState();

(*------------------------------- get error messages from error fifo ------------------------------------------*)
REPEAT
	errors.A_RemoveHead( bDbg := bDbg );
	IF errors.bOk THEN
		;(* TODO: Implement error handler *)
	END_IF
UNTIL NOT errors.bOk
END_REPEAT A   , в в оё           ProcessReceiveData ^M7Uщ	  
(*split up the received Command*)
F_SplitString(
	p:=ADR(rxString),
	code:=sFromServer,
	delimiter:=';',
	tarElCnt:=SIZEOF(rxString)/SIZEOF(rxString[0]),
	sizeLine:=SIZEOF(rxString[0]));

(*rxString := F_CutString(sFromServer, ';');*)

IF rxString[1] = 'COMMAND_OK' THEN

	IF rxString[0] = 'ArmHasError' THEN
		stCommands.ArmState.ArmHasErrorChanged := FALSE;

	ELSIF rxString[0] = 'ArmHomed' THEN
		stCommands.ArmState.ArmHomedChanged := FALSE;

	ELSIF rxString[0] = 'ArmInPositionArea' THEN
		stCommands.ArmState.ArmInPosAreaChanged := FALSE;

	ELSIF rxString[0] = 'ArmInTargetPosition' THEN
		stCommands.ArmState.ArmInTargetPosChanged := FALSE;

	ELSIF rxString[0] = 'ArmIsDisabled' THEN
		stCommands.ArmState.ArmIsDisabledChanged := FALSE;

	ELSIF rxString[0] = 'ArmIsMoving' THEN
		stCommands.ArmState.ArmIsMovingChanged := FALSE;

	ELSIF rxString[0] ='ArmHasStopped' THEN
		stCommands.ArmState.ArmHasStoppedChanged := FALSE;

	ELSIF rxString[0] = 'ArmSoftLimitMax' THEN
		stCommands.ArmState.ArmSoftLimitMaxChanged := FALSE;

	ELSIF rxString[0] = 'ArmSoftLimitMin' THEN
		stCommands.ArmState.ArmSoftLimitMinChanged := FALSE;

	ELSIF rxString[0] = 'GripperIsClosed' THEN
		stCommands.ArmState.GripperIsClosedChanged := FALSE;

	ELSIF rxString[0] = 'ArmAtHomePos' THEN
		stCommands.ArmState.AtHomePosChanged := FALSE;

	ELSIF rxString[0] = 'ArmAtLearningPos' THEN
		stCommands.ArmState.AtLearningPosChanged := FALSE;

	ELSIF rxString[0] = 'ArmAtTurntablePos' THEN
		stCommands.ArmState.AtTurntablePosChanged := FALSE;

	ELSIF rxString[0] = 'ArmAtTrayPos' THEN
		stCommands.ArmState.AtTrayPosChanged := FALSE;

	ELSIF rxString[0] = 'ArmAtPreGraspFromFloorPos' THEN
		stCommands.ArmState.AtPreGraspFromFloorPosChanged := FALSE;

	ELSIF rxString[0] = 'ArmAtPreGraspFromTablePos' THEN
		stCommands.ArmState.AtPreGraspFromTablePosChanged := FALSE;

	ELSIF rxString[0] = 'ArmAtCCWPos' THEN
		stCommands.ArmState.AtCCWPosChanged := FALSE;

	ELSIF rxString[0] = 'ArmAtCWPos' THEN
		stCommands.ArmState.AtCWPosChanged := FALSE;

	ELSIF rxString[0] = 'ArmAtCandlePos' THEN
		stCommands.ArmState.AtCandlePosChanged := FALSE;

	ELSIF rxString[0] = 'EmergencyPressed' THEN
		stCommands.EmergencyButtonChanged := FALSE;

	END_IF
ELSE
	(*Resend or Error log*)
	;
END_IF

(*Check if all changed data was sent: *)
IF NOT stCommands.ArmState.GripperIsClosedChanged AND
	NOT stCommands.ArmState.AnyDataChanged
THEN
	stCommands.ArmState.AnyDataChanged := FALSE;
END_IFB   , x x            ProcessSendData ^M7U"  
IF sndTimer.Q AND NOT stCommands.ArmState.AnyDataChanged THEN
	(*If Send Cycle Timer True and no data changed then Send all States sequently*)
	iState := 10;
END_IF

IF firstConnect THEN
	iState := 10;
	firstConnect := FALSE;
END_IF

sPath := 'C:\Documents and Settings\Administrator\Desktop\Hobbit\Log\';
sPath := CONCAT(sPath, stParams.sIdentity);
sPath := CONCAT(sPath, '_State.txt');

fbLogState.sPathname := sPath;

CASE iState OF
	10:
		(*Send ArmHasError State: *)
		sToServer := F_MergeSendData( 'STATE' , 'ArmHasError', stCommands.ArmState.ARM_HAS_ERROR , ';' );
		iState := 20;

	20:
		(*Send ArmHomed State:*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmHomed', stCommands.ArmState.ARM_HOMED , ';' );
		iState := 30;

	30:
		(*Send ArmInPositionArea State:*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmInPositionArea', stCommands.ArmState.ARM_IN_POS_AREA , ';' );
		iState := 40;

	40:
		(*Send ArmInTargetPosition State:*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmInTargetPosition', stCommands.ArmState.ARM_IN_TARGET_POS , ';' );
		iState := 50;

	50:
		(*Send ArmIsDisabled State:*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmIsDisabled', stCommands.ArmState.ARM_IS_DISABLED , ';' );
		iState := 60;

	60:
		(*Send ArmIsMoving State *)
		sToServer := F_MergeSendData( 'STATE' , 'ArmIsMoving', stCommands.ArmState.ARM_IS_MOVING , ';' );
		iState := 70;

	70:
		(*Send ArmStopped State *)
		sToServer := F_MergeSendData( 'STATE' , 'ArmHasStopped', stCommands.ArmState.ARM_STOPPED , ';' );
		iState := 80;

	80:
		(*Send ArmSoftLimitMax State*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmSoftLimitMax', stCommands.ArmState.ARM_SOFTLIMIT_MAX , ';' );
		iState := 90;

	90:
		(*Send ArmSoftLimitMin State*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmSoftLimitMin', stCommands.ArmState.ARM_SOFTLIMIT_MIN , ';' );
		iState := 100;

	100:
		(*Send ArmAtHomePos State*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmAtHomePos', stCommands.ArmState.AT_HOME_POS , ';' );
		iState := 110;

	110:
		(*Send ArmAtLearningPos State*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmAtLearningPos', stCommands.ArmState.AT_LEARNING_POS , ';' );
		iState := 120;

	120:
		(*Send ArmAtTurntablePos State*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmAtTurntablePos', stCommands.ArmState.AT_TURNTABLE_POS , ';' );
		iState := 130;

	130:
		(*Send ArmAtTrayPos State*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmAtTrayPos', stCommands.ArmState.AT_TRAY_POS , ';' );
		iState := 140;

	140:
		(*Send ArmAtPreGraspFromFloor State*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmAtPreGraspFromFloorPos', stCommands.ArmState.AT_PREGRASPFROMFLOOR_POS , ';' );
		iState := 145;

	145:
		(*Send ArmAtPreGraspFromTable State*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmAtPreGraspFromFloorPos', stCommands.ArmState.AT_PREGRASPFROMTABLE_POS , ';' );
		iState := 150;

	150:
		(*Send ArmAtCCWPos*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmAtCCWPos', stCommands.ArmState.AT_CCW_POS , ';' );
		iState := 160;

	160:
		(*Send ArmAtCWPos*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmAtCWPos', stCommands.ArmState.AT_CW_POS , ';' );
		iState := 200;

	200:
		(*Send GripperIsClosed State*)
		sToServer := F_MergeSendData( 'STATE' , 'GripperIsClosed', stCommands.ArmState.GRIPPER_IS_CLOSED , ';' );
		iState := 210;

	210:
		(*Send GripperIsClosed State*)
		sToServer := F_MergeSendData( 'STATE' , 'ArmAtCandlePos', stCommands.ArmState.AT_CANDLE_POS , ';' );
		iState := 220;

	220:
		(*Send Emergency State*)
		sToServer := F_MergeSendData( 'STATE' , 'EmergencyPressed', stCommands.EmergencyPressed , ';' );
		iState := 999;
END_CASE

FMP_CandlePos(clk:=stCommands.ArmState.AT_CANDLE_POS);
FMN_CandlePos(clk:=stCommands.ArmState.AT_CANDLE_POS);

IF stCommands.ArmState.ArmHasErrorChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmHasError', stCommands.ArmState.ARM_HAS_ERROR , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.ArmHomedChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmHomed', stCommands.ArmState.ARM_HOMED , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.ArmInPosAreaChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmInPositionArea', stCommands.ArmState.ARM_IN_POS_AREA , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.ArmInTargetPosChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmInTargetPosition', stCommands.ArmState.ARM_IN_TARGET_POS , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.ArmIsDisabledChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmIsDisabled', stCommands.ArmState.ARM_IS_DISABLED , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.ArmIsMovingChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmIsMoving', stCommands.ArmState.ARM_IS_MOVING , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.ArmHasStoppedChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmHasStopped', stCommands.ArmState.ARM_STOPPED , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.ArmSoftLimitMaxChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmSoftLimitMax', stCommands.ArmState.ARM_SOFTLIMIT_MAX , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.ArmSoftLimitMinChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmSoftLimitMin', stCommands.ArmState.ARM_SOFTLIMIT_MIN , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);


ELSIF stCommands.ArmState.AtHomePosChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmAtHomePos', stCommands.ArmState.AT_HOME_POS , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.AtLearningPosChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmAtLearningPos', stCommands.ArmState.AT_LEARNING_POS , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.AtTurntablePosChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmAtTurntablePos', stCommands.ArmState.AT_TURNTABLE_POS , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.AtTrayPosChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmAtTrayPos', stCommands.ArmState.AT_TRAY_POS , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.AtPreGraspFromFloorPosChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmAtPreGraspFromFloorPos', stCommands.ArmState.AT_PREGRASPFROMFLOOR_POS , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.AtPreGraspFromTablePosChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmAtPreGraspFromTablePos', stCommands.ArmState.AT_PREGRASPFROMTABLE_POS , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.AtCCWPosChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmAtCCWPos', stCommands.ArmState.AT_CCW_POS , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.AtCWPosChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmAtCWPos', stCommands.ArmState.AT_CW_POS , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.GripperIsClosedChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'GripperIsClosed', stCommands.ArmState.GRIPPER_IS_CLOSED , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.ArmState.AtCandlePosChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'ArmAtCandlePos', stCommands.ArmState.AT_CANDLE_POS , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

ELSIF stCommands.EmergencyButtonChanged THEN
	sToServer := F_MergeSendData( 'STATE' , 'EmergencyPressed', stCommands.EmergencyPressed , ';' );
	(*LOG STATE*)
	fbLogState.LogMessage(sMessage := sToServer);

(*
ELSIF stCommands.ArmState.GripperIsClosedChanged THEN

	sToServer := CONCAT( 'STATE' , ';' );
	sToServer := CONCAT( sToServer , 'GripperState' );
	sToServer := CONCAT( sToServer , ';' );
	sToServer := CONCAT( sToServer , BOOL_TO_STRING(stCommands.ArmState.GRIPPER_IS_CLOSED) );
	sToServer := CONCAT( sToServer , ';' );

ELSE

	stCommands.DataChanged := FALSE;
*)
END_IF             P   , № № 9           FB_FrameStringFifo ^M7U	^M7U       Ы(ьСх          FUNCTION_BLOCK FB_FrameStringFifo
(* Tx/Rx (string data) fifo control function block *)
VAR_INPUT
	sDesc		: STRING(20)	:= 'Unknown';(* Debug message description string (allows the identification of log message source) *)
	bDbg		: BOOL		:= FALSE; (* TRUE => Enable debug output, FALSE => Disable *)
	putValue		: T_MaxString := ''; (* String to add (write) to the buffer *)
END_VAR
VAR_OUTPUT
	bOk			: BOOL; 	 	(* TRUE = New entry added or removed succesfully, FALSE = Fifo overflow or fifo empty *)
	getValue		: T_MaxString := ''; (* String removed (read) from buffer *)
	nCount		: UDINT	:= 0;	(* Number of fifo entries *)
	cbFree		: UDINT := 0;	(* Free buffer space *)
END_VAR
VAR
	buffer		: ARRAY[-3..PLCPRJ_BUFFER_SIZE] OF BYTE;(* Internal buffer memory *)
	fbBuffer 		: FB_StringRingBuffer := (bOverwrite := FALSE);(* Basic (lower level) string buffer control function block *)
END_VAR   ; T   , < < [        	   A_AddTail ^M7Uc  (* adds new fifo entry *)
fbBuffer.A_AddTail( 	pBuffer:= ADR(buffer), cbBuffer:= SIZEOF(buffer),
					putValue:= putValue, bOk=>bOk, nCount=>nCount );
IF bOk THEN
	cbFree := PLCPRJ_BUFFER_SIZE - fbBuffer.cbSize;(* calculate the free buffer space *)
	IF bDbg THEN(* log message *)
		F_ADSLOGSTRING( CONCAT( sDesc, '<=' ), putValue );
	END_IF
END_IFU   , Z Z Ѓy           A_RemoveHead ^M7Uk  (* removes oldest fifo entry *)
fbBuffer.A_RemoveHead( pBuffer:= ADR(buffer), cbBuffer:= SIZEOF(buffer),
						bOk=>bOk, getValue=>getValue, nCount=>nCount );
IF bOk THEN
	cbFree := PLCPRJ_BUFFER_SIZE - fbBuffer.cbSize;(* calculate the free buffer space *)
	IF bDbg THEN(* log message *)
		F_ADSLOGSTRING( CONCAT( sDesc, '=>' ), getValue );
	END_IF
END_IFV   , x x С           A_Reset ^M7UМ   (* resets fifo = clears all data *)
fbBuffer.A_Reset( pBuffer:= ADR(buffer), cbBuffer:= SIZEOF(buffer),
				bOk=>bOk, getValue=>getValue, nCount=>nCount );
cbFree := PLCPRJ_BUFFER_SIZE;                ,                FB_Home Д 7U	^M7U         S            FUNCTION_BLOCK FB_Home
(*executes homing movement of the arm*)
(*|------------------------------------------------------------------------|
  | 16.10.2014|FlA|added execution of a reset-command in the state-machine |
  |------------------------------------------------------------------------|*)
VAR_INPUT
	bExecute		:	BOOL;
END_VAR
VAR_IN_OUT
	Axis			:	ARRAY[1..6] OF Axis_Ref;
	STInstances	:	ST_Instances;
END_VAR
VAR_OUTPUT
	bHomingDone			:	BOOL;
	bHomingBusy			:	BOOL;
	bReferenceRestarted		:	BOOL;
	bHasBeenStopped		:	BOOL;
	bError					:	BOOL;
END_VAR
VAR
	eHoming			:	E_STATE_HOMING:=99;		(* IDLE *)
	LastHomingState	:	E_STATE_HOMING;

	i	:	UINT;

	RStart	:	R_TRIG;
	RStop	:	R_TRIG;

	MoveRelativeAxis4	:	MC_MoveRelative;
	MoveRelativeAxis6	:	MC_MoveRelative;

	SetPositionAxis4		:	MC_SetPosition;
	SetPositionAxis6		:	MC_SetPosition;
	fbMoveToZero: FB_MoveToZero;
END_VAR"  (*set status-values*)
(*bHomingDone := F_CheckIfAllAxisHomed(Axis);*)
(*bHomingBusy := F_CheckIfHomingIsBusy(Axis);*)
bHasBeenStopped := F_CheckAxisHaveStopped(Axis);

(*call instances*)
MoveRelativeAxis4(Axis := Axis[4]);
MoveRelativeAxis6(Axis := Axis[6]);
SetPositionAxis4(Axis := Axis[4]);
SetPositionAxis6(Axis := Axis[6]);

(*call MoveToZero-instace*)
fbMoveToZero( );

(*check for axis errors*)
IF F_CheckIfAxisHasError(Axis) THEN
	eHoming := E_HOMING_ERROR;
	bError := TRUE;
	bHomingDone := FALSE;
ELSE
	bError := FALSE;
END_IF

(*execute a reset*)
IF stCommands.SetReset
OR stCommands.SetStopArm THEN
(*	eHoming := E_HOMING_IDLE;*)
	eHoming := E_HOMING_RESETCMD;
END_IF

CASE eHoming OF
	E_HOMING_INIT:
		IF NOT F_CheckIfAllAxisHomed(Axis) THEN
(*
			(*For simulating homing:*)
			STInstances.Input.HomingMode := MC_ForceCalibration;
*)

			(*For real homing*)
			STInstances.Input.HomingMode := MC_DefaultHoming;

			IF  F_CheckIfAxisEnabled(Axis) THEN
				eHoming := E_HOMING_JOINT1;
				LastHomingState := E_HOMING_INIT;
				fbMoveToZero.bExecute := FALSE;
			ELSE
				STInstances.Input.PowerEnable := TRUE;
			END_IF
		ELSE
			LastHomingState := eHoming;
			eHoming := E_HOMING_RESET;
		END_IF


	E_HOMING_JOINT1:
		STInstances.Input.HomingEnable[1] := TRUE;
		(*Wait Until Axis is Referenced: *)
		(*MoveRelative.Execute := FALSE;*)
		IF Axis[1].Status.Homed THEN
			STInstances.Input.HomingEnable[1] := FALSE;
			LastHomingState := E_HOMING_JOINT1;
			eHoming := E_HOMING_MOVEZERO;
		ELSIF STInstances.Input.HomingMode = MC_ResetCalibration THEN
			LastHomingState := E_HOMING_JOINT1;
			eHoming := E_HOMING_JOINT2;
		END_IF


	E_HOMING_JOINT2:
		STInstances.Input.HomingEnable[2] := TRUE;

		(*Wait Until Axis is Referenced: *)
		IF Axis[2].Status.Homed THEN
			STInstances.Input.HomingEnable[2] := FALSE;
			LastHomingState := E_HOMING_JOINT2;
			eHoming := E_HOMING_MOVEZERO;
		ELSIF STInstances.Input.HomingMode = MC_ResetCalibration THEN
			LastHomingState := E_HOMING_JOINT2;
			eHoming := E_HOMING_JOINT3;
		END_IF


	E_HOMING_JOINT3:
		STInstances.Input.HomingEnable[3] := TRUE;
		(*Wait Until Axis is Referenced: *)
		IF Axis[3].Status.Homed THEN
			STInstances.Input.HomingEnable[3] := FALSE;
			LastHomingState := E_HOMING_JOINT3;
			eHoming := E_HOMING_MOVEZERO;
		ELSIF STInstances.Input.HomingMode = MC_ResetCalibration THEN
			LastHomingState := E_HOMING_JOINT3;
			eHoming := E_HOMING_JOINT4;
		END_IF


	E_HOMING_JOINT4:
		IF NOT bHomeRefAxis4 THEN
			MoveRelativeAxis4.Execute := FALSE;
			IF NOT MoveRelativeAxis4.Busy THEN
				STInstances.Input.HomingEnable[4] := TRUE;
				(*Wait Until Axis is Referenced: *)
				IF Axis[4].Status.Homed THEN
					STInstances.Input.HomingEnable[4] := FALSE;
					LastHomingState := E_HOMING_JOINT4;
					eHoming := E_HOMING_MOVEZERO;
				ELSIF STInstances.Input.HomingMode = MC_ResetCalibration THEN
					LastHomingState := E_HOMING_JOINT4;
					eHoming := E_HOMING_JOINT5;
				END_IF
			END_IF
		ELSIF Axis[4].Status.Homed THEN
			LastHomingState := E_HOMING_JOINT4;
			eHoming := E_HOMING_MOVEZERO;
		ELSE
			SetPositionAxis4.Position := 0;
			SetPositionAxis4.Execute := TRUE;
			LastHomingState := eHoming;
			eHoming := E_HOMING_MOVERELATIVE;
		END_IF

	E_HOMING_JOINT5:
		STInstances.Input.HomingEnable[5] := TRUE;
		(*Wait Until Axis is Referenced: *)
		IF Axis[5].Status.Homed THEN
			STInstances.Input.HomingEnable[5] := FALSE;
			LastHomingState := E_HOMING_JOINT5;
			eHoming := E_HOMING_MOVEZERO;
		ELSIF STInstances.Input.HomingMode = MC_ResetCalibration THEN
			LastHomingState := E_HOMING_JOINT4;
			eHoming := E_HOMING_JOINT5;
		END_IF


	E_HOMING_JOINT6:
		IF NOT bHomeRefAxis6 THEN
			MoveRelativeAxis6.Execute := FALSE;
			IF NOT MoveRelativeAxis6.Busy THEN
				STInstances.Input.HomingEnable[6] := TRUE;
				(*Wait Until Axis is Referenced: *)
				IF Axis[6].Status.Homed THEN
					STInstances.Input.HomingEnable[6] := FALSE;
					LastHomingState := E_HOMING_JOINT6;
					eHoming := E_HOMING_DONE;
				ELSIF STInstances.Input.HomingMode = MC_ResetCalibration THEN
					LastHomingState := E_HOMING_JOINT6;
					eHoming := E_HOMING_DONE;
				END_IF
			END_IF
		ELSIF Axis[6].Status.Homed THEN
			LastHomingState := E_HOMING_JOINT6;
			eHoming := E_HOMING_DONE;
		ELSE
			SetPositionAxis6.Position := 0;
			SetPositionAxis6.Execute := TRUE;
			LastHomingState := eHoming;
			eHoming := E_HOMING_MOVERELATIVE;
		END_IF

	E_HOMING_DONE:
		IF F_CheckIfAllAxisHomed(Axis) THEN
			LastHomingState := eHoming;
			eHoming := E_HOMING_IDLE;
			bHomingDone := TRUE;
			bHomingBusy := FALSE;
		ELSE
			LastHomingState := eHoming;
			eHoming := E_HOMING_INIT;
		END_IF

		F_SetHomingDisable(STInstances);


	E_HOMING_RESET:
		F_SetHomingEnable(STInstances);
		IF NOT F_CheckIfAllAxisHomed(Axis) THEN
			F_SetHomingDisable(STInstances);
			LastHomingState := eHoming;
			eHoming := E_HOMING_INIT;
		END_IF

	E_HOMING_MOVEZERO:
		CASE LastHomingState OF
			E_HOMING_JOINT1:
				fbMoveToZero.Axis := ADR(Axis[1]);
				fbMoveToZero.bExecute := TRUE;
				IF fbMoveToZero.bDone THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHoming := e_Homing_Joint2;
				ELSIF fbMoveToZero.bError  THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHOming := E_HOMING_Error;
				END_IF
			E_HOMING_JOINT2:
				fbMoveToZero.Axis := ADR(Axis[2]);
				fbMoveToZero.bExecute := TRUE;
				IF fbMoveToZero.bDone THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHoming := e_Homing_Joint3;
				ELSIF fbMoveToZero.bError  THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHOming := E_HOMING_Error;
				END_IF
			E_HOMING_JOINT3:
				fbMoveToZero.Axis := ADR(Axis[3]);
				fbMoveToZero.bExecute := TRUE;
				IF fbMoveToZero.bDone THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHoming := e_Homing_Joint4;
				ELSIF fbMoveToZero.bError  THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHOming := E_HOMING_Error;
				END_IF
			E_HOMING_JOINT4:
				fbMoveToZero.Axis := ADR(Axis[4]);
				fbMoveToZero.bExecute := TRUE;
				IF fbMoveToZero.bDone THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHoming := e_Homing_Joint5;
				ELSIF fbMoveToZero.bError  THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHOming := E_HOMING_Error;
				END_IF
			E_HOMING_JOINT5:
				fbMoveToZero.Axis := ADR(Axis[5]);
				fbMoveToZero.bExecute := TRUE;
				IF fbMoveToZero.bDone THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHoming := e_Homing_Joint6;
				ELSIF fbMoveToZero.bError  THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHOming := E_HOMING_Error;
				END_IF
			E_HOMING_JOINT6:
				;
		END_CASE

	E_HOMING_MOVERELATIVE:
		IF LastHomingState = E_HOMING_JOINT4 THEN
			IF NOT SetPositionAxis4.Busy THEN
				SetPositionAxis4.Execute := FALSE;
				MoveRelativeAxis4.Distance := 20;
				MoveRelativeAxis4.Velocity := 5;
				MoveRelativeAxis4.Execute:=TRUE;
				LastHomingState := eHoming;
				eHoming := E_HOMING_JOINT4;
			END_IF
		ELSIF LastHomingState = E_HOMING_JOINT6 THEN
			IF NOT SetPositionAxis6.Busy THEN
				SetPositionAxis6.Execute := FALSE;
				MoveRelativeAxis6.Distance := 20;
				MoveRelativeAxis6.Velocity := 5;
				MoveRelativeAxis6.Execute:=TRUE;
				LastHomingState := eHoming;
				eHoming := E_HOMING_JOINT6;
			END_IF
		END_IF

	E_HOMING_ERROR:
		F_ResetCommands();
		IF NOT F_CheckIfAxisHasError(Axis) THEN
			eHoming := E_HOMING_IDLE;
			bHomingBusy := FALSE;
		END_IF

	E_HOMING_RESETCMD:
		MoveRelativeAxis4.Execute := FALSE;
		MoveRelativeAxis6.Execute := FALSE;
		SetPositionAxis4.Execute := FALSE;
		SetPositionAxis6.Execute := FALSE;
		fbMoveToZero.bExecute := FALSE;
		bHomingBusy := FALSE;
		LastHomingState := eHoming;
		eHoming:=E_HOMING_IDLE;

	E_HOMING_IDLE:
		IF bExecute
		AND NOT bHomingDone THEN		(*Start On Rising Edge*)
			IF bHomeRefAxis4
			AND bHomeRefAxis6 THEN
				IF F_CheckIfAllAxisHomed(Axis) THEN
					bReferenceRestarted := TRUE;
					STInstances.Input.HomingMode := MC_ResetCalibration;
				END_IF
				LastHomingState := eHoming;
				eHoming := E_HOMING_INIT;
				bHomingBusy := TRUE;
				F_SetHomingDisable(STInstances);
			ELSE
				LastHomingState := eHoming;
				eHoming := E_HOMING_ERROR;
			END_IF
		ELSIF NOT bExecute THEN
			bHomingDone :=FALSE;
			bReferenceRestarted := FALSE;
		ELSE
			bReferenceRestarted := FALSE;
		END_IF

END_CASE               J  ,   і           FB_Home_new ЭГ8U	7U       §џ             FUNCTION_BLOCK FB_Home_new
(*executes homing movement of the arm*)
(*|------------------------------------------------------------------------|
  | 16.10.2014|FlA|added execution of a reset-command in the state-machine |
  |------------------------------------------------------------------------|*)
VAR_INPUT
	bExecute		:	BOOL;
END_VAR
VAR_IN_OUT
	Axis			:	ARRAY[1..6] OF Axis_Ref;
	STInstances		:	ST_Instances;
END_VAR
VAR_OUTPUT
	bHomingDone			:	BOOL;
	bHomingBusy			:	BOOL;
	bReferenceRestarted		:	BOOL;
	bHasBeenStopped		:	BOOL;
	bError					:	BOOL;
END_VAR
VAR
	eHoming			:	E_STATE_HOMING:=99;		(* IDLE *)
	LastHomingState	:	E_STATE_HOMING;

	i	:	UINT;

	RStart	:	R_TRIG;
	RStop	:	R_TRIG;

	MoveRelativeAxis4	:	MC_MoveRelative;
	MoveRelativeAxis6	:	MC_MoveRelative;

	SetPositionAxis4		:	MC_SetPosition;
	SetPositionAxis6		:	MC_SetPosition;
	fbMoveToZero: FB_MoveToZero;
	eJointSide: E_JointSide;
	fbHomeJoint: FB_HomeJoint;
	eDecision: E_Decision;
	fbHomeDefault: FB_Home;
END_VAR'  (*set status-values*)
(*bHomingDone := F_CheckIfAllAxisHomed(Axis);
bHomingBusy := F_CheckIfHomingIsBusy(Axis);*)
bHasBeenStopped := F_CheckAxisHaveStopped(Axis);

(*call instances*)
MoveRelativeAxis4(Axis := Axis[4]);
MoveRelativeAxis6(Axis := Axis[6]);
SetPositionAxis4(Axis := Axis[4]);
SetPositionAxis6(Axis := Axis[6]);

(*call MoveToZero-instace*)
fbMoveToZero( );

(*check for axis errors*)
IF F_CheckIfAxisHasError(Axis) THEN
	eHoming := E_HOMING_ERROR;
	bError := TRUE;
	bHomingDone := FALSE;
ELSE
	bError := FALSE;
END_IF

(*execute a reset*)
IF stCommands.SetReset
OR stCommands.SetStopArm THEN
(*	eHoming := E_HOMING_IDLE;*)
	eHoming := E_HOMING_RESETCMD;
END_IF

CASE eHoming OF
	E_HOMING_INIT:
		IF NOT F_CheckIfAllAxisHomed(Axis) THEN
(*
			(*For simulating homing:*) 
			STInstances.Input.HomingMode := MC_ForceCalibration;
*)
			(*For real homing*)
			STInstances.Input.HomingMode := MC_DefaultHoming;

			IF F_CheckIfAxisEnabled(Axis) THEN
				eHoming := E_HOMING_POSCHECK;
				eDecision := E_Decision_NONE;
				F_SetStartRefDialog();
				LastHomingState := E_HOMING_INIT;
				fbMoveToZero.bExecute := FALSE;
			ELSE
				STInstances.Input.PowerEnable := TRUE;
			END_IF
		ELSE
			LastHomingState := eHoming;
			eHoming := E_HOMING_RESET;
		END_IF

	E_HOMING_POSCHECK:
		eDecision := F_CheckStartRef();
		IF eDecision = E_Decision_YES THEN
			LastHomingState := eHoming;
			eHoming := E_HOMING_SETDEFAULT;
			fbSetDefaultHomingDirection.bExecute := TRUE;
		ELSIF eDecision = E_Decision_NO THEN
			LastHomingState := eHoming;
			eHoming := E_HOMING_JOINT2;
		END_IF

	E_HOMING_SETDEFAULT:
		IF NOT fbSetDefaultHomingDirection.bBusy THEN
			fbSetDefaultHomingDirection.bExecute := FALSE;
			IF fbSetDefaultHomingDirection.bDone THEN
				LastHomingState := eHoming;
				eHoming := E_HOMING_DEFAULT;
				fbHomeDefault.bExecute := TRUE;
			ELSIF fbSetDefaultHomingDirection.bError THEN
				LastHomingState := eHoming;
				eHoming := E_HOMING_ERROR;
			END_IF
		END_IF
	E_HOMING_DEFAULT:
		IF NOT fbHomeDefault.bHomingBusy THEN
			fbHomeDefault.bExecute := FALSE;
			LastHomingState := eHoming;
			IF fbHomeDefault.bHomingDone THEN
				eHoming := E_HOMING_DONE;
			ELSE
				eHoming := E_HOMING_ERROR;
			END_IF
		END_IF
	E_HOMING_JOINT1:

		fbHomeJoint.Axis := axis[1];
		fbHomeJoint.nJointNo := 1;
		fbHomeJoint.bExecute := TRUE;
		(*Wait Until Axis is Referenced: *)
		(*MoveRelative.Execute := FALSE;*)
		IF Axis[1].Status.Homed AND fbHomeJoint.DONE THEN
(*			STInstances.Input.HomingEnable[1] := FALSE;*)
			fbHomeJoint.bExecute := FALSE;
			eJointSide := E_Joint_Unknown;
			LastHomingState := E_HOMING_JOINT1;
			eHoming := E_HOMING_MOVEZERO;
		ELSIF STInstances.Input.HomingMode = MC_ResetCalibration THEN
			eJointSide := E_Joint_Unknown;
			LastHomingState := E_HOMING_JOINT1;
			eHoming := E_HOMING_JOINT2;
		END_IF


	E_HOMING_JOINT2:

(*		STInstances.Input.HomingEnable[2] := TRUE;*)
		fbHomeJoint.Axis := axis[2];
		fbHomeJoint.nJointNo := 2;
		fbHomeJoint.bExecute := TRUE;
		(*Wait Until Axis is Referenced: *)
		IF Axis[2].Status.Homed AND fbHomeJoint.DONE THEN
			fbHomeJoint.bExecute := FALSE;
			STInstances.Input.HomingEnable[2] := FALSE;
			LastHomingState := E_HOMING_JOINT2;
			eHoming := E_HOMING_MOVEZERO;
		ELSIF STInstances.Input.HomingMode = MC_ResetCalibration THEN
			LastHomingState := E_HOMING_JOINT2;
			eHoming := E_HOMING_JOINT3;
		END_IF


	E_HOMING_JOINT3:
(*		STInstances.Input.HomingEnable[3] := TRUE;*)
		fbHomeJoint.Axis := axis[3];
		fbHomeJoint.nJointNo := 3;
		fbHomeJoint.bExecute := TRUE;
		(*Wait Until Axis is Referenced: *)
		IF Axis[3].Status.Homed AND fbHomeJoint.DONE THEN
			fbHomeJoint.bExecute := FALSE;
			STInstances.Input.HomingEnable[3] := FALSE;
			LastHomingState := E_HOMING_JOINT3;
			eHoming := E_HOMING_MOVEZERO;
		ELSIF STInstances.Input.HomingMode = MC_ResetCalibration THEN
			LastHomingState := E_HOMING_JOINT3;
			eHoming := E_HOMING_JOINT4;
		END_IF


	E_HOMING_JOINT4:
		fbHomeJoint.Axis := axis[4];
		fbHomeJoint.nJointNo := 4;
		fbHomeJoint.bExecute := TRUE;
		(*Wait Until Axis is Referenced: *)
		IF Axis[4].Status.Homed AND fbHomeJoint.DONE THEN
			fbHomeJoint.bExecute := FALSE;
			STInstances.Input.HomingEnable[4] := FALSE;
			LastHomingState := eHoming;
			eHoming := E_HOMING_MOVEZERO;
		ELSIF STInstances.Input.HomingMode = MC_ResetCalibration THEN
			LastHomingState := eHoming;
			eHoming := E_HOMING_JOINT5;
		END_IF

	E_HOMING_JOINT5:
		fbHomeJoint.Axis := axis[5];
		fbHomeJoint.nJointNo := 5;
		fbHomeJoint.bExecute := TRUE;
		(*Wait Until Axis is Referenced: *)
		IF Axis[5].Status.Homed AND fbHomeJoint.DONE THEN
			fbHomeJoint.bExecute := FALSE;
			STInstances.Input.HomingEnable[5] := FALSE;
			LastHomingState := eHoming;
			eHoming := E_HOMING_MOVEZERO;
		ELSIF STInstances.Input.HomingMode = MC_ResetCalibration THEN
			LastHomingState := eHoming;
			eHoming := E_HOMING_JOINT6;
		END_IF


	E_HOMING_JOINT6:
		fbHomeJoint.Axis := axis[6];
		fbHomeJoint.nJointNo := 6;
		fbHomeJoint.bExecute := TRUE;
		(*Wait Until Axis is Referenced: *)
		IF Axis[6].Status.Homed AND fbHomeJoint.DONE THEN
			fbHomeJoint.bExecute := FALSE;
			STInstances.Input.HomingEnable[6] := FALSE;
			LastHomingState := eHoming;
			eHoming := E_HOMING_DONE;
		ELSIF STInstances.Input.HomingMode = MC_ResetCalibration THEN
			LastHomingState := eHoming;
			eHoming := E_HOMING_DONE;
		END_IF

	E_HOMING_DONE:
		IF F_CheckIfAllAxisHomed(Axis) THEN
			LastHomingState := eHoming;
			eHoming := E_HOMING_IDLE;
			bHomingDone := TRUE;
			bHomingBusy := FALSE;
		ELSE
			LastHomingState := eHoming;
			eHoming := E_HOMING_INIT;
		END_IF

		F_SetHomingDisable(STInstances);


	E_HOMING_RESET:
		F_SetHomingEnable(STInstances);
		IF NOT F_CheckIfAllAxisHomed(Axis) THEN
			F_SetHomingDisable(STInstances);
			LastHomingState := eHoming;
			eHoming := E_HOMING_INIT;
		END_IF

	E_HOMING_MOVEZERO:
		CASE LastHomingState OF
			E_HOMING_JOINT1:
				fbMoveToZero.Axis := ADR(Axis[1]);
				fbMoveToZero.bExecute := TRUE;
				IF fbMoveToZero.bDone THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHoming := e_Homing_Joint6;
				ELSIF fbMoveToZero.bError  THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHOming := E_HOMING_Error;
				END_IF
			E_HOMING_JOINT2:
				fbMoveToZero.Axis := ADR(Axis[2]);
				fbMoveToZero.bExecute := TRUE;
				IF fbMoveToZero.bDone THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHoming := e_Homing_Joint3;
				ELSIF fbMoveToZero.bError  THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHOming := E_HOMING_Error;
				END_IF
			E_HOMING_JOINT3:
				fbMoveToZero.Axis := ADR(Axis[3]);
				fbMoveToZero.bExecute := TRUE;
				IF fbMoveToZero.bDone THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHoming := e_Homing_Joint4;
				ELSIF fbMoveToZero.bError  THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHOming := E_HOMING_Error;
				END_IF
			E_HOMING_JOINT4:
				fbMoveToZero.Axis := ADR(Axis[4]);
				fbMoveToZero.bExecute := TRUE;
				IF fbMoveToZero.bDone THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHoming := e_Homing_Joint5;
				ELSIF fbMoveToZero.bError  THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHOming := E_HOMING_Error;
				END_IF
			E_HOMING_JOINT5:
				fbMoveToZero.Axis := ADR(Axis[5]);
				fbMoveToZero.bExecute := TRUE;
				IF fbMoveToZero.bDone THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHoming := e_Homing_Joint1;
				ELSIF fbMoveToZero.bError  THEN
					fbMoveToZero.bExecute := FALSE;
					LastHomingState := eHoming;
					eHOming := E_HOMING_Error;
				END_IF
			E_HOMING_JOINT6:
				;
		END_CASE

	E_HOMING_MOVERELATIVE:
		IF LastHomingState = E_HOMING_JOINT4 THEN
			IF NOT SetPositionAxis4.Busy THEN
				SetPositionAxis4.Execute := FALSE;
				MoveRelativeAxis4.Distance := 20;
				MoveRelativeAxis4.Velocity := 5;
				MoveRelativeAxis4.Execute:=TRUE;
				LastHomingState := eHoming;
				eHoming := E_HOMING_JOINT4;
			END_IF
		ELSIF LastHomingState = E_HOMING_JOINT6 THEN
			IF NOT SetPositionAxis6.Busy THEN
				SetPositionAxis6.Execute := FALSE;
				MoveRelativeAxis6.Distance := 20;
				MoveRelativeAxis6.Velocity := 5;
				MoveRelativeAxis6.Execute:=TRUE;
				LastHomingState := eHoming;
				eHoming := E_HOMING_JOINT6;
			END_IF
		END_IF

	E_HOMING_ERROR:
		F_ResetCommands();
		bHomingBusy := FALSE;
		IF NOT F_CheckIfAxisHasError(Axis) THEN
			eHoming := E_HOMING_IDLE;
			bError := TRUE;
		END_IF

	E_HOMING_RESETCMD:
		MoveRelativeAxis4.Execute := FALSE;
		MoveRelativeAxis6.Execute := FALSE;
		SetPositionAxis4.Execute := FALSE;
		SetPositionAxis6.Execute := FALSE;
		fbMoveToZero.bExecute := FALSE;
		fbHomeJoint.bExecute := FALSE;
		fbHomeDefault.bExecute := FALSE;
		LastHomingState := eHoming;
		eHoming:=E_HOMING_IDLE;
		bHomingBusy := FALSE;
		F_ResetStartRefDialog();

	E_HOMING_IDLE:
		F_SetHomingDisable(STInstances);
(*		RStart(CLK:= bExecute);*)
		IF bExecute
		AND NOT bHomingDone THEN		(*Start On Rising Edge*)
			IF F_CheckIfAllAxisHomed(Axis) THEN
				bReferenceRestarted := TRUE;
				STInstances.Input.HomingMode := MC_ResetCalibration;
			END_IF
			LastHomingState := eHoming;
			eHoming := E_HOMING_INIT;
			bHomingBusy := TRUE;
		ELSIF NOT bExecute THEN
			bHomingDone := FALSE;
			bReferenceRestarted := FALSE;
		ELSE
			bReferenceRestarted := FALSE;
		END_IF

END_CASE

fbHomeJoint(
	bExecute:= ,
	nJointNo:= ,
	Axis:= ,
	Busy=> , 
	Error=> , 
	DONE=> );

fbHomeDefault(
	bExecute:= ,
	Axis:= Axis,
	STInstances:= stInstances,
	bHomingDone=> ,
	bHomingBusy=> ,
	bReferenceRestarted=> ,
	bHasBeenStopped=> ,
	bError=> );               =  ,     Е           FB_HomeJoint 7U	^M7U         &          i  FUNCTION_BLOCK FB_HomeJoint
VAR_INPUT
	bExecute 	:BOOL;
	nJointNo	:INT;
	Axis		:AXIS_REF;
END_VAR
VAR_OUTPUT
	Busy		:BOOL;
	Error		:BOOL;
	DONE		:BOOL;
END_VAR
VAR
	eHomingJoint	: E_HomingJoint;
	eLastHoming		: E_HomingJoint;
	eJointSide 		: E_JointSide;
	fbSetCamSearchDirection: FB_SetCamSearchDirection;
	fbMoveToZero: FB_MoveToZero;
END_VARz  (*reset state machine if stop or reset has been executed*)
IF stCommands.SetReset
OR stCommands.SetStopArm THEN
	F_SwitchStep(pStepCounter:=ADR(eHomingJoint), NextStep:= E_HomingJoint_Reset, pLastStep:=ADR(eLastHoming));
END_IF

(*state machine*)
CASE eHomingJoint OF
	E_HomingJoint_IDLE:
		IF bExecute AND NOT BUSY THEN
			(*check if joint is already standing on reference cam*)
			IF NOT bHomeRefAxis[nJointNo] THEN
				(*not on cam -> ask user*)
				F_SwitchStep(pStepCounter:=ADR(eHomingJoint), NextStep:= E_HomingJoint_ShowDialog, pLastStep:=ADR(eLastHoming));
			ELSE
				(*already on cam -> do referencing*)
				F_SwitchStep(pStepCounter:=ADR(eHomingJoint), NextStep:= E_HomingJoint_ExecuteHoming, pLastStep:=ADR(eLastHoming));
			END_IF
		END_IF

	E_HomingJoint_ShowDialog:
		(*show referencing dialog*)
		eJointSide := E_Joint_Unknown;
		F_SetRefDialog(nJointNo);
		F_SwitchStep(pStepCounter:=ADR(eHomingJoint), NextStep:= E_HomingJoint_CheckJointSide, pLastStep:=ADR(eLastHoming));

	E_HomingJoint_CheckJointSide:
		(*analyze users input*)
		eJointSide := F_CheckJointSide();
		IF eJointSide <> E_Joint_Unknown THEN
			F_ResetDialog();
			F_SwitchStep(pStepCounter:=ADR(eHomingJoint), NextStep:= E_HomingJoint_SetSearchDirection, pLastStep:=ADR(eLastHoming));
		END_IF

	E_HomingJoint_SetSearchDirection:
		(*set search directinon for calibration cam... *)
		CASE nJointNo OF
			1,2,3,4,5,6:
			CASE eJointSide OF
				E_Joint_Negative:
					fbSetCamSearchDirection.eSearchDirection:=E_Joint_Negative;
				E_Joint_Positive:
					fbSetCamSearchDirection.eSearchDirection:=E_Joint_Positive;
			END_CASE
			7:
			CASE eJointSide OF
				E_Joint_Negative:
					fbSetCamSearchDirection.eSearchDirection:=E_Joint_Positive;
				E_Joint_Positive:
					fbSetCamSearchDirection.eSearchDirection:=E_Joint_Negative;
			END_CASE
		END_CASE

		(*... and write it down to the NC*)
		fbSetCamSearchDirection.bExecute :=TRUE;
		IF fbSetCamSearchDirection.bBusy THEN
			fbSetCamSearchDirection.bExecute :=FALSE;
			F_SwitchStep(pStepCounter:=ADR(eHomingJoint), NextStep:= E_HomingJoint_ExecuteHoming, pLastStep:=ADR(eLastHoming));
		END_IF

	E_HomingJoint_ExecuteHoming:

		IF NOT fbSetCamSearchDirection.bBusy AND NOT fbSetCamSearchDirection.bError THEN
			(*setting of search direction worked -> start referencing*)
			stInstances.Input.HomingEnable[nJointNo] := TRUE;
		ELSIF fbSetCamSearchDirection.bError THEN
			(*setting of search direction failed -> go to error*)
			Busy := FALSE;
			Error := TRUE;
			F_SwitchStep(pStepCounter:=ADR(eHomingJoint), NextStep:= E_HomingJoint_IDLE, pLastStep:=ADR(eLastHoming));
		END_IF

		IF Axis.Status.Homed THEN
			(*axis homed -> go to next step*)
			stInstances.Input.HomingEnable[nJointNo] := FALSE;
			F_SwitchStep(pStepCounter:=ADR(eHomingJoint), NextStep:= E_HomingJoint_MoveToZero, pLastStep:=ADR(eLastHoming));
		END_IF

	E_HomingJoint_MoveToZero:
		(*move axis to zero position*)
		fbMoveToZero.bExecute := TRUE;

		IF fbMoveToZero.bDone THEN
			(*move to zero done*)
			F_SwitchStep(pStepCounter:=ADR(eHomingJoint), NextStep:= E_HomingJoint_DONE, pLastStep:=ADR(eLastHoming));
		ELSIF fbMoveToZero.bError THEN
			(*something went wrong*)
			Busy := FALSE;
			Error := TRUE;
			F_SwitchStep(pStepCounter:=ADR(eHomingJoint), NextStep:= E_HomingJoint_IDLE, pLastStep:=ADR(eLastHoming));
		END_IF

	E_HomingJoint_Done:
		(*homing done -> set succesful-flag*)
		Done := TRUE;
		Busy := FALSE;
		F_SwitchStep(pStepCounter:=ADR(eHomingJoint), NextStep:= E_HomingJoint_IDLE, pLastStep:=ADR(eLastHoming));

	E_HomingJoint_Reset:
		(*a reset has been executed*)
		DONE := FALSE;
		Busy := FALSE;
		fbSetCamSearchDirection.bExecute := FALSE;
		fbMoveToZero.bExecute := FALSE;
		eJointSide := E_Joint_Unknown;
		F_ResetDialog();
		F_SwitchStep(pStepCounter:=ADR(eHomingJoint), NextStep:= E_HomingJoint_IDLE, pLastStep:=ADR(eLastHoming));

END_CASE

fbSetCamSearchDirection(
	bExecute:= ,
	nAxisID:= Axis.NcToPlc.AxisId,
	eSearchDirection:= ,
	bBusy=> ,
	bError=> ,
	nErrID=>  );

fbMoveToZero(
	bExecute:= ,
	Axis:= ADR(Axis),
	bDone=> ,
	bError=> , 
	nErrID=> );                  ,                FB_Instances zЗ7U	@Е7U      аH`" О        ,  FUNCTION_BLOCK FB_Instances
(*calls nearly all instances of used functions-blocks*)
(*|--------------------------------------------------------------------|
  | 16.10.2014|FlA|added check for MC_Power errors and MC_Reset errors |
  |--------------------------------------------------------------------|*)
VAR_INPUT

END_VAR
VAR_OUTPUT

END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
	STInstances	:	ST_Instances;
END_VAR
VAR
	_MoveAbsoluteExecute	:	BOOL;
	i		:	UINT;
	_Velocity		:	ARRAY[1..6] OF LREAL;

	SetPosOpt	:	ST_SetPositionOptions;
	SetDestallOpt	:	ST_PowerStepperStruct;

	Power_Axis	: 	ARRAY[1..6] OF MC_PowerStepper;
	MoveAbsoluteAxis: 	ARRAY[1..12] OF MC_MoveAbsolute;
	MoveJog		:	ARRAY[1..6] OF MC_Jog;
	SetPosition		:	ARRAY[1..6] OF MC_SetPosition;
	HomingAxis	:	ARRAY[1..6] OF MC_Home;
	ResetHoming	:	ARRAY[1..6] OF MC_Home;
	ResetAxis	:	ARRAY[1..6] OF MC_Reset;
	StopAxis		:	ARRAY[1..6] OF MC_Stop;
	logged: ARRAY[1..6] OF BOOL;
	k: INT;
	TON_RefCam: ARRAY[1..6] OF TON;
	bHackReset: ARRAY[1..6] OF BOOL;
END_VAR/  (*assign hardware inputs to internal array-variable*)
TON_RefCam[1].IN := bHomeRefAxis1;
TON_RefCam[2].IN := bHomeRefAxis2;
TON_RefCam[3].IN := bHomeRefAxis3;
TON_RefCam[4].IN := bHomeRefAxis4;
TON_RefCam[5].IN := bHomeRefAxis5;
TON_RefCam[6].IN := bHomeRefAxis6;

FOR k := 1 TO 6 DO
	TON_RefCam[k](pt:=t#20ms);
	bHomeRefAxis[k] := TON_RefCam[k].Q;
END_FOR


IF STInstances.Input.MoveAbsoluteInterpolation THEN
	_MoveAbsoluteExecute := NOT _MoveAbsoluteExecute;		(* Toggle *)
ELSE
	_MoveAbsoluteExecute := STInstances.Input.MoveAbsoluteEnable; (* no Toggle *)
END_IF

(*_Velocity := F_CalcVelocity(STInstances.Input.fPosition, Axis); *)
_Velocity := STInstances.Input.fVelocity;

SetDestallOpt.DestallDetectMode := PwStDetectMode_Lagging;
SetDestallOpt.DestallMode:= PwStMode_SetError;(*PwStMode_UseOverride;*)
SetDestallOpt.DestallEnable := TRUE;

(*-----------------------Axis 1:--------------------------------*)
(*Power*)
Power_Axis[1](
	Enable:= STInstances.Input.PowerEnable,
	Enable_Positive:= TRUE,
	Enable_Negative:= TRUE,
	DestallParams := SetDestallOpt,
	Axis:= Axis[1] );

(*Homing *)
HomingAxis[1](
	Execute:= STInstances.Input.HomingEnable[1],
	Position:= DEFAULT_HOME_POSITION,
	HomingMode:= stInstances.Input.HomingMode,
	bCalibrationCam:= bHomeRefAxis[1],
	Axis:= Axis[1] );

(*Move Absolute*)
MoveAbsoluteAxis[1](
	Execute:= _MoveAbsoluteExecute OR STInstances.Input.MoveAbsoluteSingleAxis[1],
	Position:= STInstances.Input.fPosition[1],
	Velocity:= _Velocity[1],
	Axis:= Axis[1] );

MoveAbsoluteAxis[7](
	Execute:= NOT _MoveAbsoluteExecute,
	Position:= STInstances.Input.fPosition[1],
	Velocity:= _Velocity[1],
	Axis:= Axis[1] );

(*Move Jog*)
MoveJog[1](
	JogForward:= stInstances.Input.MoveJogAxisPos[1],
	JogBackwards:= stInstances.Input.MoveJogAxisNeg[1],
	Mode:= MC_JOGMODE_INCHING,
	Position:=2,
	Velocity:=5,
	Axis:= Axis[1]
);


(*Set Position*)
SetPosOpt.ClearPositionLag:=TRUE;
SetPosition[1](
	Execute:= STInstances.Input.SetPositionEnable,
	Position:= 0,
	Options:= SetPosOpt,
	Axis:= Axis[1]);

(*Axis Reset:*)
ResetAxis[1](
	Execute:= STInstances.Input.ResetEnable OR bHackReset[1],
	Axis:= Axis[1] );


(*Stop Axis:*)
StopAxis[1](
	Execute:= STInstances.Input.StopEnable,
	Axis:= Axis[1]);

(*-----------------------Axis 2:--------------------------------*)
(*Power*)
Power_Axis[2](
	Enable:= STInstances.Input.PowerEnable,
	Enable_Positive:= TRUE,
	Enable_Negative:= TRUE,
	DestallParams := SetDestallOpt,
	Axis:= Axis[2] );

(*Homing*)
HomingAxis[2](
	Execute:= STInstances.Input.HomingEnable[2],
	Position:= DEFAULT_HOME_POSITION,
	HomingMode:= stInstances.Input.HomingMode,
	bCalibrationCam:= bHomeRefAxis[2],
	Axis:= Axis[2] );

(*Move Absolute*)
MoveAbsoluteAxis[2](
	Execute:= _MoveAbsoluteExecute OR STInstances.Input.MoveAbsoluteSingleAxis[2],
	Position:= STInstances.Input.fPosition[2],
	Velocity:= _Velocity[2],
	Axis:= Axis[2] );

MoveAbsoluteAxis[8](
	Execute:= NOT _MoveAbsoluteExecute,
	Position:= STInstances.Input.fPosition[2],
	Velocity:= _Velocity[2],
	Axis:= Axis[2] );

(*Move Jog*)
MoveJog[2](
	JogForward:= stInstances.Input.MoveJogAxisPos[2],
	JogBackwards:= stInstances.Input.MoveJogAxisNeg[2],
	Mode:= MC_JOGMODE_INCHING,
	Position:=2,
	Velocity:=5,
	Axis:= Axis[2]
);

(*Set Position*)
SetPosition[2](
	Execute:= STInstances.Input.SetPositionEnable,
	Position:= 0,
	Options:= SetPosOpt,
	Axis:= Axis[2]);

(*Axis Reset:*)
ResetAxis[2](
	Execute:= STInstances.Input.ResetEnable OR bHackReset[2],
	Axis:= Axis[2] );

(*Stop Axis:*)
StopAxis[2](
	Execute:= STInstances.Input.StopEnable,
	Axis:= Axis[2]);


(*-----------------------Axis 3:--------------------------------*)
(*Power*)
Power_Axis[3](
	Enable:= STInstances.Input.PowerEnable,
	Enable_Positive:= TRUE,
	Enable_Negative:= TRUE,
	DestallParams := SetDestallOpt,
	Axis:= Axis[3] );

(*Homing*)
HomingAxis[3](
	Execute:= STInstances.Input.HomingEnable[3],
	Position:= DEFAULT_HOME_POSITION,
	HomingMode:= stInstances.Input.HomingMode,
	bCalibrationCam:= bHomeRefAxis[3],
	Axis:= Axis[3] );

(*MoveAbsolute*)
MoveAbsoluteAxis[3](
	Execute:= _MoveAbsoluteExecute OR STInstances.Input.MoveAbsoluteSingleAxis[3],
	Position:= STInstances.Input.fPosition[3],
	Velocity:= _Velocity[3],
	Axis:= Axis[3] );

MoveAbsoluteAxis[9](
	Execute:= NOT _MoveAbsoluteExecute,
	Position:= STInstances.Input.fPosition[3],
	Velocity:= _Velocity[3],
	Axis:= Axis[3] );

(*Move Jog*)
MoveJog[3](
	JogForward:= stInstances.Input.MoveJogAxisPos[3],
	JogBackwards:= stInstances.Input.MoveJogAxisNeg[3],
	Mode:= MC_JOGMODE_INCHING,
	Position:=2,
	Velocity:=5,
	Axis:= Axis[3]
);

(*Set Position*)
SetPosition[3](
	Execute:= STInstances.Input.SetPositionEnable,
	Position:= 0,
	Options:= SetPosOpt,
	Axis:= Axis[3]);

(*Axis Reset:*)
ResetAxis[3](
	Execute:= STInstances.Input.ResetEnable OR bHackReset[3],
	Axis:= Axis[3] );

(*Stop Axis:*)
StopAxis[3](
	Execute:= STInstances.Input.StopEnable,
	Axis:= Axis[3]);


(*-----------------------Axis 4:--------------------------------*)
(*Power*)
Power_Axis[4](
	Enable:= STInstances.Input.PowerEnable,
	Enable_Positive:= TRUE,
	Enable_Negative:= TRUE,
	DestallParams := SetDestallOpt,
	Axis:= Axis[4] );

(*Homing*)
HomingAxis[4](
	Execute:= STInstances.Input.HomingEnable[4],
	Position:= DEFAULT_HOME_POSITION,
	HomingMode:= stInstances.Input.HomingMode,
	bCalibrationCam:= bHomeRefAxis[4],
	Axis:= Axis[4] );

(*Move Absolute*)
MoveAbsoluteAxis[4](
	Execute:= _MoveAbsoluteExecute OR STInstances.Input.MoveAbsoluteSingleAxis[4],
	Position:= STInstances.Input.fPosition[4],
	Velocity:= _Velocity[4],
	Axis:= Axis[4] );

MoveAbsoluteAxis[10](
	Execute:= NOT _MoveAbsoluteExecute,
	Position:= STInstances.Input.fPosition[4],
	Velocity:= _Velocity[4],
	Axis:= Axis[4] );

(*Move Jog*)
MoveJog[4](
	JogForward:= stInstances.Input.MoveJogAxisPos[4],
	JogBackwards:= stInstances.Input.MoveJogAxisNeg[4],
	Mode:= MC_JOGMODE_INCHING,
	Position:=2,
	Velocity:=5,
	Axis:= Axis[4]
);

(*Set Position*)
SetPosition[4](
	Execute:= STInstances.Input.SetPositionEnable,
	Position:= 0,
	Options:= SetPosOpt,
	Axis:= Axis[4]);

(*Axis Reset:*)
ResetAxis[4](
	Execute:= STInstances.Input.ResetEnable OR bHackReset[4],
	Axis:= Axis[4] );

(*Stop Axis:*)
StopAxis[4](
	Execute:= STInstances.Input.StopEnable,
	Axis:= Axis[4]);


(*-----------------------Axis 5:--------------------------------*)
(*Power*)
Power_Axis[5](
	Enable:= STInstances.Input.PowerEnable,
	Enable_Positive:= TRUE,
	Enable_Negative:= TRUE,
	DestallParams := SetDestallOpt,
	Axis:= Axis[5] );

(*Homing*)
HomingAxis[5](
	Execute:= STInstances.Input.HomingEnable[5],
	Position:= DEFAULT_HOME_POSITION,
	HomingMode:= stInstances.Input.HomingMode,
	bCalibrationCam:= bHomeRefAxis[5],
	Axis:= Axis[5] );

(*Move Absolute*)
MoveAbsoluteAxis[5](
	Execute:= _MoveAbsoluteExecute OR STInstances.Input.MoveAbsoluteSingleAxis[5],
	Position:= STInstances.Input.fPosition[5],
	Velocity:= _Velocity[5],
	Axis:= Axis[5] );

MoveAbsoluteAxis[11](
	Execute:= NOT _MoveAbsoluteExecute,
	Position:= STInstances.Input.fPosition[5],
	Velocity:= _Velocity[5],
	Axis:= Axis[5] );

(*Move Jog*)
MoveJog[5](
	JogForward:= stInstances.Input.MoveJogAxisPos[5],
	JogBackwards:= stInstances.Input.MoveJogAxisNeg[5],
	Mode:= MC_JOGMODE_INCHING,
	Position:=2,
	Velocity:=5,
	Axis:= Axis[5]
);

(*Set Position*)
SetPosition[5](
	Execute:= STInstances.Input.SetPositionEnable,
	Position:= 0,
	Options:= SetPosOpt,
	Axis:= Axis[5]);

(*Axis Reset:*)
ResetAxis[5](
	Execute:= STInstances.Input.ResetEnable OR bHackReset[5],
	Axis:= Axis[5] );

(*Stop Axis:*)
StopAxis[5](
	Execute:= STInstances.Input.StopEnable,
	Axis:= Axis[5]);


(*-----------------------Axis 6:--------------------------------*)
(*Power*)
Power_Axis[6](
	Enable:= STInstances.Input.PowerEnable,
	Enable_Positive:= TRUE,
	Enable_Negative:= TRUE,
	DestallParams := SetDestallOpt,
	Axis:= Axis[6] );

(*Homing *)
HomingAxis[6](
	Execute:= STInstances.Input.HomingEnable[6],
	Position:= DEFAULT_HOME_POSITION,
	HomingMode:= stInstances.Input.HomingMode,
	bCalibrationCam:= bHomeRefAxis[6],
	Axis:= Axis[6] );

(*Move Absolute*)
MoveAbsoluteAxis[6](
	Execute:= _MoveAbsoluteExecute OR STInstances.Input.MoveAbsoluteSingleAxis[6],
	Position:= STInstances.Input.fPosition[6],
	Velocity:= _Velocity[6],
	Axis:= Axis[6] );

MoveAbsoluteAxis[12](
	Execute:= NOT _MoveAbsoluteExecute,
	Position:= STInstances.Input.fPosition[6],
	Velocity:= _Velocity[6],
	Axis:= Axis[6] );

(*Move Jog*)
MoveJog[6](
	JogForward:= stInstances.Input.MoveJogAxisPos[6],
	JogBackwards:= stInstances.Input.MoveJogAxisNeg[6],
	Mode:= MC_JOGMODE_INCHING,
	Position:=2,
	Velocity:=5,
	Axis:= Axis[6]
);

(*Set Position*)
SetPosition[6](
	Execute:= STInstances.Input.SetPositionEnable,
	Position:= 0,
	Options:= SetPosOpt,
	Axis:= Axis[6]);

(*Axis Reset:*)
ResetAxis[6](
	Execute:= STInstances.Input.ResetEnable OR bHackReset[6],
	Axis:= Axis[6] );

(*Stop Axis:*)
StopAxis[6](
	Execute:= STInstances.Input.StopEnable,
	Axis:= Axis[6]);


STInstances.Output.PowerEnableDone := F_CheckIfAxisEnabled(Axis);

IF MoveAbsoluteAxis[1].Done AND
	MoveAbsoluteAxis[2].Done AND
	MoveAbsoluteAxis[3].Done AND
	MoveAbsoluteAxis[4].Done AND
	MoveAbsoluteAxis[5].Done AND
	MoveAbsoluteAxis[6].Done
THEN
	STInstances.Output.MoveAbsoluteDone := TRUE;
ELSE
	STInstances.Output.MoveAbsoluteDone := FALSE;
END_IF

IF MoveAbsoluteAxis[1].Busy OR (*and*)
	MoveAbsoluteAxis[2].Busy OR (*AND*)
	MoveAbsoluteAxis[3].Busy OR (*AND*)
	MoveAbsoluteAxis[4].Busy OR (*AND*)
	MoveAbsoluteAxis[5].Busy OR (*AND*)
	MoveAbsoluteAxis[6].Busy
THEN
	STInstances.Output.MoveAbsoluteBusy := TRUE;
ELSE
	STInstances.Output.MoveAbsoluteBusy := FALSE;
END_IF

FOR i:=1 TO 6 DO
	STInstances.Output.MoveAbsoluteSingleAxisDone[i] := MoveAbsoluteAxis[i].Done;
END_FOR

IF ResetAxis[1].Done AND
	ResetAxis[2].Done AND
	ResetAxis[3].Done AND
	ResetAxis[4].Done AND
	ResetAxis[5].Done AND
	ResetAxis[6].Done
THEN
	STInstances.Output.ResetEnableDone := TRUE;
ELSE
	STInstances.Output.ResetEnableDone := FALSE;
END_IF

STInstances.Output.ResetFailed :=FALSE;
FOR i := 1 TO 6 DO
	STInstances.Output.ResetFailed := STInstances.Output.ResetFailed OR ResetAxis[i].Error;
END_FOR

IF StopAxis[1].Done AND
	StopAxis[2].Done AND
	StopAxis[3].Done AND
	StopAxis[4].Done AND
	StopAxis[5].Done AND
	StopAxis[6].Done
THEN
	STInstances.Output.StopDone := TRUE;
ELSE
	STInstances.Output.StopDone := FALSE;
END_IF

FOR i:=1 TO 6 DO
	STInstances.Output.ActualPosition[i] := Axis[i].NcToPlc.ActPos;
END_FOR


IF MoveJog[1].Done OR
	MoveJog[2].Done OR
	MoveJog[3].Done OR
	MoveJog[4].Done OR
	MoveJog[5].Done OR
	MoveJog[6].Done
THEN
	STInstances.Output.MoveJogDone := TRUE;
ELSE
	STInstances.Output.MoveJogDone := FALSE;
END_IF

IF MoveJog[1].Error OR
	MoveJog[2].Error OR
	MoveJog[3].Error OR
	MoveJog[4].Error OR
	MoveJog[5].Error OR
	MoveJog[6].Error
THEN
	STInstances.Output.MoveJogError := TRUE;
ELSE
	STInstances.Output.MoveJogError := FALSE;
END_IF

(*check for errors with powering motors*)
STInstances.Output.PowerError := FALSE;
FOR i := 1 TO 6 DO
	STInstances.Output.PowerError := STInstances.Output.PowerError OR	Power_Axis[i].Error ;

	IF Axis[i].Status.HasJob AND NOT Axis[i].Status.Moving AND NOT stInstances.Input.HomingEnable[i] THEN
		bHackReset[i] := TRUE;
		logged[i] :=TRUE;
		IF NOT logged[i] THEN
			ADSLOGSTR( ADSLOG_MSGTYPE_ERROR OR ADSLOG_MSGTYPE_LOG, 'DEBUG: Axis %s has stopped working!!!', INT_TO_STRING(i) );
		END_IF
	ELSE
		bHackReset[i] := FALSE;
		logged[i] := FALSE;
	END_IF

	ResetHoming[i](
	Execute:= SetPosition[i].Done,
	Position:= 0,
	HomingMode:= MC_ResetCalibration,
	BufferMode:= ,
	Options:= ,
	bCalibrationCam:= ,
	Axis:= Axis[i],
	Done=> ,
	Busy=> ,
	Active=> ,
	CommandAborted=> ,
	Error=> ,
	ErrorID=> );

END_FOR
                  ,                FB_LedBlinking ^M7U	^M7U       §џ          §   FUNCTION_BLOCK FB_LedBlinking
VAR_INPUT
	bSwitch	:	BOOL; (*жffner Kontakt*)
	tTime	:	TIME;
END_VAR

VAR_OUTPUT
	bLED 	:	BOOL;
END_VAR
VAR
	i	:	UINT;
	LastLEDState : BOOL;

	TP_On: TP;
	TP_Off: TP;
	FTrig: F_TRIG;
	RTrig: R_TRIG;
END_VARЄ  (*
	5 mal Blinken
	wenn bSwitch lowsignal
*)
FTrig(CLK:= bSwitch);

TP_Off(
		IN:= FTrig.Q OR NOT TP_On.Q,
		PT:= tTime
	    );

TP_On(
		IN:= NOT TP_Off.Q,
		PT:= tTime
	     );


IF FTrig.Q THEN
	i:=0;
END_IF

IF i<=4 THEN
	IF TP_Off.Q THEN
		bLED := FALSE;
	ELSIF TP_On.Q THEN
		bLED := TRUE;
	END_IF
ELSE
	bLED := TRUE;
END_IF

RTrig(CLK:= bLED);

IF RTrig.Q THEN
	i := i+1;
END_IF               C   ,                FB_LocalClient ^M7U	^M7U                      х  FUNCTION_BLOCK FB_LocalClient
(* This function block implements simple TCP/IP client protocol. *)
VAR_IN_OUT
	tx 			: FB_FrameStringFifo;(* TX fifo *)
	rx 			: FB_FrameStringFifo;(* RX fifo *)
	errors		: FB_ProtErrorFifo;(* Error message fifo *)
END_VAR
VAR_INPUT
	bDbg		: BOOL 			:= FALSE;(* TRUE => Enable debug output, FALSE => Disable debug output *)
	sRemoteHost	: STRING(15) 		:= REMOTE_IP_ADDRESS;(* IP address of remote server *)
	nRemotePort	: UDINT			:= CLIENTPORT;(* Remote server port *)
	bEnable		: BOOL			:= FALSE;(* TRUE => Enable/connect, FALSE => Disable/disconnect *)
	tReconnect	: TIME 			:= T#45s;(* Try to reconnect after this time *)
END_VAR
VAR_OUTPUT
	eState		: E_SocketConnectionState := eSOCKET_DISCONNECTED;(* TCP/IP connection state *)
END_VAR
VAR
	fbConnect 	: FB_ClientServerConnection := ( tReconnect := T#45s );(* create/release TCP/IP connection *)
	fbSend		: FB_SocketSend;(* send TCP/IP data *)
	fbReceive	: FB_SocketReceive;(* receive TCP/IP data *)
	state 		: BYTE;(* global state *)
	tx_state 		: BYTE;(* tx state *)
	rx_state 		: BYTE;(* rx state *)
	bDisconnect	: BOOL;(* disconnect flag, if set the socket will be closed *)
	pollTimer	: TON;
	cbReceived	: UDINT;(* count of received data bytes *)
	cbRx		: UDINT;(* byte length of received string *)
	rxFrame		: T_MaxString;
	txFrame		: T_MaxString;
	buffer		: ARRAY[0..PLCPRJ_BUFFER_SIZE] OF BYTE;(* Temp. RX buffer *)
	i			: UDINT;
	bAbort		: BOOL;
	sID			: STRING(20) := '';
END_VAR  CASE state OF
	0:(* init state *)
		rx.A_Reset( bDbg := bDbg );(* reset RX fifo (optional) *)
		tx.A_Reset( bDbg := bDbg );(* reset TX fifo (optional) *)
		errors.A_Reset( bDbg := bDbg );(* reset error fifo (optional) *)
		tx_state 		:= 0;
		rx_state 		:= 0;
		pollTimer( IN := FALSE, PT := PLCPRJ_RECEIVER_POLLING_CYCLE_TIME );
		bDisconnect 	:= FALSE;
		cbReceived 	:= 0;
		state 		:= 1;

	1:(* connect *)
		fbConnect( 	sSrvNetID 		:= '',
					nMode			:= CONNECT_MODE_ENABLEDBG,(* enable debug output *)
					sRemoteHost 	:= sRemoteHost,
					nRemotePort 		:= nRemotePort,
					bEnable			:= bEnable,
					tReconnect		:= tReconnect,
					eState			=> eState );
		IF NOT fbConnect.bBusy THEN

			sID 			:= CONCAT( CONCAT('[', DWORD_TO_HEXSTR(fbConnect.hSocket.handle, 4, FALSE) ), ']' );
			tx.sDesc		:= CONCAT( 'CLI.Tx', sID );
			rx.sDesc 		:= CONCAT( 'CLI.Rx', sID );
			errors.sDesc	:= CONCAT( 'CLI.Err', sID );

			IF NOT fbConnect.bError THEN
				IF eState = eSOCKET_CONNECTED THEN(* we are conencted *)
					state := 2;
				END_IF
			ELSE(* connect error => log error *)
				errors.A_AddTail( putError := fbConnect.nErrId );
			END_IF
		END_IF


	2:(* data exchange state *)
		bDisconnect := NOT bEnable OR bDisconnect;(* user/internal disconnect requested? *)
		IF bDisconnect AND (tx_state = 0) AND (rx_state = 0) THEN
			state := 3;(* disconnect *)
		ELSE

			(* send tx data *)
			CASE tx_state OF
				0:
					IF NOT bDisconnect THEN
						tx.A_RemoveHead( bDbg := bDbg, getValue => txFrame );(* remove oldest string entry s*)
						IF tx.bOk THEN(* success *)
							fbSend( bExecute := FALSE );
							fbSend(	sSrvNetID 	:= '',
									hSocket		:= fbConnect.hSocket,
									cbLen		:= INT_TO_UDINT(LEN( txFrame )) + 1,(* send string inclusive string (null) delimiter! *)
									pSrc		:= ADR( txFrame ),(* address of the string variable *)
									bExecute	:= TRUE,
									tTimeout 		:= T#5s );
							tx_state := 1;
						END_IF
					END_IF
				1:(* wait until send not busy *)
					fbSend( bExecute := FALSE );
					IF NOT fbSend.bBusy THEN
						tx_state := 0;
						IF fbSend.bError THEN(* send error => log error and disconnect *)
							errors.A_AddTail( putError := fbSend.nErrId );
							bDisconnect := TRUE;(* set flag *)
						END_IF
					END_IF
			END_CASE



			(* get rx data *)
			CASE rx_state OF
				0:
					IF NOT bDisconnect THEN
						pollTimer( IN := TRUE );
						IF pollTimer.Q THEN
							IF rx.cbFree >= SIZEOF(rxFrame) THEN(* check free rx fifo space *)
								pollTimer( IN := FALSE );

								fbReceive( bExecute := FALSE );
								fbReceive( 	sSrvNetId	:= '',
											hSocket		:= fbConnect.hSocket,
											cbLen		:= SIZEOF(buffer) - cbReceived,
											pDest		:= ADR(buffer) + cbReceived,
											bExecute	:= TRUE,
											tTimeout		:= T#5s );
								rx_state := 1;
							END_IF
						END_IF
					END_IF
				1:(* wait until receive not busy *)
					fbReceive( bExecute := FALSE );
					IF NOT fbReceive.bBusy THEN
						rx_state := 0;
						IF NOT fbReceive.bError THEN
							IF fbReceive.nRecBytes > 0 THEN
								pollTimer( PT := T#0s );(* increase polling speed *)
								cbReceived := cbReceived + fbReceive.nRecBytes;

								(* parse received bytes and extract strings *)
								REPEAT
									bAbort := TRUE;(* set flag *)
									IF cbReceived > 0 THEN

										(* search for string null delimiter *)
										FOR i:= 0 TO cbReceived (*- 1*) BY 1 DO
											IF buffer[i] = 0 THEN (*  end of string position found *)

												cbRx := i+1;(* calculate the length of string (inclusive the end delimiter) *)
												MEMCPY( ADR(rxFrame), ADR(buffer), MIN(cbRx, SIZEOF(rxFrame) ) );(* copy string bytes to temp string variable *)

												rx.A_AddTail( bDbg := bDbg, putValue := rxFrame );(* add string to the rx fifo *)
												IF rx.bOk THEN
													MEMMOVE( ADR(buffer), ADR(buffer) + cbRx, (*cbReceived -*) cbRx );(* move/shift remaining bytes in buffer *)
													cbReceived := cbReceived - cbRx + 1;(* recalculate the remaining data length *)

													IF rx.cbFree >= SIZEOF(rxFrame) THEN (* check free rx buffer space *)
														bAbort := FALSE;(* reset flag, try to parse the next string *)
													END_IF
												ELSE(* fifo overflow => log error and disconnect *)
													errors.A_AddTail( putError := PLCPRJ_ERROR_RECEIVE_BUFFER_OVERFLOW );
													bDisconnect := TRUE;(* set flag *)
													RETURN;
												END_IF

												EXIT;
											END_IF
										END_FOR

									END_IF (* IF cbReceived > 0 THEN *)

								UNTIL bAbort
								END_REPEAT

							ELSE
								pollTimer( PT := PLCPRJ_RECEIVER_POLLING_CYCLE_TIME );
							END_IF(* IF fbReceive.nRecBytes > 0 THEN *)
						ELSE(* receive error => log error and disconnect *)
							errors.A_AddTail( putError := fbReceive.nErrId );
							bDisconnect := TRUE;(* set flag *)
						END_IF
					END_IF

			END_CASE

		END_IF


	3:(* disconnect *)
		fbConnect( bEnable:= FALSE, eState=>eState );
		IF eState = eSOCKET_DISCONNECTED THEN
			state := 0;
		END_IF


END_CASE               E   , Z Z fy           FB_LocalServer ^M7U	^M7U      ш#@ГР4          H  FUNCTION_BLOCK FB_LocalServer
(* This function block implements simple TCP/IP server protocol. *)
VAR_IN_OUT
	hServer		: T_HSERVER;(* Server connection handle *)
	tx			: FB_FrameStringFifo;(* TX fifo *)
	rx			: FB_FrameStringFifo;(* RX fifo *)
	PositionBuffer	: FB_PositionFifoBuffer;
	errors 		: FB_ProtErrorFifo;(* Error message fifo *)
END_VAR
VAR_INPUT
	bDbg		: BOOL := FALSE;(* TRUE => Enable debug output, FALSE => Disable debug output *)
	bEnable		: BOOL := TRUE;(* TRUE => Enable/connect, FALSE => Disable/disconnect *)
END_VAR
VAR_OUTPUT
	eState		: E_SocketConnectionState := eSOCKET_DISCONNECTED;(* TCP/IP connection state *)
END_VAR
VAR
	fbConnect	: FB_ServerClientConnection;(* create/release TCP/IP connection *)
	fbSend		: FB_SocketSend;(* send TCP/IP data *)
	fbReceive	: FB_SocketReceive;(* receive TCP/IP data *)
	state 		: BYTE;(* global state *)
	tx_state 		: BYTE;(* tx state *)
	rx_state 		: BYTE;(* rx state *)
	bDisconnect	: BOOL;(* disconnect flag, if set the socket will be closed *)
	pollTimer	: TON;
	cbReceived	: UDINT;(* count of received data bytes *)
	cbRx		: UDINT;(* byte length of received string *)
	buffer		: ARRAY[0..PLCPRJ_BUFFER_SIZE] OF BYTE;(* Temp. RX buffer *)
	txFrame		: T_MaxString;
	rxFrame		: T_MaxString;
	i			: UDINT;
	bAbort		: BOOL;
	sID			: STRING(20) := '';
END_VAR  CASE state OF
	0:(* init state *)
		rx.A_Reset( bDbg := bDbg );(* Reset RX fifo (optional) *)
		tx.A_Reset( bDbg := bDbg );(* Reset TX fifo (optional) *)
		errors.A_Reset( bDbg := bDbg );(* Reset error fifo (optional) *)
		pollTimer( IN := FALSE, PT := PLCPRJ_RECEIVER_POLLING_CYCLE_TIME );
		tx_state 		:= 0;
		rx_state 		:= 0;
		bDisconnect 	:= FALSE;
		cbReceived 	:= 0;
		state 		:= 1;

	1:(* connect *)
		fbConnect( 	eMode		:= eACCEPT_ALL,
					sRemoteHost := REMOTE_IP_ADDRESS,
					(*nRemotePort := 5010,*)
					bEnable		:= bEnable,
					tReconnect	:= T#1s,
					hServer		:= hServer,
					eState		=> eState );
		IF NOT fbConnect.bBusy THEN

			sID := CONCAT( CONCAT('[', DWORD_TO_HEXSTR(fbConnect.hSocket.handle, 4, FALSE) ), ']' );
			tx.sDesc		:= CONCAT( 'SRV.Tx', sID );
			rx.sDesc 		:= CONCAT( 'SRV.Rx', sID );
			errors.sDesc 	:= CONCAT( 'SRV.Err', sID );
			IF NOT fbConnect.bError THEN
				IF eState = eSOCKET_CONNECTED THEN
					state := 2;
				END_IF
			ELSE(* error => log error *)
				errors.A_AddTail( putError := fbConnect.nErrID );
			END_IF
		END_IF

	2:(* data exchange state *)
		bDisconnect := NOT bEnable OR bDisconnect;(* user/internal disconnect requested? *)
		IF bDisconnect AND (tx_state = 0) AND (rx_state = 0) THEN
			state := 3;(* disconnect *)
		ELSE

			(* get rx data *)
			CASE rx_state OF
				0:
					IF NOT bDisconnect THEN
						pollTimer( IN := TRUE );
						IF pollTimer.Q THEN
							IF rx.cbFree >= SIZEOF(rxFrame) THEN(* check free rx fifo space *)
								pollTimer( IN := FALSE );

								fbReceive( bExecute := FALSE );
								fbReceive( sSrvNetId		:= '',
											hSocket		:= fbConnect.hSocket,
											cbLen		:= SIZEOF(buffer) - cbReceived,
											pDest		:= ADR(buffer) + cbReceived,
											bExecute	:= TRUE,
											tTimeout		:= T#5s );
								rx_state := 1;
							END_IF
						END_IF
					END_IF

				1:(* wait until receive not busy *)
					fbReceive( bExecute := FALSE );
					IF NOT fbReceive.bBusy THEN
						rx_state := 0;
						IF NOT fbReceive.bError THEN
							IF fbReceive.nRecBytes > 0 THEN
								pollTimer( PT := T#0s );(* increase polling speed *)
								cbReceived := cbReceived + fbReceive.nRecBytes;

								(* parse received bytes and extract strings *)
								REPEAT
									bAbort := TRUE;(* set flag *)
									IF cbReceived > 0 THEN

										(* search for string null delimiter *)
										FOR i:= 0 TO cbReceived (*- 1*) BY 1 DO
											IF buffer[i] = 0 THEN (*  end of string position found *)

												cbRx := i + 1;(* calculate the length of string (inclusive the end delimiter) *)
												MEMCPY( ADR(rxFrame), ADR(buffer), MIN(cbRx, SIZEOF(rxFrame) ) );(* copy string bytes to fifo input variable *)

												rx.A_AddTail( bDbg := bDbg, putValue := rxFrame );(* add string to the rx fifo *)
												IF rx.bOk THEN

													MEMMOVE( ADR(buffer), ADR(buffer) + cbRx, (*cbReceived -*) cbRx );(* move/shift remaining bytes in buffer *)
													cbReceived := cbReceived - cbRx + 1;(* recalculate the remaining data length *)

													IF rx.cbFree >= SIZEOF(rxFrame) THEN(* check free rx fifo space *)
														bAbort := FALSE;(* reset flag, try to parse the next string  *)
													END_IF

												ELSE(* fifo overflow => log error and disconnect *)
													errors.A_AddTail( putError := PLCPRJ_ERROR_RECEIVE_BUFFER_OVERFLOW );
													bDisconnect := TRUE;(* set flag *)
													RETURN;
												END_IF

												EXIT;
											END_IF
										END_FOR

									END_IF (* IF cbReceived > 0 THEN *)

								UNTIL bAbort
								END_REPEAT

							ELSE
								pollTimer( PT := PLCPRJ_RECEIVER_POLLING_CYCLE_TIME );
							END_IF(* IF fbReceive.nRecBytes > 0 THEN *)
						ELSE(* receive error => log error and disconnect *)
							errors.A_AddTail( putError := fbReceive.nErrId );
							bDisconnect := TRUE;(* set flag *)
						END_IF
					END_IF
(*
				2: (*Process the received data: *)
					ProcessReceivedData;
*)
			END_CASE


			(* send tx data *)
			CASE tx_state OF
				0:
					IF NOT bDisconnect THEN
						tx.A_RemoveHead( bDbg := bDbg, getValue => txFrame );(* remove oldest string entry s*)
						IF tx.bOk THEN(* success *)
							fbSend( bExecute := FALSE );
							fbSend(	sSrvNetID 	:= '',
									hSocket		:= fbConnect.hSocket,
									cbLen		:= INT_TO_UDINT(LEN( txFrame )) + 1,(* send string inclusive string (null) delimiter! *)
									pSrc		:= ADR( txFrame ),(* address of the string variable *)
									bExecute	:= TRUE,
									tTimeout 		:= T#5s );
							tx_state := 1;
						END_IF
					END_IF
				1:(* wait until send not busy *)
					fbSend( bExecute := FALSE );
					IF NOT fbSend.bBusy THEN
						tx_state := 0;
						IF fbSend.bError THEN(* send error => log error and disconnect *)
							errors.A_AddTail( putError := fbSend.nErrId );
							bDisconnect := TRUE;(* set flag *)
						END_IF
					END_IF
			END_CASE





		END_IF


	3:(* disconnect *)
		fbConnect( hServer := hServer, bEnable:= FALSE, eState=>eState );
		IF eState = eSOCKET_DISCONNECTED THEN
			state := 0;
		END_IF


END_CASE                  ,   ЂЕ           FB_Move ^M7U	^M7U      `БhИjр2        д  FUNCTION_BLOCK FB_Move
(*triggers arm-movements *)
(*|------------------------------------------------------------------|
  | 16.10.2014|FlA|added execution of reset-command to state-machine |
  | 28.10.2014|FlA|reworked state-machine (react on status of fbs)	 |
  |------------------------------------------------------------------|
*)
VAR_INPUT
	bExecuteMove			:	BOOL;
	bEnableInterpolationMove	:	BOOL;
	bEnableSingleAxisMove	:	BOOL;
	bSingleAxisIndex			:	UDINT(1..6);
END_VAR

VAR_OUTPUT
	bError						:	BOOL;
	bAtHomePos					:	BOOL;
	bAtLearningPos				:	BOOL;
	bAtPreGraspTurntablePos1		:	BOOL;
	bAtPreGraspTurntablePos2		:	BOOL;
	bAtFinalGraspTurntablePos		:	BOOL;
	bAtPreStoreTurntablePos1		:	BOOL;
	bAtPreStoreTurntablePos2		:	BOOL;
	bAtFinalStoreTurntablePos		:	BOOL;
	bAtPreGraspTrayPos1			:	BOOL;
	bAtPreGraspTrayPos2			:	BOOL;
	bAtPreGraspTrayPos3			:	BOOL;
	bAtFinalGraspTrayPos			:	BOOL;

	bAtPrePutObjectToTrayPos1	:	BOOL;
	bAtPrePutObjectToTrayPos2	:	BOOL;
	bAtPrePutObjectToTrayPos3	:	BOOL;
	bAtFinalPutObjectToTrayPos	:	BOOL;

	bAtMoveArmOutPos			:	BOOL;
	bAtPreGraspFromFloorPos		:	BOOL;
	bAtFinalGraspFromFloorPos	:	BOOL;

	bAtMoveArmOutPos2			:	BOOL;
	bAtMoveArmOutPos3			:	BOOL;
	bAtPreGraspFromTablePos	:	BOOL;

	bAtTurntableCWPos			:	BOOL;
	bAtTurntableCCWPos			:	BOOL;

	bAtSoftLimitMax				:	BOOL;
	bAtSoftLimitMin				:	BOOL;

	bInTargetPos					:	BOOL;
	bInPositionArea				:	BOOL;

	bHasJob					:	BOOL;
	bIsMoving					:	BOOL;
	bStandStill					:	BOOL;
	bHasBeenStopped			:	BOOL;
	bAxisDisabled				:	BOOL;
	bMoveDone					:	BOOL;
	bReady						:	BOOL;
	bAtCandlePos: BOOL;
END_VAR

VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
	STInstances	:	ST_Instances;
END_VAR

VAR
(*	_Velocity		:	ARRAY[1..6] OF LREAL;*)

	eMOVE			:	E_STATE_MOVE:=99;			(*IDLE Mode*)
	LastMoveState	:	E_STATE_MOVE;
	bStartTimer		:	BOOL;
	T_ON1			:	TON;
	RStart	:	R_TRIG;

	i: UINT;
	PositionWindow	:ARRAY[1..6] OF REAL := 6(0.8);
END_VARР  (*set status-bits*)
bInTargetPos := F_CheckIfInTargetPosEx(stInstances.Input.fPosition, PositionWindow, Axis);
bInPositionArea := F_CheckIfInPosArea(Axis);

bAtHomePos := F_CheckAtHomePosition(Axis);

bAtLearningPos := F_CheckAtLearningPosition(Axis);

bAtPreGraspTurntablePos1 := F_CheckAtPregraspTurntablePosition1(Axis);
bAtPreGraspTurntablePos2 := F_CheckAtPregraspTurntablePosition2(Axis);
bAtFinalGraspTurntablePos := F_CheckAtFinalGraspTurntablePosition(Axis);

bAtPreStoreTurntablePos1 := F_CheckAtPreStoreTurntablePosition1(Axis);
bAtPreStoreTurntablePos2 := F_CheckAtPreStoreTurntablePosition2(Axis);
bAtFinalStoreTurntablePos := F_CheckAtFinalStoreTurntablePosition(Axis);

bAtPreGraspTrayPos1 := F_CheckAtPregraspTrayPos1(Axis);
bAtPreGraspTrayPos2 := F_CheckAtPregraspTrayPos2(Axis);
bAtPreGraspTrayPos3 := F_CheckAtPregraspTrayPos3(Axis);
bAtFinalGraspTrayPos	:= F_CheckAtFinalGraspTrayPosition(Axis);

bAtPrePutObjectToTrayPos1 := F_CheckAtPrePutObjectToTrayPos1(Axis);
bAtPrePutObjectToTrayPos2 := F_CheckAtPrePutObjectToTrayPos2(Axis);
bAtPrePutObjectToTrayPos3 := F_CheckAtPrePutObjectToTrayPos3(Axis);
bAtFinalPutObjectToTrayPos	:= F_CheckAtFinalPutObjecttoTrayPosition(Axis);


bAtMoveArmOutPos := F_CheckAtMoveArmOutPos(Axis);
bAtPreGraspFromFloorPos := F_CheckAtPreGraspFromFloorPos(Axis);
bAtFinalGraspFromFloorPos := F_CheckAtFinalGraspFromFloorPos(Axis);

bAtMoveArmOutPos2 := F_CheckAtMoveArmOutPos2(Axis);
bAtMoveArmOutPos3 := F_CheckAtMoveArmOutPos3(Axis);
bAtPreGraspFromTablePos := F_CheckAtPreGraspFromTablePos(Axis);

bAtTurntableCWPos := F_CheckAtTurntableCWPosition(Axis);
bAtTurntableCCWPos := F_CheckAtTurntableCCWPosition(Axis);

bAtCandlePos := F_CheckAtCandlePos(Axis);

bAtSoftLimitMax := F_CheckIfSoftLimitMax(Axis);
bAtSoftLimitMin := F_CheckIfSoftLimitMin(Axis);
bHasJob := F_CheckIfAxisHasJob(Axis);
bIsMoving := F_CheckIfAxisIsMoving(Axis);
bHasBeenStopped := F_CheckAxisHaveStopped(Axis);
bAxisDisabled := F_CheckIfAxisDisabled(Axis);
bStandStill := F_CheckIfAxisNotMoving(Axis);

(*check if axis has error*)
IF F_CheckIfAxisHasError(Axis) THEN
	eMOVE := E_MOVE_ERROR;
	STInstances.Input.MoveAbsoluteEnable := FALSE;
	FOR i:=1 TO 6 DO
		STInstances.Input.MoveAbsoluteSingleAxis[i] := FALSE;
	END_FOR
	bError := TRUE;
ELSE
	bError := FALSE;
END_IF

(*execute reset command*)
IF stCommands.SetReset THEN
(*	eMOVE := E_MOVE_IDLE;*)
	eMOVE := E_MOVE_RESETCMD;
END_IF

(*got no clue what this timer is up to, apparently it is not used*)
T_ON1(IN:=  bAtHomePos AND bStandStill, PT:= T#1s);

(*state machine*)
CASE eMOVE OF
	E_MOVE_INIT:
		(*Checking if Axis are Enabled*)
		IF F_CheckIfAxisEnabled(Axis) THEN
			IF bEnableSingleAxisMove THEN
				(*axis enabled and single-axis move started*)
				STInstances.Input.MoveAbsoluteSingleAxis[bSingleAxisIndex] := TRUE;
				STInstances.Input.fVelocity[bSingleAxisIndex] := fVelocity;
				IF STInstances.Output.MoveAbsoluteSingleAxisBusy[bSingleAxisIndex]
				OR STInstances.Output.MoveAbsoluteSingleAxisDone[bSingleAxisIndex] THEN
					LastMoveState := eMOVE;
					eMOVE := E_MOVE_SINGLEAXIS;
				END_IF
			ELSE
				(*axis enabled and moveAbsolute started*)
				STInstances.Input.MoveAbsoluteEnable := TRUE;
				IF STInstances.Output.MoveAbsoluteBusy THEN
					(*MoveAbsolute is active -> go on*)
					LastMoveState := eMOVE;
					eMOVE := E_MOVE_START;
				END_IF
			END_IF

		ELSE
			STInstances.Input.PowerEnable := TRUE;
			STInstances.Input.MoveAbsoluteEnable := FALSE;
			STInstances.Input.MoveAbsoluteSingleAxis[bSingleAxisIndex] := FALSE;
		END_IF

	E_MOVE_START:
		IF NOT STInstances.Output.MoveAbsoluteBusy THEN
			(*MoveAbsolute is not active any more*)
			IF STInstances.Output.MoveAbsoluteDone THEN
				(*great we are done!!!*)
				LastMoveState := eMOVE;
				eMOVE := E_MOVE_DONE;
			ELSE
				(*damn something went wrong!!!*)
				LastMoveState := eMOVE;
				eMove := E_MOVE_ERROR;
			END_IF
		END_IF

		IF bEnableSingleAxisMove THEN
			LastMoveState := eMOVE;
			eMOVE := E_MOVE_SINGLEAXIS;
		END_IF


	E_MOVE_SINGLEAXIS:
		IF NOT STInstances.Output.MoveAbsoluteSingleAxisBusy[bSingleAxisIndex] THEN
			IF STInstances.Output.MoveAbsoluteSingleAxisDone[bSingleAxisIndex] THEN
				STInstances.Input.MoveAbsoluteSingleAxis[bSingleAxisIndex] := FALSE;
				LastMoveState := eMOVE;
				eMOVE := E_MOVE_DONE;
			ELSE
				STInstances.Input.MoveAbsoluteSingleAxis[bSingleAxisIndex] := FALSE;
				LastMoveState := eMOVE;
				eMOVE := E_MOVE_ERROR;
			END_IF
		ELSIF bAtTurntableCCWPos OR  bAtTurntableCWPos THEN
			(*no clue whats the clause is good for ...*)
			LastMoveState := eMOVE;
			eMOVE := E_MOVE_DONE;
		END_IF


	E_MOVE_DONE:
		bMoveDone := TRUE;

		IF bHasBeenStopped THEN
			LastMoveState := eMOVE;
			eMOVE := E_MOVE_STOPPED;
		ELSIF NOT bExecuteMove THEN
			(*we are not finished before bExecuteMove has gone*)
			bMoveDone := FALSE;
			LastMoveState := eMOVE;
			eMOVE := E_MOVE_IDLE;
		END_IF

		STInstances.Input.MoveAbsoluteEnable := FALSE;
		STInstances.Input.MoveAbsoluteSingleAxis[bSingleAxisIndex] := FALSE;


	E_MOVE_STOPPED:
		STInstances.Input.MoveAbsoluteEnable := FALSE;
		STInstances.Input.MoveAbsoluteSingleAxis[bSingleAxisIndex] := FALSE;
		IF NOT bExecuteMove THEN
			bMoveDone := FALSE;
			LastMoveState := eMOVE;
			eMOVE := E_MOVE_IDLE;
		END_IF


	E_MOVE_ERROR:
		F_ResetCommands();
		stCommands.SetStopArm := TRUE;
		IF NOT F_CheckIfAxisHasError(Axis) THEN
			stCommands.SetStopArm := FALSE;
			IF NOT bExecuteMove THEN
				LastMoveState := eMove;
				eMOVE := E_MOVE_IDLE;
			END_IF
		END_IF

	E_MOVE_RESETCMD:
		IF NOT bExecuteMove THEN
			LastMoveState := eMOVE;
			eMOVE := E_MOVE_IDLE;
		END_IF

	E_MOVE_IDLE:
		RStart(CLK:= bExecuteMove);
		IF (*RStart.Q*) bExecuteMove THEN		(*Start On Rising Edge-> realise rising edge detection through state machine*)
			STInstances.Input.MoveAbsoluteInterpolation := FALSE;
			STInstances.Input.fVelocity := F_CalcVelocity(STInstances.Input.fPosition, STInstances.Input.fMaxVelocity, Axis);
			bMoveDone := FALSE;
			(*LastMoveState := E_MOVE_IDLE;*)
			eMOVE := E_MOVE_INIT;
		END_IF

END_CASE

IF eMOVE = E_MOVE_IDLE THEN
	bReady := TRUE;
ELSE
	bReady := FALSE;
END_IF                  , Z Z f           FB_MoveInterpolation ^M7U	^M7U      j№j`kаk          FUNCTION_BLOCK FB_MoveInterpolation
VAR_INPUT
	bExecuteInterpolation	:	BOOL;
END_VAR

VAR_IN_OUT
	Axis			:	ARRAY[1..6] OF Axis_Ref;
	STInstances	:	ST_Instances;
END_VAR

VAR_OUTPUT
	bInPositionArea		:	BOOL;
	bInTargetPosition		:	BOOL;
	bAtHomePosition		:	BOOL;
	bHasBeenStopped	: 	BOOL;
	bNotMoving			:	BOOL;
	bHasJob			:	BOOL;
	bDone				:	BOOL;
	bError				:	BOOL;
END_VAR
VAR
	eInterpolation			:	E_STATE_INTERPOLATION := 99;
	LastInterpolationState	:	E_STATE_INTERPOLATION;
	_fInterpolationPosition	:	ARRAY[1..6] OF LREAL;
	i	:	UINT;
	RStart	:	R_TRIG;
	RTrigInPosArea	:	R_TRIG;
(*	fbInterpolate	:	FB_Interpolate;*)
	ReadPosition		:	FB_ReadPositionFromFifo;
	ReadPositionWindowValue	:FB_ReadPositionWindowValue;
	_InPosAreaOld	:	BOOL;
END_VAR-
  bInPositionArea := F_CheckIfInPosArea(Axis);
bAtHomePosition	:= F_CheckAtHomePosition(Axis);
bInTargetPosition := F_CheckIfInTargetPos(Axis);
bHasBeenStopped := F_CheckAxisHaveStopped(Axis);
bNotMoving := NOT F_CheckIfAxisIsMoving(Axis);
bHasJob := F_CheckIfAxisHasJob(Axis);

ReadPositionWindowValue(Axis:= Axis);
ReadPosition.fPositionWindow := ReadPositionWindowValue.PositionWindow;

IF F_CheckIfAxisHasError(Axis) THEN
	eInterpolation := E_INTERPOL_ERROR;
	STInstances.Input.MoveAbsoluteEnable := FALSE;
	FOR i:=1 TO 6 DO
		STInstances.Input.MoveAbsoluteSingleAxis[i] := FALSE;
	END_FOR
	bError := TRUE;
ELSE
	bError := FALSE;
END_IF

IF stCommands.SetReset THEN
	eInterpolation := E_INTERPOL_IDLE;
END_IF

CASE eInterpolation OF
	E_INTERPOL_INIT:
		(*Checking if Axis are Enabled*)
		IF F_CheckIfAxisEnabled(Axis) THEN
			STInstances.Input.MoveAbsoluteInterpolation := TRUE;
			LastInterpolationState := eInterpolation;
			eInterpolation := E_INTERPOL_MOVING;
		ELSE
			STInstances.Input.PowerEnable := TRUE;
		END_IF

	E_INTERPOL_MOVING:
		RTrigInPosArea(CLK:=bInPositionArea);
		ReadPosition.bGetPosition := bInPositionArea AND NOT ReadPosition.bNextPositionIsOutOfPosArea;
		ReadPosition(Axis := Axis);

		STInstances.Input.fPosition := ReadPosition.fPosition;
		STInstances.Input.fVelocity := F_CalcVelocity(STInstances.Input.fPosition, STInstances.Input.fMaxVelocity, Axis);

		IF ReadPosition.bNoMoreData AND bInTargetPosition THEN
			LastInterpolationState := eInterpolation;
			eInterpolation := E_INTERPOL_DONE;
		END_IF

		IF stCommands.SetStopArm THEN
			LastInterpolationState := eInterpolation;
			eInterpolation := E_INTERPOL_STOPPED;
		END_IF

	E_INTERPOL_DONE:
		IF F_CheckIfInTargetPos(Axis) THEN
			bDone := TRUE;
			stCommands.PositionsForInterpolationReady := FALSE;
			STInstances.Input.MoveAbsoluteInterpolation := FALSE;
			LastInterpolationState := eInterpolation;
			eInterpolation := E_INTERPOL_IDLE;
		END_IF

	E_INTERPOL_STOPPED:
		STInstances.Input.MoveAbsoluteEnable := FALSE;
		LastInterpolationState := eInterpolation;
		eInterpolation := E_INTERPOL_IDLE;

	E_INTERPOL_ERROR:
		STInstances.Input.MoveAbsoluteInterpolation := FALSE;
		stCommands.PositionsForInterpolationReady := FALSE;
		ReadPosition.bGetPosition := FALSE;
		LastInterpolationState := eInterpolation;
		eInterpolation := E_INTERPOL_IDLE;

	E_INTERPOL_IDLE:
		RStart(CLK:= bExecuteInterpolation);
		IF RStart.Q THEN		(*Start On Rising Edge*)
			bDone := FALSE;
			eInterpolation := E_INTERPOL_INIT;
		END_IF

END_CASE
               4  , } } ЊG           FB_MoveToZero ^M7U	^M7U      рЌP­Р­0Ў        и   FUNCTION_BLOCK FB_MoveToZero
VAR_INPUT
	bExecute	:BOOL;
	Axis			:POINTER TO Axis_Ref;
END_VAR
VAR_OUTPUT
	bDone		:BOOL;
	bError 		:BOOL;
	nErrID		:UDINT;
END_VAR
VAR
	MoveAbsoule :MC_MoveAbsolute;
END_VAR  MoveAbsoule(
	Execute:= bExecute,
	Position:= 0,
	Velocity:= 10,
	Acceleration:= ,
	Deceleration:= ,
	Jerk:= ,
	BufferMode:= ,
	Options:= ,
	Axis:= Axis^,
	Done=> bDone,
	Busy=> ,
	Active=> ,
	CommandAborted=> ,
	Error=> bError,
	ErrorID=> nErrID);               W   , № № 9           FB_PositionFifoBuffer ^M7U	^M7U      иЉxжРр          FUNCTION_BLOCK FB_PositionFifoBuffer
(* Tx/Rx (string data) fifo control function block *)
VAR_INPUT
	sDesc		: STRING(20)	:= 'Unknown';(* Debug message description string (allows the identification of log message source) *)
	bDbg		: BOOL		:= FALSE; (* TRUE => Enable debug output, FALSE => Disable *)
	putValue		: T_MaxString := ''; (* String to add (write) to the buffer *)
END_VAR
VAR_OUTPUT
	bOk			: BOOL; 	 	(* TRUE = New entry added or removed succesfully, FALSE = Fifo overflow or fifo empty *)
	getValue		: T_MaxString := ''; (* String removed (read) from buffer *)
	nCount		: UDINT	:= 0;	(* Number of fifo entries *)
	cbFree		: UDINT := 0;	(* Free buffer space *)
END_VAR
VAR
(*	buffer		: ARRAY[-3..PLCPRJ_BUFFER_SIZE] OF BYTE;(* Internal buffer memory *) *)
	fbBuffer 		: FB_StringRingBuffer := (bOverwrite := FALSE);(* Basic (lower level) string buffer control function block *)
END_VAR   ; [   ,     I        	   A_AddTail ^M7U  (* adds new fifo entry *)
fbBuffer.A_AddTail( 	pBuffer:= ADR(StringPositionBuffer), cbBuffer:= SIZEOF(StringPositionBuffer),
					putValue:= putValue, bOk=>bOk, nCount=>nCount );
IF bOk THEN
	cbFree := POSITION_BUFFER_SIZE - fbBuffer.cbSize;(* calculate the free buffer space *)
	IF bDbg THEN(* log message *)
		F_ADSLOGSTRING( CONCAT( sDesc, '<=' ), putValue );
	END_IF
END_IF\   ,   g=           A_RemoveHead ^M7U  (* removes oldest fifo entry *)
fbBuffer.A_RemoveHead( pBuffer:= ADR(StringPositionBuffer), cbBuffer:= SIZEOF(StringPositionBuffer),
						bOk=>bOk, getValue=>getValue, nCount=>nCount );
IF bOk THEN
	cbFree := POSITION_BUFFER_SIZE - fbBuffer.cbSize;(* calculate the free buffer space *)
	IF bDbg THEN(* log message *)
		F_ADSLOGSTRING( CONCAT( sDesc, '=>' ), getValue );
	END_IF
END_IF]   , < < [           A_Reset ^M7Uк   (* resets fifo = clears all data *)
fbBuffer.A_Reset( pBuffer:= ADR(StringPositionBuffer), cbBuffer:= SIZEOF(StringPositionBuffer),
				bOk=>bOk, getValue=>getValue, nCount=>nCount );
cbFree := POSITION_BUFFER_SIZE;             ^   , в в ё           FB_ProtErrorFifo ^M7U	^M7U       §џ            FUNCTION_BLOCK FB_ProtErrorFifo
(* Protocol error fifo control function block *)
VAR_INPUT
	sDesc		: STRING(20)	:= 'Unknown';(* Debug message description string (allows the identification of message source) *)
	bDbg		: BOOL 		:= FALSE; (* TRUE => Enable debug output, FALSE => Disable *)
	putError		: UDINT 		:= 0; (* Error code to add (write) to the fifo *)
END_VAR
VAR_OUTPUT
	bOk			: BOOL; 	 	(* TRUE = New entry added or removed succesfully, FALSE = Fifo overflow or fifo empty *)
	getError		: UDINT		:= 0; (* Error code get/removed (read) from fifo *)
	nCount		: UDINT		:= 0;	(* Number of fifo entries *)
END_VAR
VAR
	buffer	: ARRAY[-3..20] OF BYTE;(* Internal buffer memory *)
	fbBuffer 	: FB_MemRingBuffer;(* Basic (lower level) buffer control function block *)
END_VAR   ; b     ,}џџ           	   A_AddTail ^M7U5  (* adds new fifo entry *)
fbBuffer.A_AddTail( 	pWrite:= ADR( putError ), cbWrite := SIZEOF( putError ),
					pBuffer:= ADR(buffer), cbBuffer:= SIZEOF(buffer),
					bOk=>bOk, nCount=>nCount );
IF bOk THEN
	IF bDbg THEN(* log message *)
		F_ADSLOGERROR( CONCAT( sDesc, '<=' ), putError );
	END_IF
END_IFc     ,}џџ              A_RemoveHead ^M7UШ   (* removes oldest fifo entry *)
fbBuffer.A_RemoveHead( 	pRead := ADR(getError), cbRead := SIZEOF(getError),
						pBuffer:= ADR(buffer), cbBuffer:= SIZEOF(buffer),
						bOk=>bOk, nCount=>nCount );d     ,}џџ              A_Reset ^M7U   (* resets fifo = clears all data *)
fbBuffer.A_Reset( pBuffer:= ADR(buffer), cbBuffer:= SIZEOF(buffer),
				bOk=>bOk, nCount=>nCount );                ,     -           FB_ReadPositionFromFifo ^M7U	^M7U      unr  P
        o  FUNCTION_BLOCK FB_ReadPositionFromFifo
VAR_INPUT
	bGetPosition		:	BOOL;
	fPositionWindow	:	ARRAY[1..6] OF LREAL;
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR_OUTPUT
	fPosition		:	ARRAY[1..6] OF LREAL;   (* Nex Position to Move *)
	iNumbrOfPos		:	UDINT;		(* Gives the actual number of Positions in the Fifo Buffer *)
	bNoMoreData			:	BOOL;		(* Is TRUE if no more data to read *)
	bNewPosition	:	BOOL:=TRUE;
	bNextPositionIsOutOfPosArea	:	BOOL;

END_VAR
VAR
	sPosition		:	T_MaxString;
	rxPosition	:	ARRAY[0..20] OF STRING;
	oldPosition	:	ARRAY[1..6] OF LREAL;
	i		:	UINT:=1;

END_VAR|  
IF bGetPosition THEN
	REPEAT
		rxPositionBuffer.A_RemoveHead(getValue => sPosition);		(* Read and remove oldest String *)
		IF rxPositionBuffer.bOk THEN
			bNoMoreData := FALSE;

			F_SplitString(
				p:=ADR(rxPosition),
				code:=sPosition,
				delimiter:='/',
				tarElCnt:=SIZEOF(rxPosition)/SIZEOF(rxPosition[0]),
				sizeLine:=SIZEOF(rxPosition[0]));

(*			rxPosition := F_CutString(sPosition, '/');*)
			FOR i:=1 TO 6 DO
				fPosition[i] := STRING_TO_LREAL(rxPosition[i-1]);
			END_FOR
		ELSE
			bNoMoreData := TRUE;
		END_IF
		bNextPositionIsOutOfPosArea := F_CheckIfNextPosIsOutOfPosArea(fPosition, fPositionWindow, Axis);
	UNTIL
		bNextPositionIsOutOfPosArea OR bNoMoreData
	END_REPEAT
END_IF


bNextPositionIsOutOfPosArea := F_CheckIfNextPosIsOutOfPosArea(fPosition, fPositionWindow, Axis);

IF oldPosition[1] <> fPosition[1] OR
	oldPosition[2] <> fPosition[2] OR
	oldPosition[3] <> fPosition[3] OR
	oldPosition[4] <> fPosition[4] OR
	oldPosition[5] <> fPosition[5] OR
	oldPosition[6] <> fPosition[6]
THEN
	bNewPosition := TRUE;
ELSE
	bNewPosition := FALSE;
END_IF


oldPosition := fPosition;
                  , Z Z fy           FB_ReadPositionWindowValue ^M7U	^M7U      `PW Hg          FUNCTION_BLOCK FB_ReadPositionWindowValue
VAR_INPUT
END_VAR
VAR_IN_OUT
	Axis		:	ARRAY[1..6] OF Axis_Ref;
END_VAR
VAR_OUTPUT
	PositionWindow	:	ARRAY[1..6] OF LREAL;
END_VAR
VAR
	i	:	UINT;
	ReadParameterAxis	:	ARRAY[1..6] OF MC_ReadParameter;
END_VAR  
ReadParameterAxis[1](Enable:= TRUE, ParameterNumber:= AxisPositionRangeWindow, ReadMode:= READMODE_ONCE, Axis:= Axis[1], Value=> PositionWindow[1]);
ReadParameterAxis[2](Enable:= TRUE, ParameterNumber:= AxisPositionRangeWindow, ReadMode:= READMODE_ONCE, Axis:= Axis[2], Value=> PositionWindow[2]);
ReadParameterAxis[3](Enable:= TRUE, ParameterNumber:= AxisPositionRangeWindow, ReadMode:= READMODE_ONCE, Axis:= Axis[3], Value=> PositionWindow[3]);
ReadParameterAxis[4](Enable:= TRUE, ParameterNumber:= AxisPositionRangeWindow, ReadMode:= READMODE_ONCE, Axis:= Axis[4], Value=> PositionWindow[4]);
ReadParameterAxis[5](Enable:= TRUE, ParameterNumber:= AxisPositionRangeWindow, ReadMode:= READMODE_ONCE, Axis:= Axis[5], Value=> PositionWindow[5]);
ReadParameterAxis[6](Enable:= TRUE, ParameterNumber:= AxisPositionRangeWindow, ReadMode:= READMODE_ONCE, Axis:= Axis[6], Value=> PositionWindow[6]);
                  ,                FB_Reset ^M7U	^M7U      ИРPh%Јю        j  FUNCTION_BLOCK FB_Reset
(*executes a total system reset (reset of state machines and hardware components)*)
(*|----------------------------------------------------------------|
  | 16.10.2014|FlA|added some exit strategies to the state-machine |
  |----------------------------------------------------------------|*)
VAR_INPUT
	bExecute		:	BOOL;
END_VAR
VAR_OUTPUT
	bResetDone		:	BOOL;
END_VAR
VAR_IN_OUT
	Axis			:	ARRAY[1..6] OF Axis_Ref;
	STInstances	:	ST_Instances;
END_VAR
VAR
	eReset				:	E_STATE_RESET:=99;	(*IDLE*)
	LastResetState		:	E_STATE_RESET;

	i		:		UINT;

	RStart	:	R_TRIG;
END_VARт  (*
	E_RESET_COMMANDS		:=	10,	(*In this State the command struct is reset*)
	E_RESET_AXIS				:=	50, 	(*In this State all Axis are reset*)
	E_RESET_DISABLE			:=	70,	(*In this State all Axis will be disabled *)
	E_RESET_IDLE				:=	99	(*RESET is in idle mode*)

*)

CASE eReset OF
	E_RESET_COMMANDS:
		bResetDone := FALSE;
		F_ResetCommands();
		eReset := E_RESET_AXIS;
		LastResetState := E_RESET_COMMANDS;


	E_RESET_AXIS:
		(*Reset all Axis:*)
		STInstances.Input.ResetEnable := TRUE;
		IF STInstances.Output.ResetEnableDone THEN
			STInstances.Input.ResetEnable := FALSE;
			LastResetState := eReset;
			eReset := E_RESET_DISABLE;
		ELSIF stInstances.Output.ResetFailed THEN
			(*something went terribly wrong*)
			LastResetState := eReset;
			eReset := E_RESET_IDLE;
		END_IF

	E_RESET_DISABLE:
		(*Disable all Axis:*)
		STInstances.Input.PowerEnable := FALSE;
		IF F_CheckIfAxisDisabled(Axis) THEN
			bResetDone := TRUE;
			LastResetState := eReset;
			eReset := E_RESET_IDLE;
		ELSIF stInstances.Output.PowerError THEN
			LastResetState := eReset;
			eReset := E_RESET_IDLE;
		END_IF

	E_RESET_IDLE:
		(*RStart(CLK:= bExecute);
		IF RStart.Q THEN		(*Start On Rising Edge*)*)
		IF NOT stCommands.SetReset THEN
			bResetDone := TRUE;
			stCommands.SetReset := FALSE;
			(*LastResetState := E_RESET_IDLE;*)
			eReset := E_RESET_IDLE;
		ELSE
			bResetDone := FALSE;
			LastResetState := E_RESET_IDLE;
			eReset := E_RESET_COMMANDS;
		END_IF


END_CASE               F   , < < H[           FB_ServerApplication ^M7U	^M7U      ш#@ГР4          :  FUNCTION_BLOCK FB_ServerApplication
(* Sample server application. Adapt this code to match your needs. *)
VAR_IN_OUT
	hServer 		: T_HSERVER;(* Server connection handle *)

END_VAR
VAR_INPUT
	bDbg		: BOOL 	:= FALSE;(* TRUE => Enable debug output, FALSE => Disable *)
	bEnable		: BOOL 	:= TRUE;(* TRUE => Enable connection, FALSE => Disable *)
END_VAR
VAR_OUTPUT
	eState		: E_SocketConnectionState := eSOCKET_DISCONNECTED;(* TCP/IP connection state *)
END_VAR
VAR
 	sFromClient	: T_MaxString	:= '';
	sToClient	: T_MaxString := '';
	fbServer		: FB_LocalServer;(* Implements one server->client connection *)
	tx 			: FB_FrameStringFifo;(* Tx fifo *)
	rx 			: FB_FrameStringFifo;(* Rx fifo *)
(*	rxPositionBuffer	:  FB_PositionFifoBuffer; (* Position Buffer *) *)
	errors		: FB_ProtErrorFifo;(* Error fifo *)
	state		: BYTE;
	i			: UINT;

	rxLength		: UINT;
	rxString		:	ARRAY[0..20] OF STRING;
	txString		:	ARRAY[0..20] OF STRING;
	rxPosString	:	ARRAY[0..20] OF STRING;

	fbLogReceive		:	FB_LogFile;
	fbLogSend			:	FB_LogFile;
	sPath: STRING;
END_VAR

  (*-------------------------------- trigger data exchange -----------------------------------------*)
fbServer( bDbg := bDbg, hServer := hServer, rx := rx, tx := tx, PositionBuffer := rxPositionBuffer, errors := errors, bEnable := bEnable, eState => eState  );

(*-------------------------------- Simple TCP/IP application -----------------------------------------*)
CASE state OF
	0:(* init state *)
		state 		:= 1;

	1:(* data exchange *)
		IF fbServer.eState = eSOCKET_CONNECTED THEN
			REPEAT

				rx.A_RemoveHead( );(* fetch received string from rx fifo *)
				IF rx.bOk THEN(* success *)
					(*TODO: Implement receive handler *)

					sFromClient 	:= rx.getValue;
					ProcessReceivedData;
					(*sToClient 	:= sFromClient;*)

					(* send string back to the client *)
					tx.A_AddTail( putValue := sToClient );(* add string to the tx fifo *)
					IF NOT tx.bOk THEN(* fifo overflow => log error *)
						errors.A_AddTail( putError := PLCPRJ_ERROR_SEND_BUFFER_OVERFLOW );
					END_IF
				END_IF

			UNTIL NOT rx.bOk
			END_REPEAT
		ELSE
			state := 0;
		END_IF

END_CASE


(*--------------------------------get error messages from error fifo-----------------------------------------*)
REPEAT
	errors.A_RemoveHead( bDbg := bDbg );
	IF errors.bOk THEN
		; (* TODO: Implement error handler *)
	END_IF
UNTIL
	NOT errors.bOk
END_REPEAT

fbLogReceive();
fbLogSend();


 H   , Д Д Рг           ProcessReceivedData ^M7Uf_  
(*Convert received string to Array:*)
F_SplitString(
	p:=ADR(rxString),
	code:=sFromClient,
	delimiter:=';',
	tarElCnt:=SIZEOF(rxString)/SIZEOF(rxString[0]),
	sizeLine:=SIZEOF(rxString[0]));

(*rxString := F_CutString(sFromClient, ';');*)
sPath := 'C:\Documents and Settings\Administrator\Desktop\Hobbit\Log\';
sPath := CONCAT(sPath, stParams.sIdentity);
sPath := CONCAT(sPath, '_rcv.txt');
fbLogReceive.sPathname := sPath;
sPath := 'C:\Documents and Settings\Administrator\Desktop\Hobbit\Log\';
sPath := CONCAT(sPath, stParams.sIdentity);
sPath := CONCAT(sPath, '_snd.txt');
fbLogSend.sPathname := sPath;

IF rxString[0] = 'SET' THEN
	IF rxString[1] = 'StopArmMove' THEN																	(* Stop All Axis *)
		stCommands.SetStopArm := TRUE;

		(*Response String:*)
		sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');

		(*LOG COMMAND*)
		fbLogSend.LogMessage(sMessage := sToClient);
		fbLogReceive.LogMessage(sMessage := sFromClient);

	ELSIF rxString[1] = 'Shutdown' THEN
		(*shut down PLC*)
		stCommands.SetShutdown := TRUE;

		(*Response String:*)
		sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');

		(*LOG COMMAND*)
		fbLogSend.LogMessage(sMessage := sToClient);
		fbLogReceive.LogMessage(sMessage := sFromClient);

	ELSIF rxString[1]  = 'AbsolutePos' THEN																	(* Set Absolute Position *)
		stCommands.SetAbsolutePosition := TRUE;
		stCommands.SetAbsolutePositionValue[1] := STRING_TO_REAL(rxString[2]);
		stCommands.SetAbsolutePositionValue[2] := STRING_TO_REAL(rxString[3]);
		stCommands.SetAbsolutePositionValue[3] := STRING_TO_REAL(rxString[4]);
		stCommands.SetAbsolutePositionValue[4] := STRING_TO_REAL(rxString[5]);
		stCommands.SetAbsolutePositionValue[5] := STRING_TO_REAL(rxString[6]);
		stCommands.SetAbsolutePositionValue[6] := STRING_TO_REAL(rxString[7]);

		(*Response String:*)
		sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');

		(*LOG COMMAND*)
		fbLogSend.LogMessage(sMessage := sToClient);
		fbLogReceive.LogMessage(sMessage := sFromClient);

	ELSIF rxString[1] = 'PositionsForInterpolation' THEN														(*Positions For Interpolation Mode*)
		IF rxPositionBuffer.cbFree >= SIZEOF(rxString[2]) THEN
			rxPositionBuffer.A_AddTail(putValue:= rxString[2]);
			IF rxPositionBuffer.bOk THEN
				sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
			END_IF
		ELSE
			sToClient := F_MergeString(rxString[1], 'POSITION_BUFFER_FULL' , ';');
		END_IF

		(*LOG COMMAND*)
		fbLogSend.LogMessage(sMessage := sToClient);
		fbLogReceive.LogMessage(sMessage := sFromClient);


	ELSIF rxString[1] = 'PositionsForInterpolationReady' THEN
		stCommands.PositionsForInterpolationReady := TRUE;
		sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');

		(*LOG COMMAND*)
		fbLogSend.LogMessage(sMessage := sToClient);
		fbLogReceive.LogMessage(sMessage := sFromClient);


	ELSIF rxString[1] = 'ClearPosBuffer' THEN
		(*Clear the Position Buffer*)
		stCommands.SetClearPosBuffer := TRUE;
		sToClient := F_MergeString(rxString[1], 'COMMAND_OK', ';');

		(*LOG COMMAND*)
		fbLogSend.LogMessage(sMessage := sToClient);
		fbLogReceive.LogMessage(sMessage := sFromClient);

	ELSIF Main.eMode = E_WAITFORCOMMAND THEN
		IF rxString[1] = 'StartMove' THEN																	(* Start Move *)
			(*Response String:*)
			IF stCommands.ArmState.ARM_HAS_ERROR THEN
				sToClient := F_MergeString(rxString[1], 'ARM_HAS_ERROR' , ';');
				stCommands.SetStartMove := FALSE;
			ELSIF NOT stCommands.ArmState.ARM_HOMED THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_HOMED' , ';');
				stCommands.SetStartMove := FALSE;
			ELSIF stCommands.ArmState.ARM_IS_MOVING THEN
				sToClient := F_MergeString(rxString[1], 'ARM_IS_MOVING' , ';');
				stCommands.SetStartMove := FALSE;
			ELSE
				IF rxString[2] = '' THEN
					sToClient := F_MergeString(rxString[1], 'VELOCITY_MISSING' , ';');
				ELSE
					fVelocity := STRING_TO_REAL(rxString[2]);
					sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
					stCommands.SetStartMove := TRUE;
				END_IF
			END_IF
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);


		ELSIF rxString[1] = 'MoveToHomePos' THEN															(* Move To Home Position *)
			stCommands.SetMoveToHomePos := TRUE;
	
			(*Response String:*)
			IF stCommands.ArmState.ARM_HAS_ERROR THEN
				sToClient := F_MergeString(rxString[1], 'ARM_HAS_ERROR' , ';');
				stCommands.SetMoveToHomePos := FALSE;
			ELSIF stCommands.ArmState.ARM_IS_MOVING THEN
				sToClient := F_MergeString(rxString[1], 'ARM_IS_MOVING' , ';');
				stCommands.SetMoveToHomePos := FALSE;
			ELSIF NOT stCommands.ArmState.ARM_HOMED THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_HOMED' , ';');
				stCommands.SetMoveToHomePos := FALSE;
(*			ELSIF stCommands.ArmState.AT_LEARNING_POS THEN
				sToClient := F_MergeString(rxString[1], 'ARM_AT_LEARNING_POS' , ';');
				stCommands.SetMoveToHomePos := FALSE;
			ELSIF stCommands.ArmState.AT_PREGRASPFROMFLOOR_POS THEN
				sToClient := F_MergeString(rxString[1], 'ARM_AT_PREGRASPFLOOR_POS' , ';');
				stCommands.SetMoveToHomePos := FALSE;*)
			ELSE
				sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
			END_IF
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	

		ELSIF rxString[1] = 'MoveToLearningPos' THEN															(* Move To Learning Position *)
			stCommands.SetMoveToLearningPos := TRUE;
	
			(*Response String:*)
			IF stCommands.ArmState.ARM_HAS_ERROR THEN
				sToClient := F_MergeString(rxString[1], 'ARM_HAS_ERROR' , ';');
				stCommands.SetMoveToLearningPos := FALSE;
			ELSIF stCommands.ArmState.ARM_IS_MOVING THEN
				sToClient := F_MergeString(rxString[1], 'ARM_IS_MOVING' , ';');
				stCommands.SetMoveToLearningPos := FALSE;
			ELSIF NOT stCommands.ArmState.ARM_HOMED THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_HOMED' , ';');
				stCommands.SetMoveToLearningPos := FALSE;
			ELSIF NOT stCommands.ArmState.AT_HOME_POS THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_AT_HOME_POS' , ';');
				stCommands.SetMoveToLearningPos := FALSE;
			ELSE
				sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
			END_IF
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	
	
		ELSIF rxString[1] = 'MoveToTrayPos' THEN															(* Move To Tray Position *)
			stCommands.SetMoveToTray := TRUE;
	
			(*Response String:*)
			IF stCommands.ArmState.ARM_HAS_ERROR THEN
				sToClient := F_MergeString(rxString[1], 'ARM_HAS_ERROR' , ';');
				stCommands.SetMoveToTray := FALSE;
			ELSIF stCommands.ArmState.ARM_IS_MOVING THEN
				sToClient := F_MergeString(rxString[1], 'ARM_IS_MOVING' , ';');
				stCommands.SetMoveToTray := FALSE;
			ELSIF NOT stCommands.ArmState.ARM_HOMED THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_HOMED' , ';');
				stCommands.SetMoveToTray := FALSE;
			ELSIF stCommands.ArmState.AT_HOME_POS THEN
				sToClient := F_MergeString(rxString[1], 'ARM_AT_HOME_POS' , ';');
				stCommands.SetMoveToTray := FALSE;
			ELSIF NOT (stCommands.ArmState.AT_PREGRASPFROMFLOOR_POS OR stCommands.ArmState.AT_PREGRASPFROMTABLE_POS) THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_AT_PREGRASPFLOOR_POS' , ';');
				stCommands.SetMoveToTray := FALSE;
			ELSE
				sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
			END_IF
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	
	
		ELSIF rxString[1] = 'TurnTurntableCW' THEN															(* Turn Turntable CW *)
			stCommands.SetTurnTurntableCW := TRUE;
	
			(*Response String:*)
			IF stCommands.ArmState.ARM_HAS_ERROR THEN
				sToClient := F_MergeString(rxString[1], 'ARM_HAS_ERROR' , ';');
				stCommands.SetTurnTurntableCW := FALSE;
			ELSIF stCommands.ArmState.ARM_IS_MOVING THEN
				sToClient := F_MergeString(rxString[1], 'ARM_IS_MOVING' , ';');
				stCommands.SetTurnTurntableCW := FALSE;
			ELSIF NOT stCommands.ArmState.ARM_HOMED THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_HOMED' , ';');
				stCommands.SetTurnTurntableCW := FALSE;
			ELSIF stCommands.ArmState.AT_HOME_POS THEN
				sToClient := F_MergeString(rxString[1], 'ARM_AT_HOME_POS' , ';');
				stCommands.SetTurnTurntableCW := FALSE;
			ELSE
				sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
			END_IF
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	
	
		ELSIF rxString[1] = 'TurnTurntableCCW' THEN															(* Turn Turntable CCW *)
			stCommands.SetTurnTurntableCCW := TRUE;
	
			(*Response String:*)
			IF stCommands.ArmState.ARM_HAS_ERROR THEN
				sToClient := F_MergeString(rxString[1], 'ARM_HAS_ERROR' , ';');
				stCommands.SetTurnTurntableCCW := FALSE;
			ELSIF stCommands.ArmState.ARM_IS_MOVING THEN
				sToClient := F_MergeString(rxString[1], 'ARM_IS_MOVING' , ';');
				stCommands.SetTurnTurntableCCW := FALSE;
			ELSIF NOT stCommands.ArmState.ARM_HOMED THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_HOMED' , ';');
				stCommands.SetTurnTurntableCCW := FALSE;
			ELSIF stCommands.ArmState.AT_HOME_POS THEN
				sToClient := F_MergeString(rxString[1], 'ARM_AT_HOME_POS' , ';');
				stCommands.SetTurnTurntableCCW := FALSE;
			ELSE
				sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
			END_IF
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);


		ELSIF rxString[1] = 'MoveToPreGraspFromTablePos' THEN												(* Move To Pregrasp From Table *)
			stCommands.SetMovePreGraspFromTable := TRUE;

			(*Response String:*)
			IF stCommands.ArmState.ARM_HAS_ERROR THEN
				sToClient := F_MergeString(rxString[1], 'ARM_HAS_ERROR' , ';');
				stCommands.SetMovePreGraspFromTable := FALSE;
			ELSIF stCommands.ArmState.ARM_IS_MOVING THEN
				sToClient := F_MergeString(rxString[1], 'ARM_IS_MOVING' , ';');
				stCommands.SetMovePreGraspFromTable := FALSE;
			ELSIF NOT stCommands.ArmState.ARM_HOMED THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_HOMED' , ';');
				stCommands.SetMovePreGraspFromTable := FALSE;
	
			ELSIF NOT stCommands.ArmState.AT_HOME_POS THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_AT_HOME_POS' , ';');
				stCommands.SetMovePreGraspFromTable := FALSE;
			ELSE
				sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
			END_IF
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	
		ELSIF rxString[1] = 'MoveToPreGraspFromFloorPos' THEN												(* Move To Pregrasp From Floor *)
			stCommands.SetMovePreGraspFromFloor := TRUE;
	
			(*Response String:*)
			IF stCommands.ArmState.ARM_HAS_ERROR THEN
				sToClient := F_MergeString(rxString[1], 'ARM_HAS_ERROR' , ';');
				stCommands.SetMovePreGraspFromFloor := FALSE;
			ELSIF stCommands.ArmState.ARM_IS_MOVING THEN
				sToClient := F_MergeString(rxString[1], 'ARM_IS_MOVING' , ';');
				stCommands.SetMovePreGraspFromFloor := FALSE;
			ELSIF NOT stCommands.ArmState.ARM_HOMED THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_HOMED' , ';');
				stCommands.SetMovePreGraspFromFloor := FALSE;
			ELSIF NOT stCommands.ArmState.AT_HOME_POS THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_AT_HOME_POS' , ';');
				stCommands.SetMovePreGraspFromFloor := FALSE;
			ELSE
				sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
			END_IF
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	

	(*	ELSIF rxString[1] = 'MoveToGraspFromFloorPos' THEN												(* Move To Grasp From Floor *)
			stCommands.SetMoveGraspFromFloor := TRUE;
	
			(*Response String:*)
			IF stCommands.ArmState.ARM_HAS_ERROR THEN
				sToClient := F_MergeString(rxString[1], 'ARM_HAS_ERROR' , ';');
				stCommands.SetTurnTurntableCCW := FALSE;
			ELSIF stCommands.ArmState.ARM_IS_MOVING THEN
				sToClient := F_MergeString(rxString[1], 'ARM_IS_MOVING' , ';');
				stCommands.SetTurnTurntableCCW := FALSE;
			ELSIF NOT stCommands.ArmState.ARM_HOMED THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_HOMED' , ';');
				stCommands.SetTurnTurntableCCW := FALSE;
			ELSE
				sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
			END_IF
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	*)
	
		ELSIF rxString[1] = 'StoreTurntable' THEN															(* Store Turntable away *)
			stCommands.SetStoreTurntable := TRUE;
	
			(*Response String:*)
			IF stCommands.ArmState.ARM_HAS_ERROR THEN
				sToClient := F_MergeString(rxString[1], 'ARM_HAS_ERROR' , ';');
				stCommands.SetStoreTurntable := FALSE;
			ELSIF stCommands.ArmState.ARM_IS_MOVING THEN
				sToClient := F_MergeString(rxString[1], 'ARM_IS_MOVING' , ';');
				stCommands.SetStoreTurntable := FALSE;
			ELSIF NOT stCommands.ArmState.ARM_HOMED THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_HOMED' , ';');
				stCommands.SetStoreTurntable := FALSE;
			ELSIF NOT stCommands.ArmState.AT_LEARNING_POS THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_AT_LEARNING_POS' , ';');
				stCommands.SetStoreTurntable := FALSE;
			ELSE
				sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
			END_IF
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	
		ELSIF rxString[1] = 'SetMoveToCandlePos' THEN															(* Store Turntable away *)
			stCommands.SetMoveToCandlePos := TRUE;

			(*Response String:*)
			IF stCommands.ArmState.ARM_HAS_ERROR THEN
				sToClient := F_MergeString(rxString[1], 'ARM_HAS_ERROR' , ';');
			ELSIF stCommands.ArmState.ARM_IS_MOVING THEN
				sToClient := F_MergeString(rxString[1], 'ARM_IS_MOVING' , ';');
			ELSIF NOT stCommands.ArmState.ARM_HOMED THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_HOMED' , ';');
			ELSE
				sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');													(* Store Turntable away *)
				stCommands.SetMoveToCandlePos := TRUE;
			END_IF
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	
		ELSIF rxString[1] = 'StartArmReference' THEN												(* Start All Axis Reference*)
			(*Response String:*)
			IF stCommands.ArmState.ARM_HAS_ERROR THEN
				sToClient := F_MergeString(rxString[1], 'ARM_HAS_ERROR' , ';');
				stCommands.SetStartAllAxisRef := FALSE;
			ELSIF stCommands.ArmState.ARM_IS_MOVING THEN
				sToClient := F_MergeString(rxString[1], 'ARM_IS_MOVING' , ';');
				stCommands.SetStartAllAxisRef := FALSE;
			ELSIF NOT bHomeRefAxis4 AND NOT bHomeRefAxis6 THEN
				sToClient := F_MergeString(rxString[1], 'REF_SWITCH_4_AND_6_NOT_ACTIVE' , ';');
				stCommands.SetStartAllAxisRef := FALSE;
			ELSE
				sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
				stCommands.SetStartAllAxisRef := TRUE;
			END_IF
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	
	
		ELSIF rxString[1] = 'DisableArm' THEN																(* Disable All Axis *)
			stCommands.SetDisableAllAxis := TRUE;
	
			(*Response String:*)
			sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	
	
		ELSIF rxString[1] = 'EnableArm' THEN																(* Enable All Axis *)
			stCommands.SetEnableAllAxis := TRUE;
	
			(*Response String:*)
			sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	
	
		ELSIF rxString[1] = 'OpenGripper' THEN																(* Open Gripper *)
			stCommands.SetOpenGripper := TRUE;
			bGripper := FALSE;	(*Open Gripper*)
	
			(*Response String:*)
			sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');

			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	
	
		ELSIF rxString[1] = 'CloseGripper' THEN																(* Close Gripper *)
			stCommands.SetCloseGripper := TRUE;
			bGripper := TRUE; (*Close Gripper*)
	
			(*Response String:*)
			sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	
	
		ELSIF rxString[1] = 'ResetArm' THEN																	(* Reset All Axis *)
			IF stCommands.ArmState.ARM_IS_MOVING THEN
				sToClient := F_MergeString(rxString[1], 'ARM_IS_MOVING' , ';');
				stCommands.SetReset := FALSE;
			ELSE
				(*Response String:*)
				sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
				stCommands.SetReset := TRUE;
			END_IF
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	
		ELSIF rxString[1] = 'StartInterpolation' THEN															(*Enable Interpolation Mode*)
			(* Start if all positions were received *)
			(*Response String:*)
			IF stCommands.ArmState.ARM_HAS_ERROR THEN
				sToClient := F_MergeString(rxString[1], 'ARM_HAS_ERROR' , ';');
				stCommands.SetEnableInterpolation := FALSE;
			ELSIF stCommands.ArmState.ARM_IS_MOVING THEN
				sToClient := F_MergeString(rxString[1], 'ARM_IS_MOVING' , ';');
				stCommands.SetEnableInterpolation := FALSE;
			ELSIF NOT stCommands.ArmState.ARM_HOMED THEN
				sToClient := F_MergeString(rxString[1], 'ARM_NOT_HOMED' , ';');
				stCommands.SetEnableInterpolation := FALSE;
			ELSE
				IF stCommands.PositionsForInterpolationReady THEN
					stCommands.SetEnableInterpolation := TRUE;
					sToClient := F_MergeString(rxString[1], 'COMMAND_OK' , ';');
				ELSE
					sToClient := F_MergeString(rxString[1], 'NO_POSITIONS' , ';');
				END_IF
			END_IF
	
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);

		ELSE
			(*Varialbe Not Supported*)
			sToClient := F_MergeString(rxString[1], 'VARIABLE_NOT_SUPPORTED' , ';');
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
		END_IF
	ELSE
			(*Arm not ready for a new command*)
			sToClient := F_MergeString(rxString[1], 'ARM_BUSY' , ';');
			(*LOG COMMAND*)
			fbLogSend.LogMessage(sMessage := sToClient);
			fbLogReceive.LogMessage(sMessage := sFromClient);
	END_IF

ELSIF rxString[0] = 'GET' THEN
	IF rxString[1]  = 'ArmState' THEN																		(* Axes State *)
		sToClient := F_MergeSendArmState( 'ArmState', 'COMMAND_OK' , stCommands , ';' );


	ELSIF rxString[1]  = 'ActualPos' THEN																		(* Actual Position *)
		sToClient := F_MergeStringValue(	rxString,
										'COMMAND_OK' ,
										';' ,
										LREAL_TO_FMTSTR(stCommands.GetActualPos[1], 2, TRUE),
										LREAL_TO_FMTSTR(stCommands.GetActualPos[2], 2, TRUE),
										LREAL_TO_FMTSTR(stCommands.GetActualPos[3], 2, TRUE),
										LREAL_TO_FMTSTR(stCommands.GetActualPos[4], 2, TRUE),
										LREAL_TO_FMTSTR(stCommands.GetActualPos[5], 2, TRUE),
										LREAL_TO_FMTSTR(stCommands.GetActualPos[6], 2, TRUE) );

	ELSIF rxString[1] = 'GripperIsClosed' THEN																	(* Gripper Is Closed *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.GRIPPER_IS_CLOSED) , ';' );

	ELSIF rxString[1] = 'ArmIsMoving' THEN																	(* Arm Moving *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.ARM_IS_MOVING) , ';' );

	ELSIF  rxString[1] = 'ArmHasError' THEN																		(* Arm Error *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.ARM_HAS_ERROR) , ';' );

	ELSIF  rxString[1] = 'ArmIsEnabled' THEN																	(* Arm Enabled *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(NOT stCommands.ArmState.ARM_IS_DISABLED) , ';' );

	ELSIF  rxString[1] = 'ArmIsHomed' THEN																		(* Arm Homed*)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.ARM_HOMED) , ';' );

	ELSIF  rxString[1] = 'ArmHasStopped' THEN																		(* Arm Stopped*)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.ARM_STOPPED) , ';' );

	ELSIF  rxString[1] = 'ArmInPositionArea' THEN																		(* Arm In Position Area*)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.ARM_IN_POS_AREA) , ';' );

	ELSIF  rxString[1] = 'ArmInTargetPos' THEN																		(* Arm In Target Position*)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.ARM_IN_TARGET_POS) , ';' );

	ELSIF  rxString[1] = 'ArmAtHomePos' THEN																		(* Arm At Home Position *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.AT_HOME_POS) , ';' );

	ELSIF  rxString[1] = 'ArmAtLearningPos' THEN																		(* Arm At Learning Position *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.AT_LEARNING_POS) , ';' );

	ELSIF  rxString[1] = 'ArmAtTrayPos' THEN																		(* Arm At Tray Position *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.AT_TRAY_POS) , ';' );

	ELSIF  rxString[1] = 'ArmAtTurntablePos' THEN																		(* Arm At Turntable Position *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.AT_TURNTABLE_POS) , ';' );

	ELSIF  rxString[1] = 'ArmAtCCWPos' THEN																		(* Arm At Turntable Position *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.AT_CCW_POS) , ';' );

	ELSIF  rxString[1] = 'ArmAtCWPos' THEN																		(* Arm At Turntable Position *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.AT_CW_POS) , ';' );

	ELSIF  rxString[1] = 'ArmAtCandlePos' THEN																		(* Arm At Turntable Position *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.AT_CANDLE_POS) , ';' );

	ELSIF  rxString[1] = 'ArmAtPreGraspFromFloorPos' THEN																		(* Arm At Turntable Position *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.AT_PREGRASPFROMFLOOR_POS) , ';' );

	ELSIF  rxString[1] = 'ArmAtPreGraspFromTablePos' THEN																		(* Arm At Turntable Position *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.AT_PREGRASPFROMTABLE_POS) , ';' );

	ELSIF  rxString[1] = 'ArmSoftLimitMax' THEN																		(* Arm At Software Positive Limit Switch *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.ARM_SOFTLIMIT_MAX) , ';' );

	ELSIF  rxString[1] = 'ArmSoftLimitMin' THEN																		(* Arm At Software Negative Limit Switch *)
		sToClient := F_MergeStringOneValue(rxString[1], 'COMMAND_OK', BOOL_TO_STRING(stCommands.ArmState.ARM_SOFTLIMIT_MIN) , ';' );

	ELSE
		(*Varialbe Not Supported*)
		sToClient := F_MergeString(rxString[1], 'VARIABLE_NOT_SUPPORTED' , ';');
		(*LOG COMMAND*)
		fbLogSend.LogMessage(sMessage := sToClient);
		fbLogReceive.LogMessage(sMessage := sFromClient);
	END_IF

ELSE
	sToClient := F_MergeString(rxString[0], 'CMD_NOT_SUPPORTED' , ';');
	(*LOG COMMAND*)
	fbLogSend.LogMessage(sMessage := sToClient);
	fbLogReceive.LogMessage(sMessage := sFromClient);

END_IF
             G  ,     Ъ           FB_SetCamSearchDirection 7U	7U      8$Ј$%%          FUNCTION_BLOCK FB_SetCamSearchDirection
VAR_INPUT
	bExecute				:BOOL;
	nAxisID					:DWORD;
	eSearchDirection		:E_JointSide;
END_VAR
VAR_OUTPUT
	bBusy 					:BOOL;
	bError					:BOOL;
	nErrID					:DWORD;
END_VAR
VAR
	fbADSWrite: ADSWRITE;
	_wTmp: WORD;
END_VARC  CASE eSearchDirection OF
	E_Joint_Negative:
		_wTmp := 16#00;
	E_Joint_Positive:
		_wTmp := 16#01;
END_CASE

fbADSWrite(
	NETID:= '',
	PORT:= 501,
	IDXGRP:= 16#5000+nAxisID,
	IDXOFFS:= 16#101,
	LEN:= 2,
	SRCADDR:= ADR(_wTmp),
	WRITE:= bExecute,
	TMOUT:= ,
	BUSY=> bBusy,
	ERR=> bError,
	ERRID=> nErrID);
               i  ,   Ђ`           FB_SetDefaulHomingDirection FА8U	тЃ7U      8сЈстт          FUNCTION_BLOCK FB_SetDefaulHomingDirection
VAR_INPUT
	bExecute	:BOOL;
END_VAR
VAR_OUTPUT
	bDone		:BOOL;
	bBusy		:BOOL;
	bError		:BOOL;
END_VAR
VAR_IN_OUT
END_VAR
VAR
	step: INT;
	oldStep : INT;
	fbSetSearchDirection: FB_SetCamSearchDirection;
	i: INT;
END_VARq  CASE step OF

	0: (*initial step*)
		IF bExecute
		AND NOT bDone
		AND NOT bError THEN
			F_SwitchStep(pStepCounter:=ADR(step), 10, pLastStep:=ADR(oldStep));
			i:=1;
			bBusy := TRUE;
		ELSIF NOT bExecute THEN
			bDone := FALSE;
			bError :=FALSE;
		END_IF

	10: (*start setting search direction*)
		fbSetSearchDirection.bExecute := TRUE;
		IF fbSetSearchDirection.bBusy THEN
			F_SwitchStep(pStepCounter:=ADR(step), 20, pLastStep:=ADR(oldStep));
		END_IF

	20:	(*wait for direction to be set*)
		IF NOT fbSetSearchDirection.bBusy THEN
			fbSetSearchDirection.bExecute := FALSE;
			IF NOT fbSetSearchDirection.bError THEN
				F_SwitchStep(pStepCounter:=ADR(step), 30, pLastStep:=ADR(oldStep));
			ELSE
				F_SwitchStep(pStepCounter:=ADR(step), 0, pLastStep:=ADR(oldStep));
				bError := TRUE;
				bBusy := FALSE;
			END_IF
		END_IF

	30:	(*increase counter*)
		IF i<6 THEN
			i:=i+1;
			F_SwitchStep(pStepCounter:=ADR(step), 10, pLastStep:=ADR(oldStep));
		ELSE
			i:=1;
			F_SwitchStep(pStepCounter:=ADR(step), 40, pLastStep:=ADR(oldStep));
		END_IF

	40:	(*set done*)
		bBusy := FALSE;
		bDone := TRUE;
		F_SwitchStep(pStepCounter:=ADR(step), 0, pLastStep:=ADR(oldStep));

END_CASE

fbSetSearchDirection(
	bExecute:= ,
	nAxisID:= main.Joint[i].NcToPlc.AxisId,
	eSearchDirection:= E_Joint_Positive,
	bBusy=> , 
	bError=> , 
	nErrID=>  );               f   , *   6d          Main @5      Joint1 р     Joint2 р     Joint3 р     Joint4 р     Joint5 р     LastAutomaticState р     LastManualState р     bCloseGripper р     _bAutomaticMode р  
   ResetAxis1 р  
   ResetAxis2 р  
   ResetAxis3 р  
   ResetAxis4 р  
   ResetAxis5 р     _bManualMode р     _bStartProgramm р     _bMoveAllAxis р     LastHomingState р  	   fPosition р     eAutomaticState р     eHomingState р  
   ErrorAxis5 р  
   ErrorAxis4 р  
   ErrorAxis3 р  
   ErrorAxis2 р  
   ErrorAxis1 р     _bHoming р     eMode р     RTRIG р     Power_Axis5 р     Power_Axis4 р     Power_Axis3 р     Power_Axis2 р     Power_Axis1 р     _bMoveAxis5 р     _bMoveAxis4 р     _bMoveAxis3 р     _bMoveAxis2 р     _bMoveAxis1 р     MoveAbsoluteJoint1 р     MoveAbsoluteJoint2 р     MoveAbsoluteJoint3 р     MoveAbsoluteJoint4 р     MoveAbsoluteJoint5 р     _bAxisReset р     HomingAxis1 р     HomingAxis2 р     HomingAxis3 р     HomingAxis4 р     HomingAxis5 р     LastMode р  	   fVelocity р     fHomePosition р   рqГ7U	Њ7U      P            ,  PROGRAM Main
VAR
	fPosition				:	ARRAY[1..6] OF LREAL:=0,0,0,0,0,0;	(*Absolute Position in DEG*)
	fActPosition			:	ARRAY[1..6] OF REAL;

	bProgrammReset		:	BOOL:=TRUE;

	(* eNumerations *)
	eSystemMode		:	E_SystemMode := SystemMode_Boot;
	eMode			:	E_STATE:=800;					(*Programm Mode: Shows in which Mode the Program actually is*)
	eTurntable		:	E_STATE_TURNTABLE:=99;		(*IDLE*)
	eTray			:	E_STATE_TRAY:=99;				(*IDLE*)
	eFloor			:	E_STATE_GRASPFLOOR := 99;		(*IDLE*)
	ePreFloor		:	E_STATE_PREGRASPFLOOR := 99; (*IDLE*)
	ePreTable		:	E_STATE_PREGRASPTABLE := 99; (*IDLE*)
	ePutObject		:	E_STATE_OBJECT_TO_TRAY := 99; (*IDLE*)
	eCandlePos		: 	E_STATE_CANDLE := E_CANDLE_IDLE;
	eHomePos		:	E_STATE_HOME := E_HOME_IDLE;

	LastMode			:	E_STATE;					(*Shows Last Program Mode*)
	LastTurntableState	:	E_STATE_TURNTABLE;
	LastTrayState		:	E_STATE_TRAY;
	LastFloorState		:	E_STATE_GRASPFLOOR;
	LastPreFloorState		:	E_STATE_PREGRASPFLOOR;
	LastPreTableState	:	E_STATE_PREGRASPTABLE;
	LastPutObjectState	:	E_STATE_OBJECT_TO_TRAY;
	LastCandleState		: 	E_STATE_CANDLE;
	LastHomeState		:	E_STATE_HOME;
	(*LastJog				:	E_STATE_JOG;*)

	Joint	:	ARRAY[1..6] OF Axis_Ref;

	Power_Axis	: 	ARRAY[1..6] OF MC_PowerStepper;
	MoveAbsoluteJoint: 	ARRAY[1..6] OF MC_MoveAbsolute;
	HomingAxis	:	ARRAY[1..6] OF MC_Home;
	ResetAxis	:	ARRAY[1..6] OF MC_Reset;

	TON1		:	TON;
	TON2		:	TON;
	TON3		:	TON;
	TON4		:	TON;
	TGrip		:	TON;
	RTrigDisable	:	R_TRIG;
	fbCheckState			:	FB_CheckState;
	fbInstances			:	FB_Instances;
	fbHOME: FB_Home_new;
	fbMOVE				: 	FB_Move;
	fbMoveInterpolation	:	FB_MoveInterpolation;
	(*fbJOG				:	FB_Jog;*)
	fbRESET				:	FB_Reset;
	fbLedBlinking		: 	FB_LedBlinking;
	bExecute: BOOL;
	fbSUPS: FB_S_UPS;
	i: INT;
	TON_Retry: ton;
	bSaveParams: BOOL;
	fbShutDown: NT_Shutdown;
END_VAR?   IF bSaveParams THEN
	PRG_DataAccess.bSaveCfg := TRUE;
	PRG_DataAccess();
	IF PRG_DataAccess.bDoneSaveCfg THEN
		PRG_DataAccess.bSaveCfg := FALSE;
		PRG_DataAccess();
		bSaveParams := FALSE;
	END_IF
END_IF
TON_Retry(pt:=t#500ms);

CASE eSystemMode OF
	SYSTEMMODE_IDLE: (*--------------IDLE----------------*)
		(*stSystem.sState:= 'LAZE AROUND';*)
		PRG_DataAccess.bLoadCfg:=FALSE;
		PRG_DataAccess();
		TON_Retry.IN := TRUE;
		IF TON_Retry.Q THEN
			(*try to load XML again*)
			eSystemMode := SYSTEMMODE_BOOT;
			TON_Retry.IN := FALSE;
		END_IF
	SYSTEMMODE_BOOT: (*----------INITIALISIERUNG---------*)
		PRG_DataAccess.bLoadCfg:=TRUE;
		PRG_DataAccess();
		(*stSystem.sState:= 'LOAD CFG DATA';*)

		IF PRG_DataAccess.bDoneLoadCfg THEN
			PRG_DataAccess.bLoadCfg:=FALSE;
			eSystemMode:= SYSTEMMODE_INIT;
		ELSIF PRG_DataAccess.FB_XmlSrvReadConfig.bError THEN
			(*loading XML failed*)
			PRG_DataAccess.bLoadCfg := FALSE;
			eSystemMode := SYSTEMMODE_IDLE;
		END_IF
	SYSTEMMODE_INIT: (*-----------do initial stuff if necessary------------*)

		(*Mappen der Daten aus Config*)

		eSystemMode := SYSTEMMODE_PREOP;


	SYSTEMMODE_PREOP: (*---------VISU CALLBACK------------*)

		(*stSystem.sState:= 'STARTUP';*)
		eSystemMode:= SYSTEMMODE_OP;

	SYSTEMMODE_OP: (*------------OPERATIONAL-----------*)
		(*stSystem.sState:= 'Operational';*)

		(*------------------call subelements-------------------*)

		ReadPLCStatus;
		CallFBs;

		IF bProgrammReset THEN
			Init;
			bProgrammReset := FALSE;
		END_IF

		(*reset bReset to ensure it's just set for 1 cycle*)
		bReset := FALSE;

		IF stCommands.SetStopArm THEN
			stInstances.Input.StopEnable := TRUE;
			fbMove.bExecuteMove := FALSE;
			fbMOVE.bEnableSingleAxisMove := FALSE;
			IF fbMove.bHasBeenStopped THEN
				stInstances.Input.StopEnable := FALSE;
				stCommands.SetStopArm := FALSE;
				F_ResetCommands();
				eFloor := E_FLOOR_IDLE;
				ePreFloor := E_PRE_FLOOR_IDLE;
				ePreTable := E_PRE_TABLE_IDLE;
				eTray := E_TRAY_IDLE;
				eTurntable := E_TURNTABLE_IDLE;
				ePutObject := E_OBJECT_IDLE;
				eCandlePos := E_CANDLE_IDLE;
				eHomePos := E_HOME_IDLE;
				LastMode := eMode;
				eMode := E_WAITFORCOMMAND;
			END_IF
		END_IF


		CallWaitForCommand;

		CASE eMode OF

			E_HOMING:
				(*Reference Axis one by one:*)
				IF (*bHomeRefAxis4 AND bHomeRefAxis6*) NOT fbHome.bHomingBusy
				AND NOT fbHOME.bHomingDone
				AND NOT fbHome.bError THEN
					fbHOME.bExecute := TRUE;
				ELSIF fbHOME.bHomingDone THEN
					stCommands.SetStartAllAxisRef := FALSE;
					LastMode := eMode;
					eMode := E_MOVETOHOMEPOS;
				ELSIF NOT fbHOME.bHomingBusy THEN
					stCommands.SetStartAllAxisRef := FALSE;
					LastMode := eMode;
					eMode := E_WAITFORCOMMAND;
				END_IF
			E_MOVE:
				stInstances.Input.fMaxVelocity := fVelocity(*stParams.MaxVelocity*);
				IF fbMove.bStandStill THEN
					stInstances.Input.fPosition := fPosition;
					fbMove.bExecuteMove := TRUE;
					stInstances.Input.MoveAbsoluteInterpolation := FALSE;
				END_IF
		
				IF fbMove.bError OR fbMove.bIsMoving OR fbMove.bMoveDone THEN
					stCommands.SetStartMove := FALSE;
					eMode := E_WAITFORCOMMAND;
					LastMode := E_MOVE;
					fPosition := stInstances.Input.fPosition;
				END_IF
		
			E_INTERPOLATION:
				(*stInstances.Input.fMaxVelocity := stParams.MaxVelocity;*)
				stInstances.Input.fMaxVelocity := 5;
				IF stCommands.PositionsForInterpolationReady THEN
					fbMoveInterpolation.bExecuteInterpolation := TRUE;
					stCommands.SetEnableInterpolation := FALSE;
				ELSIF fbMoveInterpolation.bDone OR fbMoveInterpolation.bHasBeenStopped THEN
					LastMode := eMode;
					eMode := E_WAITFORCOMMAND;
					fPosition := stInstances.Input.fPosition;
				END_IF
		

			E_MOVETOHOMEPOS:
				CallMoveToHome;

			E_MOVETOLEARNINGPOS:
				CallGraspTurntable;
		

			E_MOVETOTRAY:
				CallMoveToTray;
		
			E_PUTOBJECTTOTRAY:
				CallPutLearningObjectToTray;
		
			E_MOVEGRASPFROMFLOOR:
				CallMoveGraspFromFloor;
		
			E_MOVEPREGRASPFROMFLOOR:
				CallMovePreGraspFromFloor;

			E_MOVEPREGRASPFROMTABLE:
				CallMovePreGraspTable;
		
			E_MOVETOCANDLEPOS:
				CallMoveToCandlePos;
		
			E_TURNTURNTABLECW:
				IF fbMove.bStandStill AND NOT fbMove.bAtHomePos THEN
					fVelocity := 10;
					stInstances.Input.fPosition := stParams.fTurntableCW;
					fbMove.bSingleAxisIndex := 6;
					fbMove.bEnableSingleAxisMove := TRUE;
					fbMove.bExecuteMove := stCommands.SetTurnTurntableCW;
				ELSE
					stCommands.SetTurnTurntableCW := FALSE;
				END_IF

				IF fbMove.bAtTurntableCWPos OR fbMove.bError OR fbMove.bIsMoving THEN
					eMode := E_WAITFORCOMMAND;
					LastMode := E_TURNTURNTABLECW;
					stCommands.SetTurnTurntableCW := FALSE;
					fbMove.bEnableSingleAxisMove := FALSE;
					fbMove.bExecuteMove := FALSE;
					fPosition := stInstances.Input.fPosition;
				END_IF
		
		
			E_TURNTURNTABLECCW:
				IF fbMove.bStandStill AND NOT fbMove.bAtHomePos THEN
					fVelocity := 10;
					stInstances.Input.fPosition := stParams.fTurntableCCW;
					fbMove.bSingleAxisIndex := 6;
					fbMove.bEnableSingleAxisMove := TRUE;
					fbMove.bExecuteMove := stCommands.SetTurnTurntableCCW;
				ELSE
					stCommands.SetTurnTurntableCCW := FALSE;
				END_IF
		
				IF fbMove.bAtTurntableCCWPos OR fbMove.bError OR fbMove.bIsMoving THEN
					eMode := E_WAITFORCOMMAND;
					LastMode := E_TURNTURNTABLECCW;
					stCommands.SetTurnTurntableCCW := FALSE;
					fbMove.bEnableSingleAxisMove := FALSE;
					fbMove.bExecuteMove := FALSE;
					fPosition := stInstances.Input.fPosition;
				END_IF
		
		
			E_STORETURNTABLE:
				CallStoreTurntable;

			E_JOG:
				CallMoveSingleAxis;
		
			E_RESET:
				IF fbRESET.bResetDone THEN
					stCommands.SetReset := FALSE;
					eMode := E_WAITFORCOMMAND;
					LastMode := E_RESET;
					eFloor := E_FLOOR_IDLE;
					ePreFloor := E_PRE_FLOOR_IDLE;
					eTray := E_TRAY_IDLE;
					eTurntable := E_TURNTABLE_IDLE;
					eHomePos := E_HOME_IDLE;
				END_IF
				fbRESET.bExecute := TRUE;
		

			E_ENABLEALLAXIS:
				stInstances.Input.PowerEnable := TRUE;
		
				IF F_CheckIfAxisEnabled(Joint) THEN
					eMode := E_WAITFORCOMMAND;
					LastMode := E_ENABLEALLAXIS;
					stCommands.SetEnableAllAxis := FALSE;
				ELSIF F_CheckIfAxisHasError(Joint) THEN
					eMode := E_ERROR;
					LastMode := E_ENABLEALLAXIS;
					stCommands.SetEnableAllAxis := FALSE;
				END_IF
		
		
			E_DISABLEALLAXIS:
				(* Stop Axis then Disable!!*)
				stInstances.Input.StopEnable := TRUE;
				IF stInstances.Output.StopDone THEN
					stInstances.Input.StopEnable := FALSE;
					stInstances.Input.PowerEnable := FALSE;
					IF F_CheckIfAxisDisabled(Joint) THEN
						eMode := E_WAITFORCOMMAND;
						LastMode := E_DISABLEALLAXIS;
						stCommands.SetDisableAllAxis := FALSE;
					ELSIF F_CheckIfAxisHasError(Joint) THEN
						eMode := E_ERROR;
						LastMode := E_DISABLEALLAXIS;
						stCommands.SetEnableAllAxis := FALSE;
					END_IF
				END_IF

			E_SETPOSTOZERO:
				IF fbMove.bStandStill (*AND fbMove.bInTargetPos*) THEN
					STInstances.Input.SetPositionEnable := TRUE;
					eMode := E_WAITFORCOMMAND;
					LastMode := E_SETPOSTOZERO;
				ELSE
					STInstances.Input.SetPositionEnable := FALSE;
					eMode := E_WAITFORCOMMAND;
					LastMode := E_SETPOSTOZERO;
				END_IF
				stCommands.SetAllPositionsToZero := FALSE;
		END_CASE

		fbSetDefaultHomingDirection(bExecute:= , bDone=> , bBusy=> , bError=> );

END_CASE

(*reset flags if turntable is removed manually*)
IF NOT bGripper
AND stTurnTableState.TurnTableGrasped THEN
	stTurnTableState.TurnTableGrasped := FALSE;
END_IF

(*reset inTray-flag if we reach an other position (to prevent wrong states)*)
IF (fbMOVE.bAtCandlePos
OR fbMOVE.bAtHomePos
OR fbMove.bAtLearningPos)
AND stTurnTableState.InTrayArea THEN
	stTurnTableState.InTrayArea := FALSE;
END_IF


fbSUPS(
	sNetID:= '', 
	iPLCPort:= AMSPORT_R0_PLC_RTS1,
	iUPSPort:= 16#4A8,
	tTimeout:= DEFAULT_ADS_TIMEOUT,
	eUpsMode:= eSUPS_WrPersistData_Shutdown,
	ePersistentMode:= SPDM_2PASS,
	tRecoverTime:= t#10s,
	bPowerFailDetect=> ,
	eState=> );
 q   , < < H[           CallFBs ^M7U  fbInstances(Axis:= Joint, STInstances:= stInstances);
fbHOME(Axis:= Joint, STInstances:= stInstances);
fbMOVE(Axis:= Joint, STInstances := stInstances);
fbRESET(Axis:= Joint, STInstances:= stInstances);
(*fbJOG(Axis:=Joint, STInstances:=stInstances);*)
fbMoveInterpolation( Axis:= Joint, STInstances:= stInstances);
fbLedBlinking(bSwitch:= bEmergencyButton, tTime:= T#0.5s, bLED=> bEmergencyButtonLED);


fbShutDown(
	NETID:= '',
	DELAY:= 1,
	START:= stCommands.SetShutdown,
	TMOUT:= t#2s,
	BUSY=> ,
	ERR=> ,
	ERRID=> );r   ,   *=           CallGraspTurntable ^M7Uw  TON1(IN:= fbMove.bAtFinalGraspTurntablePos, PT:= T#1s);
TGrip(PT:= T#1s);

CASE eTurntable OF
	E_TURNTABLE_MOVEPREGRASP_1:
		(*Move To Pregrasp Position and open Gripper *)
		stInstances.Input.fMaxVelocity := stParams.MaxVelocity;

		IF LastTurntableState = E_TURNTABLE_IDLE THEN
			stInstances.Input.fPosition := stParams.fPreGraspTurntable1;
		ELSE
			stInstances.Input.fPosition := stParams.fPreStoreTurntable1;
		END_IF

		fbMove.bExecuteMove	:=	TRUE;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			(*bGripper := TRUE; (*Close Gripper*)*)
			LastTurntableState := eTurntable;
			eTurntable := E_TURNTABLE_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone THEN
			(*movement finished*)
			IF LastTurntableState = E_TURNTABLE_IDLE
			AND	fbMove.bAtPreGraspTurntablePos1 THEN
				(*arm preprepositioned to fetch the table*)
				fbMove.bExecuteMove := FALSE;
				LastTurntableState := eTurntable;
				eTurntable := E_TURNTABLE_MOVEPREGRASP_2;
			ELSIF LastTurntableState = E_TURNTABLE_MOVEPREGRASP_2
			AND	fbMove.bAtPreStoreTurntablePos1	THEN
				(*pulled to the table out successfully*)
				fbMove.bExecuteMove := FALSE;
				LastTurntableState := eTurntable;
				eTurntable := E_TURNTABLE_MOVETOLEARNINGPOS;
			END_IF
		END_IF
		fPosition := stInstances.Input.fPosition;


	E_TURNTABLE_MOVEPREGRASP_2:
		(*Move To Pregrasp Position 2 *)
		IF LastTurntableState = E_TURNTABLE_MOVEPREGRASP_1 THEN
			stInstances.Input.fPosition := stParams.fPreGraspTurntable2;
		ELSE
			stInstances.Input.fPosition := stParams.fPreStoreTurntable2;
		END_IF
		stInstances.Input.fMaxVelocity := 5;

		fbMove.bExecuteMove	:=	TRUE;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE; (*Close Gripper*)
			LastTurntableState := eTurntable;
			eTurntable := E_TURNTABLE_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone THEN
			(*movement finished*)
			IF LastTurntableState = E_TURNTABLE_MOVEFINALGRASP
			AND	fbMove.bAtPreStoreTurntablePos2 THEN
				(*pulled turntable out of fixture*)
				fbMove.bExecuteMove := FALSE;
				LastTurntableState := eTurntable;
				eTurntable := E_TURNTABLE_MOVEPREGRASP_1;
				(*reset flag that we are in critical area*)
				stTurnTableState.InTrayArea := FALSE;
			ELSIF LastTurntableState = E_TURNTABLE_MOVEPREGRASP_1
			AND	fbMove.bAtPreGraspTurntablePos2	THEN
				(*arm prepositioned to fetch turntable*)
				fbMove.bExecuteMove := FALSE;
				LastTurntableState := eTurntable;
				eTurntable := E_TURNTABLE_MOVEFINALGRASP;
				(*set state that we enter critical area*)
				stTurnTableState.InTrayArea := TRUE;
			END_IF
		END_IF
		fPosition := stInstances.Input.fPosition;

	E_TURNTABLE_MOVEFINALGRASP:
		(*move into turntable*)
		stInstances.Input.fMaxVelocity := 5;
		stInstances.Input.fPosition := stParams.fFinalGraspTurntable;
		fbMove.bExecuteMove	:=	TRUE;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE; (*Open Gripper*)
			LastTurntableState := eTurntable;
			eTurntable := E_TURNTABLE_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone
		AND fbMove.bAtFinalGraspTurntablePos THEN
			(*gripper is moved into turntable*)
			bGripper := TRUE; (*close gripper*)
			stTurnTableState.TurnTableGrasped := TRUE; (*set state that we grasped the turntable*)
			fbMove.bExecuteMove := FALSE;
			LastTurntableState := eTurntable;
			eTurntable := E_TURNTABLE_MOVEPREGRASP_2;
		END_IF
		fPosition := stInstances.Input.fPosition;

	E_TURNTABLE_MOVETOLEARNINGPOS:
		stInstances.Input.fMaxVelocity := 15; (*stParams.MaxVelocity;*)
		stInstances.Input.fPosition := stParams.fLearningPosition;
		fbMove.bExecuteMove	:=	TRUE;

		IF fbMove.bError THEN
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE; (*Close Gripper*)
			LastTurntableState := eTurntable;
			eTurntable := E_TURNTABLE_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bAtLearningPos
		AND fbMove.bMoveDone THEN
			TGrip.IN:=FALSE;
			(*bGripper := TRUE; (*Close Gripper*)*)
			bGripper := TRUE;
			fbMove.bExecuteMove := FALSE;
			LastTurntableState := eTurntable;
			eTurntable := E_TURNTABLE_IDLE;
			stCommands.SetMoveToLearningPos := FALSE;
		END_IF
		fPosition := stInstances.Input.fPosition;


	E_TURNTABLE_IDLE:
		IF NOT stCommands.SetMoveToLearningPos
		OR fbMove.bIsMoving
		OR fbMove.bAtLearningPos THEN
			(*arm is moving or we are already at learning position*)
			(*bGripper := TRUE; (*Close Gripper*) *)
			stCommands.SetMoveToLearningPos := FALSE;
			LastMode := eMode;
			eMode  := E_WAITFORCOMMAND;
		ELSE
			IF fbMove.bAtHomePos THEN
				(*let's fetz*)
				bGripper := FALSE; (*Open Gripper*)
				stInstances.Input.fMaxVelocity := stParams.MaxVelocity;
				LastTurntableState := eTurntable;
				eTurntable := E_TURNTABLE_MOVEPREGRASP_1;
			ELSE
				(*arm not at home position !!*)
				stCommands.SetMoveToLearningPos := FALSE;
				LastMode := eMode;
				eMode  := E_WAITFORCOMMAND;
			END_IF
		END_IF

END_CASEs   , № № ќ           CallMoveGraspFromFloor ^M7UЌ  TON4(IN:= fbMove.bAtFinalGraspFromFloorPos, PT:= T#0.5s);

CASE eFloor OF
	E_FLOOR_MOVEARMOUT:
		(*Move To Pregrasp Position and open Gripper *)
		IF LastFloorState = E_FLOOR_MOVEPREGRASP THEN
			stInstances.Input.fMaxVelocity := stParams.MaxVelocity;
		ELSE
			stInstances.Input.fMaxVelocity := 10;
		END_IF

		fbMove.bExecuteMove	:=	TRUE;
		stInstances.Input.fPosition := stParams.fMoveArmOut;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE;
			LastFloorState := eFloor;
			eFloor := E_FLOOR_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone THEN
			(*movement finished*)
			IF LastFloorState = E_FLOOR_MOVEPREGRASP
			AND fbMove.bAtMoveArmOutPos THEN
				fbMove.bExecuteMove := FALSE;
				eMode := E_WAITFORCOMMAND;
				stCommands.SetMoveToTray := TRUE;
				LastFloorState := eFloor;
				eFloor := E_FLOOR_IDLE;
			ELSIF LastFloorState = E_FLOOR_IDLE
			AND	fbMove.bAtMoveArmOutPos THEN
				fbMove.bExecuteMove := FALSE;
				LastFloorState := eFloor;
				eFloor := E_FLOOR_MOVEPREGRASP;
			END_IF

		END_IF
		fPosition := stInstances.Input.fPosition;


	E_FLOOR_MOVEPREGRASP:
		stInstances.Input.fMaxVelocity := stParams.MaxVelocity;
		stInstances.Input.fPosition := stParams.fPreGraspFromFloor;
		fbMove.bExecuteMove	:=	TRUE;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE; (*Close Gripper*)
			LastFloorState := eFloor;
			eFloor := E_FLOOR_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone THEN
			(*movement finished*)
			IF LastFloorState = E_FLOOR_MOVEFINALGRASP
			AND fbMove.bAtPreGraspFromFloorPos THEN
				fbMove.bExecuteMove := FALSE;

				LastFloorState := eFloor;
				eFloor := E_FLOOR_MOVEARMOUT;
			ELSIF LastFloorState = E_FLOOR_MOVEARMOUT
			AND fbMove.bAtPreGraspFromFloorPos THEN
				bGripper := FALSE; (* Open Gripper *)
				fbMove.bExecuteMove := FALSE;
				IF fbMove.bReady THEN
					LastFloorState := eFloor;
					eFloor := E_FLOOR_MOVEFINALGRASP;
				END_IF
			END_IF
		END_IF
		fPosition := stInstances.Input.fPosition;


	E_FLOOR_MOVEFINALGRASP:
		stInstances.Input.fMaxVelocity := 10;
		stInstances.Input.fPosition := stParams.fFinalGraspFromFloor;
		fbMove.bExecuteMove	:=	TRUE;

		IF fbMove.bError THEN
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE; (*Close Gripper*)
			LastFloorState := eFloor;
			eFloor := E_FLOOR_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone
		AND fbMove.bAtFinalGraspFromFloorPos THEN
			bGripper := TRUE; (*Close Gripper*)
			stCommands.SetMoveGraspFromFloor := FALSE;
			fbMove.bExecuteMove := FALSE;
			LastFloorState := eFloor;
			eFloor := E_FLOOR_MOVEPREGRASP;
			(*END_IF*)
		END_IF
		fPosition := stInstances.Input.fPosition;


	E_FLOOR_IDLE:
		IF NOT stCommands.SetMoveGraspFromFloor OR
			fbMove.bIsMoving OR
			 fbMove.bAtPreGraspTrayPos1
		THEN
			stCommands.SetMoveGraspFromFloor := FALSE;
			LastMode := eMode;
			eMode  := E_WAITFORCOMMAND;
		ELSE
			IF fbMove.bAtHomePos THEN
				bGripper := TRUE;			(*Close Gripper*)
				stInstances.Input.fMaxVelocity := stParams.MaxVelocity;
				LastFloorState := eFloor;
				eFloor := E_FLOOR_MOVEARMOUT;
			ELSE
				stCommands.SetMoveGraspFromFloor := FALSE;
				LastMode := eMode;
				eMode  := E_WAITFORCOMMAND;
			END_IF
		END_IF

END_CASEt   ,   Nl           CallMovePreGraspFromFloor ^M7Uо  
CASE ePreFloor OF
	E_PRE_FLOOR_MOVEARMOUT:
		(*Move To Pregrasp Position and open Gripper *)
		fbMove.bExecuteMove	:=	TRUE;
		stInstances.Input.fPosition := stParams.fMoveArmOut;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE;
			LastPreFloorState := ePreFloor;
			ePreFloor := E_PRE_FLOOR_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone
		AND LastPreFloorState = E_PRE_FLOOR_IDLE
		AND	fbMove.bAtMoveArmOutPos	THEN
			(*movement finished*)
			fbMove.bExecuteMove := FALSE;
			LastPreFloorState := ePreFloor;
			ePreFloor := E_PRE_FLOOR_MOVEPREGRASP;
		END_IF


	E_PRE_FLOOR_MOVEPREGRASP:
		stInstances.Input.fMaxVelocity := stParams.MaxVelocity;
		stInstances.Input.fPosition := stParams.fPreGraspFromFloor;
		fbMove.bExecuteMove	:=	TRUE;
		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE; (*Close Gripper*)
			LastPreFloorState := ePreFloor;
			ePreFloor := E_PRE_FLOOR_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone
		AND LastPreFloorState = E_PRE_FLOOR_MOVEARMOUT
		AND	fbMove.bAtPreGraspFromFloorPos THEN

			bGripper := FALSE; (* Open Gripper *)
			fbMove.bExecuteMove := FALSE;
		(*	IF fbMove.bReady THEN Move.ready is signaled a cylce too later*)
			stCommands.SetMovePreGraspFromFloor := FALSE;
			LastPreFloorState := ePreFloor;
			ePreFloor := E_PRE_FLOOR_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		(*	END_IF*)
		END_IF

	E_PRE_FLOOR_IDLE:
		IF NOT stCommands.SetMovePreGraspFromFloor OR
			fbMove.bIsMoving OR
			 fbMove.bAtPreGraspTrayPos1
		THEN
			stCommands.SetMovePreGraspFromFloor := FALSE;
			LastMode := eMode;
			eMode  := E_WAITFORCOMMAND;
		ELSE
			bGripper := TRUE;			(*Close Gripper*)
			stInstances.Input.fMaxVelocity := 15;
			LastPreFloorState := ePreFloor;
			ePreFloor := E_PRE_FLOOR_MOVEARMOUT;
		END_IF

END_CASE!  ,   "6           CallMovePreGraspTable ^M7Uѓ  CASE ePreTable OF
	E_PRE_TABLE_MOVEARMOUT:
		(*Move To Pregrasp Position and open Gripper *)
		fbMove.bExecuteMove	:=	TRUE;
		stInstances.Input.fPosition := stParams.fMoveArmOut;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE;
			LastPreTableState := ePreTable;
			ePreTable := E_PRE_TABLE_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone
		AND LastPreTableState = E_PRE_TABLE_IDLE
		AND	fbMove.bAtMoveArmOutPos	THEN
			(*movement finished*)
			fbMove.bExecuteMove := FALSE;
			LastPreTableState := ePreTable;
			ePreTable := E_PRE_TABLE_MOVEARMOUT2;
		END_IF


	E_PRE_TABLE_MOVEARMOUT2:
		(*Move To Pregrasp Position and open Gripper *)
		fbMove.bExecuteMove	:=	TRUE;
		stInstances.Input.fPosition := stParams.fMoveArmOut2;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE;
			LastPreTableState := ePreTable;
			ePreTable := E_PRE_TABLE_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMOVE.bMoveDone
		AND LastPreTableState = E_PRE_TABLE_MOVEARMOUT
		AND	fbMove.bAtMoveArmOutPos2 THEN
			(*movement finished*)
			fbMove.bExecuteMove := FALSE;
			LastPreTableState := ePreTable;
			ePreTable := E_PRE_TABLE_MOVEARMOUT3;
		END_IF


	E_PRE_TABLE_MOVEARMOUT3:
		(*Move To Pregrasp Position and open Gripper *)
		fbMove.bExecuteMove	:=	TRUE;
		stInstances.Input.fPosition := stParams.fMoveArmOut3;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE;
			LastPreTableState := ePreTable;
			ePreTable := E_PRE_TABLE_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone
		AND LastPreTableState = E_PRE_TABLE_MOVEARMOUT2
		AND fbMove.bAtMoveArmOutPos3 THEN
			(*movement finished*)
			fbMove.bExecuteMove := FALSE;
			LastPreTableState := ePreTable;
			ePreTable := E_PRE_TABLE_MOVEPREGRASP;
		END_IF

	E_PRE_TABLE_MOVEPREGRASP:
		stInstances.Input.fMaxVelocity := 5;
		stInstances.Input.fPosition := stParams.fPreGraspFromTable;
		fbMove.bExecuteMove	:=	TRUE;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE; (*Close Gripper*)
			LastPreTableState := ePreTable;
			ePreTable := E_PRE_TABLE_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone
		AND LastPreTableState = E_PRE_TABLE_MOVEARMOUT3
		AND fbMove.bAtPreGraspFromTablePos THEN
			(*movement finished*)
			bGripper := FALSE; (* Open Gripper *)
			fbMove.bExecuteMove := FALSE;
			(*IF fbMove.bReady THEN -> fbMove.bReady is signalized a cycle too late*)
				stCommands.SetMovePreGraspFromTable := FALSE;
				LastPreTableState := ePreTable;
				ePreTable := E_PRE_TABLE_IDLE;
			(*END_IF*)
		END_IF


	E_PRE_TABLE_IDLE:
		IF NOT stCommands.SetMovePreGraspFromTable OR
			fbMove.bIsMoving OR
			 fbMove.bAtPreGraspTrayPos1
		THEN
			stCommands.SetMovePreGraspFromTable := FALSE;
			LastMode := eMode;
			eMode  := E_WAITFORCOMMAND;
		ELSE
			bGripper := TRUE;			(*Close Gripper*)
			stInstances.Input.fMaxVelocity := 15;
			LastPreTableState := ePreTable;
			ePreTable := E_PRE_TABLE_MOVEARMOUT;
		END_IF

END_CASEu   ,   "           CallMoveSingleAxis ^M7Uј  IF stInstances.Output.PowerEnableDone THEN
	IF stInstances.Output.MoveJogDone OR
		fbMove.bAtSoftLimitMax OR
		fbMove.bAtSoftLimitMin OR
		stInstances.Output.MoveJogError
	THEN
		stCommands.SetJogMoveNegAxis1 := FALSE;
		stCommands.SetJogMoveNegAxis2 := FALSE;
		stCommands.SetJogMoveNegAxis3 := FALSE;
		stCommands.SetJogMoveNegAxis4 := FALSE;
		stCommands.SetJogMoveNegAxis5 := FALSE;
		stCommands.SetJogMoveNegAxis6 := FALSE;

		stCommands.SetJogMovePosAxis1 := FALSE;
		stCommands.SetJogMovePosAxis2 := FALSE;
		stCommands.SetJogMovePosAxis3 := FALSE;
		stCommands.SetJogMovePosAxis4 := FALSE;
		stCommands.SetJogMovePosAxis5 := FALSE;
		stCommands.SetJogMovePosAxis6 := FALSE;

		LastMode := eMode;
		eMode := E_WAITFORCOMMAND;
	END_IF

	IF fbMove.bAtSoftLimitMax THEN
		stCommands.SetJogMovePosAxis1 := FALSE;
		stCommands.SetJogMovePosAxis2 := FALSE;
		stCommands.SetJogMovePosAxis3 := FALSE;
		stCommands.SetJogMovePosAxis4 := FALSE;
		stCommands.SetJogMovePosAxis5 := FALSE;
		stCommands.SetJogMovePosAxis6 := FALSE;
	END_IF

	IF fbMove.bAtSoftLimitMin THEN
		stCommands.SetJogMoveNegAxis1 := FALSE;
		stCommands.SetJogMoveNegAxis2 := FALSE;
		stCommands.SetJogMoveNegAxis3 := FALSE;
		stCommands.SetJogMoveNegAxis4 := FALSE;
		stCommands.SetJogMoveNegAxis5 := FALSE;
		stCommands.SetJogMoveNegAxis6 := FALSE;
	END_IF


	STInstances.Input.MoveJogAxisNeg[1] := stCommands.SetJogMoveNegAxis1;
	STInstances.Input.MoveJogAxisNeg[2] := stCommands.SetJogMoveNegAxis2;
	STInstances.Input.MoveJogAxisNeg[3] := stCommands.SetJogMoveNegAxis3;
	STInstances.Input.MoveJogAxisNeg[4] := stCommands.SetJogMoveNegAxis4;
	STInstances.Input.MoveJogAxisNeg[5] := stCommands.SetJogMoveNegAxis5;
	STInstances.Input.MoveJogAxisNeg[6] := stCommands.SetJogMoveNegAxis6;
	
	STInstances.Input.MoveJogAxisPos[1] := stCommands.SetJogMovePosAxis1;
	STInstances.Input.MoveJogAxisPos[2] := stCommands.SetJogMovePosAxis2;
	STInstances.Input.MoveJogAxisPos[3] := stCommands.SetJogMovePosAxis3;
	STInstances.Input.MoveJogAxisPos[4] := stCommands.SetJogMovePosAxis4;
	STInstances.Input.MoveJogAxisPos[5] := stCommands.SetJogMovePosAxis5;
	STInstances.Input.MoveJogAxisPos[6] := stCommands.SetJogMovePosAxis6;

ELSE
	stInstances.Input.PowerEnable := TRUE;
END_IF
0  ,     FН           CallMoveToCandlePos ^M7U  
IF stCommands.SetReset THEN
	LastCandleState := eCandlePos;
	ECandlePos := E_CANDLE_IDLE;
	LastMode := eMode;
	eMode := E_WAITFORCOMMAND;
END_IF

CASE eCandlePos OF
	E_CANDLE_MoveJoint2:
		(*Move To Pregrasp Position and open Gripper *)

		fVelocity := 10;
		stInstances.Input.fPosition := stParams.fCandlePosition;
		fbMove.bSingleAxisIndex := 2;
		fbMove.bEnableSingleAxisMove := TRUE;
		fbMove.bExecuteMove := TRUE;

		IF fbMove.bError THEN
			fbMOVE.bExecuteMove := FALSE;
			LastCandleState := eCandlePos;
			eCandlePos := E_CANDLE_IDLE;
			eMode := E_WaitForCommand;
		ELSIF NOT fbMove.bMoveDone THEN
			LastCandleState := eCandlePos;
			eCandlePos := E_CANDLE_WaitMoveDone;
		END_IF

	E_CANDLE_MoveJoint3:
		(*Move To Pregrasp Position and open Gripper *)

		fVelocity := 10;
		stInstances.Input.fPosition := stParams.fCandlePosition;
		fbMove.bSingleAxisIndex := 3;
		fbMove.bEnableSingleAxisMove := TRUE;
		fbMove.bExecuteMove := TRUE;

		IF fbMove.bError THEN
			fbMOVE.bExecuteMove := FALSE;
			LastCandleState := eCandlePos;
			eCandlePos := E_CANDLE_IDLE;
			eMode := E_WaitForCommand;
		ELSIF NOT fbMove.bMoveDone THEN
			LastCandleState := eCandlePos;
			eCandlePos := E_CANDLE_WaitMoveDone;
		END_IF

	E_CANDLE_MoveJoint5:
		(*Move To Pregrasp Position and open Gripper *)

		fVelocity := 10;
		stInstances.Input.fPosition := stParams.fCandlePosition;
		fbMove.bSingleAxisIndex := 5;
		fbMove.bEnableSingleAxisMove := TRUE;
		fbMove.bExecuteMove := TRUE;

		IF fbMove.bError THEN
			fbMOVE.bExecuteMove := FALSE;
			LastCandleState := eCandlePos;
			eCandlePos := E_CANDLE_IDLE;
			eMode := E_WaitForCommand;
		ELSIF NOT fbMove.bMoveDone THEN
			LastCandleState := eCandlePos;
			eCandlePos := E_CANDLE_WaitMoveDone;
		END_IF

	E_CANDLE_MoveAll:
		(*Move To Pregrasp Position and open Gripper *)

		fVelocity := 10;
		stInstances.Input.fPosition := stParams.fCandlePosition;
		fbMove.bExecuteMove := TRUE;
		fbMove.bEnableSingleAxisMove := FALSE;


		IF fbMove.bError THEN
			fbMOVE.bExecuteMove := FALSE;
			LastCandleState := eCandlePos;
			eCandlePos := E_CANDLE_IDLE;
			eMode := E_WaitForCommand;
		ELSIF NOT fbMove.bMoveDone THEN
			LastCandleState := eCandlePos;
			eCandlePos := E_CANDLE_WaitMoveDone;
		END_IF

	E_CANDLE_WaitMoveDone:

		IF fbMove.bMoveDone THEN
			fbMove.bExecuteMove := FALSE;
			CASE LastCandleState OF
			E_CANDLE_MoveJoint2:
				LastCandleState := eCandlePos;
				eCandlePos := E_CANDLE_MoveJoint3;
			E_CANDLE_MoveJoint3:	
				LastCandleState := eCandlePos;
				eCandlePos := E_CANDLE_MoveJoint5;
			E_CANDLE_MoveJoint5:					
				fbMove.bExecuteMove := FALSE;
				LastCandleState := eCandlePos;
				eCandlePos := E_CANDLE_MoveAll;
			E_CANDLE_MoveAll:				
				fbMove.bExecuteMove := FALSE;
				LastCandleState := eCandlePos;
				eCandlePos := E_Candle_IDLE;
				eMode := E_WAITFORCOMMAND;
			END_CASE
		ELSIF fbMove.bError THEN
			fbMOVE.bExecuteMove := FALSE;
			LastCandleState := eCandlePos;
			eCandlePos := E_CANDLE_IDLE;
			eMode := E_WaitForCommand;
		END_IF

	E_Candle_IDLE:
		IF NOT stCommands.SetMoveToCandlePos OR
			fbMove.bIsMoving OR
			 fbMove.bAtCandlePos
		THEN
			(*bGripper := TRUE; (*Close Gripper*) *)
			stCommands.SetMoveToCandlePos := FALSE;
			LastMode := eMode;
			eMode  := E_WAITFORCOMMAND;
		ELSE
			bGripper := FALSE; (*Open Gripper*)
			stInstances.Input.fMaxVelocity := stParams.MaxVelocity;
			LastCandleState := eCandlePos;
			eCandlePos := E_CANDLE_MOVEJOINT2;
		END_IF

END_CASE5  , d d p           CallMoveToHome ^M7U1  IF NOT fbHome.bReferenceRestarted THEN

	IF eHomePos=E_HOME_IDLE THEN
		IF stTurnTableState.TurnTableGrasped
		OR stTurnTableState.InTrayArea THEN
			(*if turntable is grasped or gripper is in critical tray area start store turntable cycle*)
			LastMode := eMode;
			eMode := E_STORETURNTABLE;
			stCommands.SetMoveToHomePos := FALSE;
			stCommands.SetStoreTurntable := TRUE;
		ELSIF fbMove.bAtPreGraspFromFloorPos THEN
			(*start movement to home position from PreGraspFromFloor*)
			bGripper := TRUE;
			stInstances.Input.fMaxVelocity := 15;
			eHomePos := E_HOME_MoveArmOut;
			LastHomeState := E_HOME_IDLE;
		ELSIF fbMOVE.bAtPreGraspFromTablePos THEN
			(*start movement to home position from PreGraspFromTable*)
			bGripper := TRUE;
			stInstances.Input.fMaxVelocity := 15;
			eHomePos := E_HOME_MoveArmOut3;
			LastHomeState := E_HOME_IDLE;
		ELSE
			(*old movement to home position*)
			stInstances.Input.fMaxVelocity := stParams.MaxVelocity;
			IF fbMove.bStandStill THEN		(*Start Move just when Arm is actually not moving*)
				stInstances.Input.fPosition := stParams.fHomePosition;
				fbMove.bExecuteMove := TRUE;
				stCommands.SetMoveToHomePos := FALSE;
			END_IF

			IF (fbMOVE.bAtHomePos OR fbMove.bError OR fbMove.bIsMoving) THEN		(*If at desired position, or if error or is moving then go back to wait for command *)
				eMode := E_WAITFORCOMMAND;
				LastMode := E_MOVETOHOMEPOS;
				bGripper := FALSE; (* TRUE;	(*Close Gripper*)*)
				stCommands.SetMoveToHomePos := FALSE;
				fbMove.bExecuteMove := FALSE;
				fPosition := stInstances.Input.fPosition;
			END_IF
		END_IF
	ELSE
		CASE eHomePos OF
			E_HOME_IDLE:
				(*NOP0*);
			E_HOME_MoveArmOut3:
				stInstances.Input.fPosition := stParams.fMoveArmOut3;
				fbMove.bExecuteMove := TRUE;

				IF fbMove.bError THEN
					(*something went wrong*)
					fbMove.bExecuteMove := FALSE;
					LastHomeState := eHomePos;
					eHomePos := E_HOME_IDLE;
					LastMode := eMode;
					eMode := E_WAITFORCOMMAND;
					stCommands.SetMoveToHomePos := FALSE;
				ELSIF fbMove.bMoveDone
				AND fbMove.bAtMoveArmOutPos3 THEN
					(*movement finished*)
					fbMove.bExecuteMove := FALSE;
					LastHomeState := eHomePos;
					eHomePos := E_HOME_MoveArmOut2;
				END_IF
			E_HOME_MoveArmOut2:
				stInstances.Input.fPosition := stParams.fMoveArmOut2;
				fbMove.bExecuteMove := TRUE;

				IF fbMove.bError THEN
					(*something went wrong*)
					fbMove.bExecuteMove := FALSE;
					LastHomeState := eHomePos;
					eHomePos := E_HOME_IDLE;
					LastMode := eMode;
					eMode := E_WAITFORCOMMAND;
					stCommands.SetMoveToHomePos := FALSE;
				ELSIF fbMove.bMoveDone
				AND fbMove.bAtMoveArmOutPos2 THEN
					(*movement finished*)
					fbMove.bExecuteMove := FALSE;
					LastHomeState := eHomePos;
					eHomePos := E_HOME_MoveArmOut;
				END_IF
			E_HOME_MoveArmOut:
				stInstances.Input.fPosition := stParams.fMoveArmOut;
				fbMove.bExecuteMove := TRUE;

				IF fbMove.bError THEN
					(*something went wrong*)
					fbMove.bExecuteMove := FALSE;
					LastHomeState := eHomePos;
					eHomePos := E_HOME_IDLE;
					LastMode := eMode;
					eMode := E_WAITFORCOMMAND;
					stCommands.SetMoveToHomePos := FALSE;
				ELSIF fbMove.bMoveDone
				AND fbMove.bAtMoveArmOutPos THEN
					(*movement finished*)
					fbMove.bExecuteMove := FALSE;
					LastHomeState := eHomePos;
					eHomePos := E_HOME_HomePosition;
				END_IF
			E_HOME_HomePosition:
				stInstances.Input.fPosition := stParams.fHomePosition;
				fbMove.bExecuteMove := TRUE;

				IF fbMove.bError THEN
					(*something went wrong*)
					fbMove.bExecuteMove := FALSE;
					LastHomeState := eHomePos;
					eHomePos := E_HOME_IDLE;
					LastMode := eMode;
					eMode := E_WAITFORCOMMAND;
					stCommands.SetMoveToHomePos := FALSE;
				ELSIF fbMove.bMoveDone
				AND fbMove.bAtHomePos THEN
					(*movement finished*)
					bGripper := FALSE;
					fbMove.bExecuteMove := FALSE;
					LastHomeState := eHomePos;
					eHomePos := E_HOME_IDLE;
					stCommands.SetMoveToHomePos := FALSE;
				END_IF
		END_CASE
	END_IF

END_IFv   , в в оё           CallMoveToTray ^M7Ud  TON3(IN:= (*fbMove.bAtPreGraspTrayPos2*), PT:= T#1s);

IF stCommands.SetReset THEN
	LastTrayState := eTray;
	eTray := E_TRAY_IDLE;
	LastMode := eMode;
	eMode := E_WAITFORCOMMAND;
END_IF

CASE eTray OF
	E_TRAY_PREGRASP1:
		(*Move To Pregrasp Position 1*)
		fbMove.bExecuteMove	:=	TRUE;
		stInstances.Input.fPosition := stParams.fPreGraspTray1;
		stInstances.Input.fMaxVelocity := 15;
		bGripper := TRUE;

		IF fbMove.bError THEN
			fbMove.bExecuteMove := FALSE;
			stCommands.SetMoveToTray := FALSE;
			LastTrayState := eTray;
			eTray := E_TRAY_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;

		ELSIF fbMove.bMoveDone
		AND LastTrayState = E_TRAY_IDLE
		AND	fbMove.bAtPreGraspTrayPos1 THEN
			fbMove.bExecuteMove := FALSE;
			LastTrayState := eTray;
			eTray := E_TRAY_PREGRASP2;
		END_IF
		fPosition := stInstances.Input.fPosition;

	E_TRAY_PREGRASP2:
		(*Move To Pregrasp Position 2*)
		fbMove.bExecuteMove	:=	TRUE;
		stInstances.Input.fMaxVelocity := 10;
		stInstances.Input.fPosition := stParams.fPreGraspTray2;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			stCommands.SetMoveToTray := FALSE;
			LastTrayState := eTray;
			eTray := E_TRAY_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone THEN
			(*movement finished*)
			IF LastTrayState = E_TRAY_PREGRASP1
			AND	fbMove.bAtPreGraspTrayPos2 THEN
				fbMove.bExecuteMove := FALSE;
				TON3.IN := TRUE;
				LastTrayState := eTray;
				eTray := E_TRAY_FINALGRASP;
			ELSIF LastTrayState = E_TRAY_FINALGRASP
			AND	fbMove.bAtPreGraspTrayPos2 THEN
				fbMove.bExecuteMove := FALSE;
				LastTrayState := eTray;
				eTray := E_TRAY_PREGRASP3;
			END_IF

		END_IF
		fPosition := stInstances.Input.fPosition;

	E_TRAY_FINALGRASP:
		stInstances.Input.fPosition := stParams.fFinalGraspTray;
		stInstances.Input.fMaxVelocity := 5;
		fbMove.bExecuteMove	:=	TRUE;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			stCommands.SetMoveToTray := FALSE;
			LastTrayState := eTray;
			eTray := E_TRAY_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone
		AND fbMove.bAtFinalGraspTrayPos THEN
			fbMove.bExecuteMove := FALSE;
			LastTrayState := eTray;
			eTray := E_TRAY_PREGRASP2;
		END_IF

		IF TON3.Q THEN
			TON3.IN := FALSE;
			bGripper := FALSE; (* Open Gripper *)
		END_IF

		fPosition := stInstances.Input.fPosition;

	E_TRAY_PREGRASP3:
		(*Move To Pregrasp Position*)
		fbMove.bExecuteMove	:=	TRUE;
		stInstances.Input.fPosition := stParams.fPreGraspTray3;
		stInstances.Input.fMaxVelocity := 15;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			stCommands.SetMoveToTray := FALSE;
			LastTrayState := eTray;
			eTray := E_TRAY_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone
		AND fbMove.bAtPreGraspTrayPos3 THEN
			(*movement finished*)

			fbMove.bExecuteMove := FALSE;
			LastTrayState := eTray;
			eTray := E_TRAY_MOVETOHOMEPOS;
		END_IF
		fPosition := stInstances.Input.fPosition;


	E_TRAY_MOVETOHOMEPOS:
		stInstances.Input.fPosition := stParams.fHomePosition;
		fbMove.bExecuteMove	:=	TRUE;
		bGripper := TRUE;
		stInstances.Input.fMaxVelocity := stParams.MaxVelocity;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			stCommands.SetMoveToTray := FALSE;
			LastTrayState := eTray;
			eTray := E_TRAY_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone
		AND fbMove.bAtHomePos THEN
			fbMove.bExecuteMove := FALSE;
			bGripper :=FALSE;
			LastTrayState := eTray;
			eTray := E_TRAY_IDLE;
			stCommands.SetMoveToTray := FALSE;
		END_IF
		fPosition := stInstances.Input.fPosition;


	E_TRAY_IDLE:
		IF NOT stCommands.SetMoveToTray THEN
			stCommands.SetMoveToTray := FALSE;
			LastMode := eMode;
			eMode  := E_WAITFORCOMMAND;
		ELSE
			IF fbMove.bAtPreGraspFromFloorPos OR
				fbMove.bAtPreGraspFromTablePos
			THEN	(* Just start if in PreGraspFromFloor or in PreGraspFromTable Position*)
				stInstances.Input.fMaxVelocity := stParams.MaxVelocity;
				LastTrayState := eTray;
				eTray := E_TRAY_PREGRASP1;
			ELSE
				stCommands.SetMoveToTray := FALSE;
				LastMode := eMode;
				eMode  := E_WAITFORCOMMAND;
			END_IF
		END_IF

END_CASEw   ,   Ьў           CallPutLearningObjectToTray ^M7UП  (*TON3(IN:= fbMove.bAtPreGraspTrayPos2, PT:= T#2s);*)

CASE ePutObject OF
	E_OBJECT_PREGRASP1:
		(*Move To Pregrasp Position 1*)
		fbMove.bExecuteMove	:=	TRUE;
		stInstances.Input.fPosition := stParams.fPrePutObjectToTray1;
		stInstances.Input.fMaxVelocity := 15;
		bGripper := TRUE;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			LastPutObjectState := ePutObject;
			ePutObject := E_OBJECT_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone
		AND LastPutObjectState = E_OBJECT_IDLE
		AND	fbMove.bAtPrePutObjectToTrayPos1 THEN
			(*movement finished*)
			fbMove.bExecuteMove := FALSE;
			LastPutObjectState := ePutObject;
			ePutObject := E_OBJECT_PREGRASP2;
		END_IF
		fPosition := stInstances.Input.fPosition;

	E_OBJECT_PREGRASP2:
		(*Move To Pregrasp Position 2*)
		fbMove.bExecuteMove	:=	TRUE;
		stInstances.Input.fPosition := stParams.fPrePutObjectToTray2;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			LastPutObjectState := ePutObject;
			ePutObject := E_OBJECT_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone
		AND fbMove.bAtPrePutObjectToTrayPos2 THEN
			fbMove.bExecuteMove := FALSE;
			LastPutObjectState := ePutObject;
			ePutObject := E_OBJECT_FINALGRASP;
		END_IF
		fPosition := stInstances.Input.fPosition;

	E_OBJECT_FINALGRASP:
		stInstances.Input.fPosition := stParams.fFinalPutObjectToTray;
		fbMove.bExecuteMove	:=	TRUE;
		bGripper := FALSE; (* Open Gripper *)

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			LastPutObjectState := ePutObject;
			ePutObject := E_OBJECT_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone
		AND fbMove.bAtFinalPutObjectToTrayPos THEN
			(*movement finished*)
			fbMove.bExecuteMove := FALSE;
			LastPutObjectState := ePutObject;
			ePutObject := E_OBJECT_PREGRASP3;
		END_IF
		fPosition := stInstances.Input.fPosition;

	E_OBJECT_PREGRASP3:
		(*Move To Pregrasp Position*)
		fbMove.bExecuteMove	:=	TRUE;
		stInstances.Input.fPosition := stParams.fPrePutObjectToTray2;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			LastPutObjectState := ePutObject;
			ePutObject := E_OBJECT_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone
		AND fbMove.bAtPrePutObjectToTrayPos3 THEN
			(*movement finished*)

			fbMove.bExecuteMove := FALSE;
			LastPutObjectState := ePutObject;
			ePutObject := E_OBJECT_IDLE;
		END_IF
		fPosition := stInstances.Input.fPosition;

	E_OBJECT_IDLE:
		IF NOT stCommands.SetMoveToTray THEN
			stCommands.SetMoveToTray := FALSE;
			LastMode := eMode;
			eMode  := E_WAITFORCOMMAND;
		ELSE
			stInstances.Input.fMaxVelocity := stParams.MaxVelocity;
			LastPutObjectState := ePutObject;
			ePutObject := E_OBJECT_PREGRASP1;
		END_IF

END_CASEx   , № № ќ           CallStoreTurntable ^M7UO  TON2(IN:= fbMove.bAtFinalStoreTurntablePos, PT:=T#1s);

CASE eTurntable OF
	E_TURNTABLE_MOVEPREGRASP_1:
		(*Move To Prestore Position 1 *)
		stInstances.Input.fMaxVelocity := 10; (*stParams.MaxVelocity;*)
		IF LastTurntableState = E_TURNTABLE_IDLE THEN
			stInstances.Input.fPosition := stParams.fPreStoreTurntable1;
		ELSE
			stInstances.Input.fPosition := stParams.fPreGraspTurntable1;			
		END_IF

		fbMove.bExecuteMove := TRUE;

		IF fbMove.bError THEN
		(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE; (*Close Gripper*)
			LastTurntableState := eTurntable;
			eTurntable := E_TURNTABLE_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone THEN
		(*movement is finished*)
			IF LastTurntableState = E_TURNTABLE_IDLE
			AND	fbMove.bAtPreStoreTurntablePos1	THEN
				fbMove.bExecuteMove := FALSE;
				LastTurntableState := eTurntable;
				eTurntable := E_TURNTABLE_MOVEPREGRASP_2;
			ELSIF LastTurntableState = E_TURNTABLE_MOVEPREGRASP_2
			AND fbMove.bAtPreGraspTurntablePos1	THEN
				fbMove.bExecuteMove := FALSE;
				LastTurntableState := eTurntable;
				eTurntable := E_TURNTABLE_MOVETOHOMEPOS;
			END_IF
		END_IF
		fPosition := stInstances.Input.fPosition;

	E_TURNTABLE_MOVEPREGRASP_2:
		(*Move To Prestore Position 2 *)
		stInstances.Input.fMaxVelocity := 5;
		IF LastTurntableState = E_TURNTABLE_MOVEPREGRASP_1 THEN
			stInstances.Input.fPosition := stParams.fPreStoreTurntable2;
		ELSE
			stInstances.Input.fPosition := stParams.fPreGraspTurntable2;
		END_IF

		fbMove.bExecuteMove	:=	TRUE;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE; (*Close Gripper*)
			LastTurntableState := eTurntable;
			eTurntable := E_TURNTABLE_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMOVE.bMoveDone THEN
			(*movement finished*)
			IF (LastTurntableState = E_TURNTABLE_MOVEFINALGRASP
			OR NOT stTurnTableState.TurnTableGrasped)
			AND fbMove.bAtPreGraspTurntablePos2 THEN
				fbMove.bExecuteMove := FALSE;
				LastTurntableState := eTurntable;
				eTurntable := E_TURNTABLE_MOVEPREGRASP_1;
				(*reset flag that we are in critical area*)
				stTurnTableState.InTrayArea := FALSE;
			ELSIF LastTurntableState = E_TURNTABLE_MOVEPREGRASP_1
			AND fbMove.bAtPreStoreTurntablePos2	THEN
				(*prepared to put turntable into the tray*)
				fbMove.bExecuteMove := FALSE;
				LastTurntableState := eTurntable;
				eTurntable := E_TURNTABLE_MOVEFINALGRASP;
				(*set flag that we are going to enter critical area*)
				stTurnTableState.InTrayArea := TRUE;
			END_IF
		END_IF
		fPosition := stInstances.Input.fPosition;

	E_TURNTABLE_MOVEFINALGRASP:
		stInstances.Input.fMaxVelocity := 3;
		stInstances.Input.fPosition := stParams.fFinalStoreTurntable;

		fbMove.bExecuteMove	:=	TRUE;

		IF fbMove.bError THEN
			(*something went wrong*)
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE; (*Close Gripper*)
			LastTurntableState := eTurntable;
			eTurntable := E_TURNTABLE_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone THEN
			(*movement finished*)
			IF fbMove.bAtFinalStoreTurntablePos THEN
				bGripper := FALSE; (*Open Gripper*)
				stTurnTableState.TurnTableGrasped := FALSE; (*reset flag that we grasped turntable*)
				fbMove.bExecuteMove := FALSE;
				LastTurntableState := eTurntable;
				eTurntable := E_TURNTABLE_MOVEPREGRASP_2;
			END_IF
		END_IF
		fPosition := stInstances.Input.fPosition;

	E_TURNTABLE_MOVETOHOMEPOS:
		stInstances.Input.fMaxVelocity := stParams.MaxVelocity;
		stInstances.Input.fPosition := stParams.fHomePosition;
		fbMove.bExecuteMove	:=	TRUE;
		(*bGripper := TRUE;		(*Close Gripper*)*)

		IF fbMove.bError THEN
			fbMove.bExecuteMove := FALSE;
			bGripper := TRUE; (*Close Gripper*)
			LastTurntableState := eTurntable;
			eTurntable := E_TURNTABLE_IDLE;
			LastMode := eMode;
			eMode := E_WAITFORCOMMAND;
		ELSIF fbMove.bMoveDone THEN
			IF fbMove.bAtHomePos AND fbMove.bStandStill THEN
				fbMove.bExecuteMove := FALSE;
				bGripper := FALSE;
				LastTurntableState := eTurntable;
				eTurntable := E_TURNTABLE_IDLE;
				stCommands.SetStoreTurntable := FALSE;
			END_IF
		END_IF
		fPosition := stInstances.Input.fPosition;


	E_TURNTABLE_IDLE:
		IF NOT stCommands.SetStoreTurntable
		OR fbMove.bIsMoving THEN
			stCommands.SetStoreTurntable := FALSE;
			LastMode := eMode;
			eMode  := E_WAITFORCOMMAND;
		ELSE
			IF fbMove.bAtLearningPos THEN
			(*Just start if in learning position*)
				bGripper := TRUE; (*Close Gripper*)
				stInstances.Input.fMaxVelocity := stParams.MaxVelocity;
				LastTurntableState := eTurntable;
				eTurntable := E_TURNTABLE_MOVEPREGRASP_1;
			ELSIF stTurnTableState.TurnTableGrasped THEN
				(*we still have the turntable in gripper*)
				IF stTurnTableState.InTrayArea THEN
					(*we nearly have the turntable stored -> start movement to finalStorePos*)
					LastTurntableState := eTurntable;
					eTurntable := E_TURNTABLE_MOVEFINALGRASP;
				ELSE
					(*we are completely free -> do a normal store movement*)
					stInstances.Input.fMaxVelocity := stParams.MaxVelocity;
					LastTurntableState := eTurntable;
					eTurntable := E_TURNTABLE_MOVEPREGRASP_1;
				END_IF
			ELSIF stTurnTableState.InTrayArea THEN
				(*we are in tray area but have turntable not grasped -> retract from tray*)
				LastTurntableState := eTurntable;
				eTurntable := E_TURNTABLE_MOVEPREGRASP_2;
			ELSE
				stCommands.SetStoreTurntable := FALSE;
				LastMode := eMode;
				eMode  := E_WAITFORCOMMAND;
			END_IF
		END_IF

END_CASEy   , x x            CallWaitForCommand ^M7Ua  (*Implementation of Commands*)

IF stCommands.SetAbsolutePosition THEN
	(*Command:	Set Absolute Position*)
	stCommands.SetAbsolutePosition:=FALSE;
	fPosition := stCommands.SetAbsolutePositionValue;

ELSIF stCommands.SetStartAllAxisRef THEN
	(*Command: Start Homing All Axis*)
	LastMode := E_WAITFORCOMMAND;
	eMode := E_HOMING;

ELSIF stCommands.SetReset THEN
	(*Command: Reset*)
	LastMode := E_WAITFORCOMMAND;
	eMode := E_RESET;

ELSIF stCommands.SetEnableAllAxis THEN
	(*Command: Enable All Axis*)
	LastMode := E_WAITFORCOMMAND;
	eMode := E_ENABLEALLAXIS;

ELSIF stCommands.SetCloseGripper THEN
	(*Command: Close Gripper*)
	bGripper := TRUE;
	stCommands.SetCloseGripper := FALSE;

ELSIF stCommands.SetOpenGripper THEN
	(*Command: Open Gripper*)
	bGripper := FALSE;
	stCommands.SetOpenGripper := FALSE;

ELSIF stCommands.SetClearPosBuffer THEN
	(*Command: Clear Position Buffer*)
	REPEAT
		rxPositionBuffer.A_RemoveHead();
	UNTIL
		NOT rxPositionBuffer.bOk
	END_REPEAT
	stCommands.SetClearPosBuffer := FALSE;
	stCommands.PositionsForInterpolationReady := FALSE;

(*
ELSIF stCommands.SetEnableInterpolation THEN
	LastMode := eMode;
	eMode := E_INTERPOLATION;
*)

ELSIF stCommands.SetDisableAllAxis THEN
	(*Command: Disable All Axis*)
	LastMode := E_WAITFORCOMMAND;
	eMode := E_DISABLEALLAXIS;

ELSIF stCommands.SetJogMoveNegAxis1 OR
	stCommands.SetJogMovePosAxis1 OR
	stCommands.SetJogMoveNegAxis2 OR
	stCommands.SetJogMovePosAxis2 OR
	stCommands.SetJogMoveNegAxis3 OR
	stCommands.SetJogMovePosAxis3 OR
	stCommands.SetJogMoveNegAxis4 OR
	stCommands.SetJogMovePosAxis4 OR
	stCommands.SetJogMoveNegAxis5 OR
	stCommands.SetJogMovePosAxis5 OR
	stCommands.SetJogMoveNegAxis6 OR
	stCommands.SetJogMovePosAxis6
THEN
	LastMode := E_WAITFORCOMMAND;
	eMode := E_JOG;

ELSIF stCommands.SetAllPositionsToZero THEN
	LastMode := E_WAITFORCOMMAND;
	eMode := E_SETPOSTOZERO;

END_IF




IF F_CheckIfAllAxisHomed(Joint) AND NOT F_CheckIfAxisHasError(Joint) THEN

	IF eTurntable <> E_TURNTABLE_IDLE
	OR eTray <> E_TRAY_IDLE
	OR eFloor <> E_FLOOR_IDLE
	OR ePreFloor <> E_PRE_FLOOR_IDLE
	OR ePreTable <> E_PRE_TABLE_IDLE
	OR ePutObject <> E_OBJECT_IDLE
	OR eCandlePos <> E_CANDLE_IDLE THEN
		(*don't react on any commands as long as
		state machines are not idle*)
		;
	ELSIF  stCommands.SetStartMove THEN
		(*Command: Start Move:*)
		LastMode := E_WAITFORCOMMAND;
		eMode := E_MOVE;

	ELSIF stCommands.SetMoveToHomePos THEN
		(*Command: Move to home position*)
		LastMode := E_WAITFORCOMMAND;
		eMode := E_MOVETOHOMEPOS;

	ELSIF stCommands.SetMoveToCandlePos THEN
		LastMode := E_WAITFORCOMMAND;
		eMode := E_MOVETOCANDLEPOS;

	ELSIF stCommands.SetMoveToLearningPos THEN
		(*Command: MoveToLearningPos*)
		LastMode := E_WAITFORCOMMAND;
		eMode := E_MOVETOLEARNINGPOS;

	ELSIF stCommands.SetStoreTurntable THEN
		(*Command: MoveToLearningPos*)
		LastMode := E_WAITFORCOMMAND;
		eMode := E_STORETURNTABLE;

	ELSIF stCommands.SetMoveToTray THEN
		(*Command: MoveToTray*)
		LastMode := E_WAITFORCOMMAND;
		eMode := E_MOVETOTRAY;

	ELSIF stCommands.SetPutLearningObjectToTray THEN
		(*Command: MoveToTray*)
		LastMode := E_WAITFORCOMMAND;
		eMode := E_PUTOBJECTTOTRAY;

	ELSIF stCommands.SetTurnTurntableCW THEN
		LastMode := eMode;
		eMode := E_TURNTURNTABLECW;

	ELSIF stCommands.SetTurnTurntableCCW THEN
		LastMode := eMode;
		eMode := E_TURNTURNTABLECCW;

	ELSIF stCommands.SetEnableInterpolation THEN
		LastMode := eMode;
		eMode := E_INTERPOLATION;

	ELSIF stCommands.SetMoveGraspFromFloor THEN
		LastMode := eMode;
		eMode := E_MOVEGRASPFROMFLOOR;

	ELSIF stCommands.SetMovePreGraspFromFloor THEN
		LastMode := eMode;
		eMode := E_MOVEPREGRASPFROMFLOOR;

	ELSIF stCommands.SetMovePreGraspFromTable THEN
		LastMode := eMode;
		eMode := E_MOVEPREGRASPFROMTABLE;

	ELSE
		fbHome.bExecute := FALSE;
		fbMove.bExecuteMove := FALSE;
		fbMoveInterpolation.bExecuteInterpolation := FALSE;
		fbReset.bExecute := FALSE;
		STInstances.Input.SetPositionEnable := FALSE;
	END_IF
ELSE
	fbHome.bExecute := FALSE;
	STInstances.Input.SetPositionEnable := FALSE;
END_IF
Y  ,              Init ^M7U)  	bGripper := FALSE;

IF stCommands.ArmState.AT_HOME_POS THEN
	fPosition := stParams.fHomePosition;
ELSIF stCommands.ArmState.AT_LEARNING_POS THEN
	fPosition := stParams.fLearningPosition;
ELSIF stCommands.ArmState.AT_TURNTABLE_POS THEN
	fPosition := stParams.fFinalGraspTurntable;
ELSIF stCommands.ArmState.AT_TRAY_POS THEN
	fPosition := stParams.fFinalPutObjectToTray;
ELSIF stCommands.ArmState.AT_PREGRASPFROMFLOOR_POS THEN
	fPosition := stParams.fPreGraspFromFloor;
ELSIF stCommands.ArmState.AT_PREGRASPFROMTABLE_POS THEN
	fPosition := stParams.fPreGraspFromTable;
(*ELSIF stCommands.ArmState.AT_CCW_POS THEN
ELSIF stCommands.ArmState.AT_CW_POS THEN*)
ELSIF stCommands.ArmState.AT_CANDLE_POS THEN
	fPosition := stParams.fCandlePosition;
END_IF

stInstances.Input.fPosition := fPosition;z   , x x            ReadPLCStatus ^M7U  Joint[1].ReadStatus;
Joint[2].ReadStatus;
Joint[3].ReadStatus;
Joint[4].ReadStatus;
Joint[5].ReadStatus;
Joint[6].ReadStatus;

(*ACTUAL POSITION*)
stCommands.GetActualPos := stInstances.Output.ActualPosition;

(* Actual Arm State: *)
fbCheckState(Axis:= Joint);
             I  , А А іm           PRG_DataAccess ^M7U	^M7U      
berncut           PROGRAM PRG_DataAccess		(*Unterprogramm zum Lesen und Schreiben der XML Konfig Datei*)
VAR_INPUT
	bLoadCfg, bSaveCfg:	BOOL;
END_VAR
VAR
	FB_XmlSrvReadConfig: 	FB_XmlSrvRead;
	FB_XmlSrvWriteConfig: 	FB_XmlSrvWrite;
(*	FB_EventSetReadXML: 	FB_EventSet;
	FB_EventSetSaveXML: 	FB_EventSet;*)
	FE_LoadBusy: F_TRIG;
	FE_Save	:F_TRIG;
	(*FB_BlinkBak: FB_Blinktakt;*)
	FB_XmlSrvWriteConfigBak: FB_XmlSrvWrite;
	pathname: STRING(100);
END_VAR
VAR_OUTPUT
	bDoneLoadCfg:	BOOL;
	bDoneSaveCfg: BOOL;
END_VARN  (*-----------Lesen und schreiben der XML-Konfiguration-----------------*)

pathname := 'C:\Documents and Settings\Administrator\Desktop\HOBBIT\RobotSpecific\parameters.xml';

FB_XmlSrvWriteConfig(
	sNetId:= '',
	ePath:= PATH_GENERIC,
	nMode:= XMLSRV_ADDMISSING,
	pSymAddr:= ADR(stParams) ,
	cbSymSize:= SIZEOF(stParams),
	sFilePath:=pathname ,
	sXPath:= '/Config',
	bExecute:= bSaveCfg,
	tTimeout:=t#5s ,
	bBusy=> ,
	bError=> ,
	nErrId=> );

(*Bakup automatisch sichern*)

(*FB_BlinkBak(bEnable:=TRUE , PT:=t#15m , Q=> );*)

FB_XmlSrvWriteConfigBak(
	sNetId:= '',
	ePath:= PATH_GENERIC,
	nMode:= XMLSRV_ADDMISSING,
	pSymAddr:= ADR(stParams) ,
	cbSymSize:= SIZEOF(stParams),
	sFilePath:='C:\PLC\Config.bak' ,
	sXPath:= '/Config',
	bExecute:= (*FB_BlinkBak.Q*),
	tTimeout:=t#5s ,
	bBusy=> ,
	bError=> ,
	nErrId=> );


FB_XmlSrvReadConfig(
	sNetId:= ,
	ePath:=PATH_GENERIC ,
	nMode:= XMLSRV_SKIPMISSING  ,
	pSymAddr:=ADR(stParams) ,
	cbSymSize:=SIZEOF(stParams) ,
	sFilePath:=pathname ,
	sXPath:= '/Config' ,
	bExecute:=bLoadCfg,
	tTimeout:=t#5s ,
	bBusy=> ,
	bError=> ,
	nErrId=> );

FE_Save(clk:=FB_XmlSrvWriteConfig.bBusy);
IF FE_Save.Q AND NOT FB_XmlSrvWriteConfig.bError THEN
	bDoneSaveCfg := TRUE;
ELSIF NOT bSaveCfg THEN
	bDoneSaveCfg := FALSE;
END_IF

FE_LoadBusy(clk:=FB_XmlSrvReadConfig.bBusy);
IF FE_LoadBusy.Q THEN
	IF NOT FB_XmlSrvReadConfig.bError THEN
		bDoneLoadCfg:=TRUE;
	END_IF
ELSE
	bDoneLoadCfg:=FALSE;
END_IF
(*-------------------------------------Stіrungen------------------------------*)
(*FB_EventSetReadXML(
	bSetEvent:= FB_XmlSrvReadConfig.bError,
	tErrTrueTime:= ,
	bQuitEvent:= ,
	bQuitReq:=FALSE ,
	iEventClass:=8 ,
	EventId:= 8,
	SourceId:= 1,
	sNetID:= ,
	sVarFormat:= ,
	sValue:= DWORD_TO_STRING(FB_XmlSrvReadConfig.nErrId),
	bRmEvtSet=> );

FB_EventSetSaveXML(
	bSetEvent:= FB_XmlSrvWriteConfig.bError,
	tErrTrueTime:= ,
	bQuitEvent:= ,
	bQuitReq:=FALSE ,
	iEventClass:=8 ,
	EventId:= 9,
	SourceId:= 1,
	sNetID:= ,
	sVarFormat:= ,
	sValue:= DWORD_TO_STRING(FB_XmlSrvWriteConfig.nErrId),
	bRmEvtSet=> );*)               e   , x x         
   SCODE_CODE ^M7U	^M7U       §џ             FUNCTION SCODE_CODE : DWORD
(* Helper function: returns the lower word of error code *)
VAR_INPUT
	sc		: DWORD;
END_VAR


   SCODE_CODE := 16#FFFF AND sc;               {   ,   ЂЕ        O   TCPIPClient @      sRemoteHost ш     sRemotePort ш     eConnectionState ш   ш^M7U	^M7U      s e fat         Г  PROGRAM TCPIPClient
(* Programm to send information to the XPC
   when Status or Variables change *)
VAR
	fbApplication	: FB_ClientApplication := ( sRemoteHost:= REMOTE_IP_ADDRESS, nRemotePort:= CLIENTPORT, bDbg :=TRUE(* TRUE = enable debug output, FALSE = disable *)  );
	bEnable			: BOOL := TRUE;(* TRUE => enable client data exchange, FALSE => disable *)
	fbCloseAll		: FB_SocketCloseAll;
	bCloseAll		: BOOL := TRUE;
END_VAR  IF bCloseAll THEN (*On PLC reset or program download close all old (opened) connections *)
	bCloseAll := FALSE;
	fbCloseAll( bExecute:= TRUE );
ELSE
	fbCloseAll( bExecute:= FALSE );
END_IF

IF NOT fbCloseAll.bBusy THEN
	fbApplication( bEnable := bEnable );
END_IF               |   , в в оё           TCPIPServer H^M7U	^M7U      

	onct          PROGRAM TCPIPServer
(* Programm to send information to the XPC
   when requested *)
VAR
	sLocalHost	: STRING(15) 	:= LOCAL_IP_ADDRESS;(* Server address *)
	nLocalPort	: UDINT 		:= SERVERPORT;(* Server port number *)
	bEnable		: BOOL 		:= TRUE;(* TRUE => enable server data exchange, FALSE => disable *)
	hServer		: T_HSERVER;(* Server connection handle *)
	fbApplication	: FB_ServerApplication := ( bDbg:=FALSE );(* Application (connection) instances *)

	fbCloseAll	: FB_SocketCloseAll;
	bCloseAll	: BOOL := TRUE;

END_VARН  IF bCloseAll THEN(*On PLC reset or program download close all old (opened) connections *)
	bCloseAll := FALSE;
	rxPositionBuffer.A_Reset();

	(* Initialize server handle *)
	F_CreateServerHnd( 	sSrvNetID 	:= '',
						sLocalHost 	:= sLocalHost,
						nLocalPort	:= nLocalPort,
						nMode 		:= CONNECT_MODE_ENABLEDBG,(* Enable debug messages *)
						bEnable 		:= TRUE,(* TRUE = leave listener socket open, FALSE = close listener socket after last connection ist closed too *)
						hServer 		:= hServer );


	fbCloseAll( bExecute:= TRUE );
ELSE
	fbCloseAll( bExecute:= FALSE );
END_IF


IF NOT fbCloseAll.bBusy THEN
	fbApplication( hServer:= hServer, bEnable:= bEnable);
END_IF
                )  , Ц Ц            ARMSTATE ^M7U
    @    ^M7UQ   d                                                                                                          
    @          н = } (   џџџ     џџџ                                             @                           ѓџ        @
                       @                                                                                                           
    @          ч = } (     џџџ     џџџ                                            Actual Arm State @                          щџ       MS Sans Serif @                       @                                                                                                           
    @         F mE,  џџџ     џџџ                                             @                      4    ѓџ        @
                       @                                                                             	   16#00FF00                          
    @        № n     џ       џџџ                                 !   STCommands.ArmState.ARM_HAS_ERROR        @                      5    ѓџ        @
                       @                                                                                                           
    @         n ё        џџџ     џџџ                                            Arm Has Error @                      6    юџ       MS Sans Serif @                       @                                                                             	   16#00FF00                          
    @        № Њ г О   џ       џџџ                                    stcommands.ArmState.ARM_HOMED        @                      7    ѓџ        @
                       @                                                                                                           
    @         Њ ё г  О     џџџ     џџџ                                            Arm Homed @                      8    юџ       MS Sans Serif @                       @                                                                             	   16#00FF00                          
    @        № ц њ   џ       џџџ                                    stcommands.ArmState.ARM_STOPPED        @                      9    ѓџ        @
                       @                                                                                                           
    @         ц ё  њ     џџџ     џџџ                                            Arm Has Stopped @                      :    юџ       MS Sans Serif @                       @                                                                             	   16#00FF00                          
    @        № "K6  џ       џџџ                                 #   stcommands.ArmState.ARM_IN_POS_AREA        @                      ;    ѓџ        @
                       @                                                                                                           
    @         "ё K 6    џџџ     џџџ                                            Arm In Position Area @                      <    юџ       MS Sans Serif @                       @                                                                             	   16#00FF00                          
    @        № ^r  џ       џџџ                                 %   stcommands.ArmState.ARM_IN_TARGET_POS        @                      =    ѓџ        @
                       @                                                                                                           
    @         ^ё  r    џџџ     џџџ                                            Arm In Target Position @                      >    юџ       MS Sans Serif @                       @                                                                             	   16#00FF00                          
    @        № УЎ  џ       џџџ                                 #   stcommands.ArmState.ARM_IS_DISABLED        @                      ?    ѓџ        @
                       @                                                                                                           
    @         ё У Ў    џџџ     џџџ                                            Arm Disabled @                      @    юџ       MS Sans Serif @                       @                                                                             	   16#00FF00                          
    @        &n O :   џ       џџџ                                 !   stcommands.ArmState.ARM_IS_MOVING        @                      A    ѓџ        @
                       @                                                                                                           
    @        Jn  Г     џџџ     џџџ                                            Arm Is Moving @                      B    юџ       MS Sans Serif @                       @                                                                             	   16#00FF00                          
    @        &Њ Oг :О   џ       џџџ                                 %   stcommands.ArmState.ARM_SOFTLIMIT_MAX        @                      C    ѓџ        @
                       @                                                                                                           
    @        J  н ГО     џџџ     џџџ                                         $   Positive Software 
Limit Switch @                      D    юџ       MS Sans Serif @                       @                                                                             	   16#00FF00                          
    @        &ц O:њ   џ       џџџ                                 %   stcommands.ArmState.ARM_SOFTLIMIT_MIN        @                      E    ѓџ        @
                       @                                                                             	   16#00FF00                          
    @        &"OK:6  џ       џџџ                                    stcommands.ArmState.AT_HOME_POS        @                      G    ѓџ        @
                       @                                                                                                           
    @        J"KГ6    џџџ     џџџ                                            Arm At Home Position @                      H    юџ       MS Sans Serif @                       @                                                                             	   16#00FF00                          
    @        &^O:r  џ       џџџ                                 #   stcommands.ArmState.AT_LEARNING_POS        @                      I    ѓџ        @
                       @                                                                                                           
    @        J^Гr    џџџ     џџџ                                            Arm At Learning Position @                      J    юџ       MS Sans Serif @                       @                                                                             	   16#00FF00                          
    @        &OУ:Ў  џ       џџџ                                 %   stcommands.ArmState.GRIPPER_IS_CLOSED        @                      K    ѓџ        @
                       @                                                                                                           
    @        JУГЎ    џџџ     џџџ                                            Gripper Is Closed @                      L    юџ       MS Sans Serif @                       @                                                                                                           
    @        Jм Гњ     џџџ     џџџ                                         $   Negative Software 
Limit Switch @                      M    юџ       MS Sans Serif @                       @                                                                             	   16#00FF00                          
    @        № Ьѕр  џ       џџџ                                 !   stcommands.ArmState.AT_CANDLE_POS        @                      O    ѓџ        @
                       @                                                                                                           
    @         Ьё ѕ р    џџџ     џџџ                                            Arm in Candle Position @                      P    юџ       MS Sans Serif @                       @             џ   џџ   џ   џџ   џ џ џ РРР                                      (  , B B Ж           COMMANDS ^M7U
    @    ^M7Uk   d   I                                                                         	   16#00FF00                          
    @        
 6Е }_ Y  џ       џџџ                                 %   Main.fbmove.bAtFinalGraspFromFloorPos        @                      [    ѓџ        @
                       @                                                                                                           
    @        
 &Е m_ I  џџџ     џџџ                                             @                      W    ѓџ        @
                       @                                                                             	   16#00FF00                          
    @        Д Z _Ё 	}   џ       џџџ                                    Main.fbmove.bAtLearningPos        @                      S    ѓџ        @
                       @                                                                             	   16#00FF00                          
    @        Д   _ч 	У   џ       џџџ                                    stcommands.SetMoveToTray        @                      R    ѓџ        @
                       @                                                                             	   16#00FF00                          
    @        
   Е ч _ У   џ       џџџ                                    stcommands.SetStoreTurntable        @                      Q    ѓџ        @
                       @                                                                             	   16#00FF00                          
    @        Д ц _-		  џ       џџџ                                    Main.fbmove.bAtTurntableCCWPos        @                      P    ѓџ        @
                       @                                                                                                           
    @        Д &_m	I  џџџ     џџџ                                             @                      K    ѓџ        @
                       @                                                                             	   16#00FF00                          
    @        Ьcљя  џ       џџџ                                 #   stCommands.ArmState.ARM_IS_DISABLED        @                      I    ѓџ        @
                       @                                                                             	   16#00FF00                          
    @        vЬIпя  џ       џџџ                                    stCommands.SetReset        @                      +    ѓџ        @
                       @                                                                             	   16#00FF00                          
    @        |cУљ  џ       џџџ                                 '   NOT stCommands.ArmState.ARM_IS_DISABLED        @                          ѓџ        @
                       @                                                                             	   16#00FF00                          
    @        v|IУп  џ       џџџ                                 %   stCommands.ArmState.ARM_IN_TARGET_POS        @                          ѓџ        @
                       @                                                                             	   16#00FF00                          
    @        Тmc?  џ       џџџ                                    Main.fbhome.bHomingBusy        @                          ѓџ        @
                       @                                                                             	   16#00FF00                          
    @        
 
 Е Q _ -   џ       џџџ                                 )   NOT stCommands.ArmState.GRIPPER_IS_CLOSED        @                          ѓџ        @
                       @                                                                                                         
    @        +Йп    @                     Start Move @ШШШ     ммм             @        ѓџ        @
    stcommands.SetStartMove                 @                                                                                                            
    @          Ћ G _ -     @                 "   Open Gripper @ШШШ     ммм             @        ѓџ        @
    stCommands.SetOpenGripper                 @                                                                                                            
    @        Ь&cY?    @                 %   Start Reference @ШШШ     ммм             @        ѓџ        @
    stcommands.SetStartAllAxisRef                 @                                                                                                            
    @        ЎEЙљ    @                 %   Enable All Axis @ШШШ     ммм             @    
    ѓџ        @
    stcommands.SetEnableAllAxis                 @                                                                                                            
    @        ЎжE	љя    @                 &   Disable All Axis @ШШШ     ммм             @        ѓџ        @
    stcommands.SetDisableAllAxis                 @                                                                                                              
    @        v
 IiпЙ    џ@     џџџ                                             @                          ѓџ        @
                       @                                                                                                     -91   91
    @        ЦF 5e §U   џџџ     џџџ                                        Main.fPosition[1]   %.2f @                          ѓџ        @
                      @                                                                                                         
    @        ж+	пя    @                    Reset @ШШШ     ммм             @        ѓџ        @
    stcommands.SetReset                 @                                                                                                              
    @        F Чe ЃU      џ@     џџџ                                         
   Axis 1 @                          ѓџ        @
                       @                                                                                                           
    @        n Ч Ѓ}     џџџ     џџџ                                         
   Axis 2 @                          ѓџ        @
                       @                                                                                                           
    @         ЧЕ ЃЅ     џџџ     џџџ                                         
   Axis 3 @                          ѓџ        @
                       @                                                                                                           
    @        О Чн ЃЭ     џџџ     џџџ                                         
   Axis 4 @                          ѓџ        @
                       @                                                                                                           
    @        ц ЧЃѕ     џџџ     џџџ                                         
   Axis 5 @                          ѓџ        @
                       @                                                                                                           
    @        Ч-Ѓ    џџџ     џџџ                                         
   Axis 6 @                          ѓџ        @
                       @                                                                                                           
    @        v
 I3 п     џџџ     џџџ                                            New Position @                           щџ       MS Sans Serif @                       @                                                                                                     -90   90
    @        Цn 5 §}   џџџ     џџџ                                        Main.fPosition[2]   %.2f @                      !    ѓџ        @
                      @                                                                                                     -35   120
    @        Ц 5Е §Ѕ   џџџ     џџџ                                        Main.fPosition[3]   %.2f @                      "    ѓџ        @
                      @                                                                                                     -170   170
    @        ЦО 5н §Э   џџџ     џџџ                                        Main.fPosition[4]   %.2f @                      #    ѓџ        @
                      @                                                                                                     -50   130
    @        Цц 5§ѕ   џџџ     џџџ                                        Main.fPosition[5]   %.2f @                      $    ѓџ        @
                      @                                                                                                     -170   170
    @        Ц5-§  џџџ     џџџ                                        Main.fPosition[6]   %.2f @                      %    ѓџ        @
                      @                                                                             	   16#00FF00                          
    @        
 Z Е Ё _ }   џ       џџџ                                    Main.fbmove.bAtHomePos        @                      ,    ѓџ        @
                       @                                                                                                         
    @         d Ћ  _ }     @                 -   Move To 
Home Position @ШШШ     ммм             @    -    ѓџ        @
    stcommands.SetMoveToHomePos                 @                                                                                                            
    @        О d U 	}     @                 0   Move To
Learning Position @ШШШ     ммм             @    .    ѓџ        @
    stcommands.SetMoveToLearningPos                 @                                                                                                            
    @         Њ Ћ н _ У     @                 %   Store Turntable @ШШШ     ммм             @    1    ѓџ        @
    stcommands.SetStoreTurntable                 @                                                                                	   16#00FF00                          
    @        
 ц Е -_ 	  џ       џџџ                                    Main.fbmove.bAtTurntableCWPos        @                      2    ѓџ        @
                       @                                                                                                         
    @         № Ћ #_ 	    @                 '   Turn Turntable CW @ШШШ     ммм             @    3    ѓџ        @
    stcommands.SetTurnTurntableCW                 @                                                                                                            
    @        О № U#		    @                 (   Turn Turntable CCW @ШШШ     ммм             @    4    ѓџ        @
    stcommands.SetTurnTurntableCCW                 @                                                                                	   16#00FF00                          
    @        lcС?  џ       џџџ                                    stcommands.ArmState.ARM_STOPPED        @                      5    ѓџ        @
                       @                                                                                                         
    @        v&YС?    @                    Stop Arm @ШШШ     ммм             @    6    ѓџ        @
    stcommands.SetStopArm                 @                                                                                                              
    @        Д &_m	I  џџџ     џџџ                                             @                      7    ѓџ        @
                       @                                                                                                         
    @        О 0Uc	I    @                 *   Enable Interpolation @ШШШ     ммм             @    8    ѓџ        @
 !   stcommands.SetEnableInterpolation                 @                                                                                	   16#00FF00                          
    @        Д 
 _Q 	-   џ       џџџ                                 %   stCommands.ArmState.GRIPPER_IS_CLOSED        @                      9    ѓџ        @
                       @                                                                                                         
    @        О  UG 	-     @                 #   Close Gripper @ШШШ     ммм             @    :    ѓџ        @
    stCommands.SetCloseGripper                 @                                                                                                              
    @        
 c7љ     џџ     џџџ                                             @                      ;    ѓџ        @
                       @                                                                                                     -90   90
    @        рF Oe U   џџџ     џџџ                                        Main.Joint[1].NcToPlc.ActPos   %.2f @                      <    ѓџ        @
                      @                                                                                                           
    @        F сe НU     џџџ     џџџ                                         
   Axis 1 @                      =    ѓџ        @
                       @                                                                                                           
    @        n с Н}     џџџ     џџџ                                         
   Axis 2 @                      >    ѓџ        @
                       @                                                                                                           
    @         сЕ НЅ     џџџ     џџџ                                         
   Axis 3 @                      ?    ѓџ        @
                       @                                                                                                           
    @        О сн НЭ     џџџ     џџџ                                         
   Axis 4 @                      @    ѓџ        @
                       @                                                                                                           
    @        ц сНѕ     џџџ     џџџ                                         
   Axis 5 @                      A    ѓџ        @
                       @                                                                                                           
    @        с-Н    џџџ     џџџ                                         
   Axis 6 @                      B    ѓџ        @
                       @                                                                                                           
    @        
 c3 љ     џџџ     џџџ                                            Actual Position @                      C    щџ       MS Sans Serif @                       @                                                                                                     -90   90
    @        рn O }   џџџ     џџџ                                        Main.Joint[2].NcToPlc.ActPos   %.2f @                      D    ѓџ        @
                      @                                                                                                     -90   90
    @        р OЕ Ѕ   џџџ     џџџ                                        Main.Joint[3].NcToPlc.ActPos   %.2f @                      E    ѓџ        @
                      @                                                                                                     -90   90
    @        рО Oн Э   џџџ     џџџ                                        Main.Joint[4].NcToPlc.ActPos   %.2f @                      F    ѓџ        @
                      @                                                                                                     -90   90
    @        рц Oѕ   џџџ     џџџ                                        Main.Joint[5].NcToPlc.ActPos   %.2f @                      G    ѓџ        @
                      @                                                                                                     -90   90
    @        рO-  џџџ     џџџ                                        Main.Joint[6].NcToPlc.ActPos   %.2f @                      H    ѓџ        @
                      @                                                                                                         
    @        О Њ Uн 	У     @                 "   Move To Tray @ШШШ     ммм             @    O    ѓџ        @
    stcommands.SetMoveToTray                 @                                                                                                            
    @         @Ћ s_ Y    @                 -   Move 
Grasp From Floor @ШШШ     ммм             @    T    ѓџ        @
     stcommands.SetMoveGraspFromFloor                 @                                                                                                            
    @         0Ћ c_ I    @                 0   Set All Positions to
Zero @ШШШ     ммм             @    U    ѓџ        @
         stCommands.SetAllPositionsToZero             @                                                                                                              
    @        6ЧUЃE    џџџ     џџџ                                            Velocity @                      \    ѓџ        @
                       @                                                                                                     0   20
    @        Ц65U§E  џџџ     џџџ                                     
   .fVelocity   %.2f @                      ]    ѓџ        @
                      @                                                                             	   16#00FF00                          
    @        Д 6_}	Y  џ       џџџ                                 #   Main.fbmove.bAtPreGraspFromFloorPos        @                      ^    ѓџ        @
                       @                                                                                                         
    @        О @Us	Y    @                 1   Move Pre 
Grasp From Floor @ШШШ     ммм             @    _    ѓџ        @
 #   stcommands.SetMovePreGraspFromFloor                 @                                                                                	   16#00FF00                          
    @        
 Е Э_ Љ  џ       џџџ                                 &   Main.fbmove.bAtFinalPutObjectToTrayPos        @                      b    ѓџ        @
                       @                                                                                                         
    @         Ћ У_ Љ    @                 2   Put Learning Object
To Tray @ШШШ     ммм             @    c    ѓџ        @
 %   stcommands.SetPutLearningObjectToTray                 @                                                                                	   16#00FF00                          
    @        Д _Э	Љ  џ       џџџ                                 #   Main.fbmove.bAtPreGraspFromTablePos        @                      f    ѓџ        @
                       @                                                                                                         
    @        О UУ	Љ    @                 1   Move Pre 
Grasp From Table @ШШШ     ммм             @    g    ѓџ        @
 #   stcommands.SetMovePreGraspFromTable                 @                                                                                	   16#00FF00                          
    @        
 жЕ _ љ  џ       џџџ                                    Main.fbmove.bAtCandlePos        @                      h    ѓџ        @
                       @                                                                                                         
    @         рЋ _ љ    @                 -   Move to Candle position @ШШШ     ммм             @    i    ѓџ        @
    stcommands.SetMoveToCandlePos                 @                џ   џџ   џ   џџ   џ џ џ РРР                                         , < < H[           PROGRAMSTATES ^M7U
    @    ^M7U   d                                                                                                          
    @        x њ EU^'  џџџ     џџџ                                             @                          ѓџ        @
                       @                                                                                                           
    @        x   Eћ ^Э   џџџ     џџџ                                             @                          ѓџ        @
                       @                                                                                                           
    @        x 
 EЁ ^U   џџџ     џџџ                                             @                          ѓџ        @
                       @                                                                                                           
    @        ,Њ ё ЄЭ   џџџ     џџџ                                         TCPIPClient.fbApplication.eState   %s @                          ѓџ        @
                      @                                                                                                           
    @        , [ Є7   џџџ     џџџ                                     
   Main.eMode   %s @                          ѓџ        @
                      @                                                                                                           
    @        ,KЄ'  џџџ     џџџ                                         TCPIPServer.fbApplication.eState   %s @                          ѓџ        @
                      @                                                                                                           
    @        x  #[ Э 7     џџџ     џџџ                                            Main STATE @                          щџ       MS Sans Serif @                       @                                                                                                           
    @        x Њ -ё в Э     џџџ     џџџ                                            Client STATE @                          щџ       MS Sans Serif @                       @                                                                                                           
    @        x -Kв '    џџџ     џџџ                                            Server STATE @                          щџ       MS Sans Serif @                       @                                                                                                           
    @         P - с s     џџџ     џџџ                                            Last STATE @                          яџ       MS Sans Serif @                       @                                                                                                           
    @        ,d  Єx   џџџ     џџџ                                        Main.LastMode   %s @                          ѓџ        @
                      @                                                                                                           
    @        @ЄыЭИ  џџџ     џџџ                                        .REMOTE_IP_ADDRESS   %s @                          ѓџ        @
                      @                                                                                                           
    @        @rы  џџџ     џџџ                                        .LOCAL_IP_ADDRESS   %s @                          ѓџ        @
                       @                                                                                                           
    @          |#с     џџџ     џџџ                                            IP Address CX: @                          яџ       MS Sans Serif @                       @                                                                                                           
    @          Є#Ум Ў    џџџ     џџџ                                            IP Address XPC: @                          яџ       MS Sans Serif @                       @             џ   џџ   џ   џџ   џ џ џ РРР                                      §џџџ, в в оё         &   TcUtilities.lib 10.1.13 21:12:12 @яP!   TcBase.lib 14.5.09 13:14:08 @ §J#   TcSystem.lib 16.1.14 20:38:48 @8'иR%   TcBaseMath.lib 27.7.04 13:07:56 @7A!   TcMath.lib 23.9.04 16:15:30 @кRA    TcMC2.lib 14.7.14 12:34:46 @FВУS"   STANDARD.LIB 5.6.98 13:03:02 @fаw5   TcpIp.lib*2.2.15 14:33:03 @nЯT(   TcSocketHelper.lib*2.2.15 14:33:03 @nЯT3   Hella.Automation.Tools-00.lib*2.2.15 14:33:03 @nЯT!   TcSUPS.lib 22.3.10 14:59:22 @ЊiЇK'   TcXmlDataSrv.lib*29.9.06 16:13:00 @ь)E/  	  ARG_TO_CSVFIELD @?      ADSDATATYPEID       E_AmsLoggerMode    	   E_ArgType       E_DbgContext       E_DbgDirection       E_EnumCmdType       E_FileRBufferCmd       E_HashPrefixTypes       E_MIB_IF_Type       E_NumGroupTypes       E_PersistentMode       E_PrefixFlagParam       E_RegValueType       E_RouteTransportType    
   E_SBCSType       E_ScopeServerState       E_TimeZoneID       E_TypeFieldParam       E_UTILITIES_ERRORCODES       OTSTRUCT       PROFILERSTRUCT       REMOTEPC       REMOTEPCINFOSTRUCT       ST_AmsFindFileSystemEntry       ST_AmsGetTimeZoneInformation       ST_AmsLoggerReq       ST_AmsRouteEntry       ST_AmsRouteEntryHead       ST_AmsRouterInfoEntry       ST_AmsRouteSystemEntry       ST_AmsStartProcessReq       ST_AmsSymbolInfoEntry       ST_DeviceIdentification       ST_DeviceIdentificationEx       ST_FileAttributes       ST_FileRBufferHead       ST_FindFileEntry       ST_FormatParameters       ST_HKeySrvRead       ST_HKeySrvWrite       ST_IP_ADAPTER_INFO       ST_IP_ADDR_STRING       ST_IPAdapterHwAddr       ST_IPAdapterInfo       ST_SBCSTable    #   ST_ScopeServerRecordModeDescription       ST_TcRouterStatusInfo       ST_TimeZoneInformation       SYMINFO_BUFFER       SYMINFOSTRUCT       T_Arg    
   T_FILETIME       T_FIX16    
   T_FloatRec       T_HashTableEntry       T_HHASHTABLE       T_HLINKEDLIST       T_HUGE_INTEGER       T_LARGE_INTEGER       T_LinkedListEntry       T_UHUGE_INTEGER       T_ULARGE_INTEGER    
   TIMESTRUCT                  BCD_TO_DEC @           BE128_TO_HOST @          BE16_TO_HOST @          BE32_TO_HOST @          BE64_TO_HOST @          BYTEARR_TO_MAXSTRING @          CSVFIELD_TO_ARG @          CSVFIELD_TO_STRING @          DATA_TO_HEXSTR @          DCF77_TIME @          DCF77_TIME_EX @          DEC_TO_BCD @           DEG_TO_RAD @           DINT_TO_DECSTR @          DT_TO_FILETIME @          DT_TO_SYSTEMTIME @           DWORD_TO_BINSTR @          DWORD_TO_DECSTR @          DWORD_TO_HEXSTR @          DWORD_TO_LREALEX @          DWORD_TO_OCTSTR @          F_ARGCMP @          F_ARGCPY @          F_ARGIsZero @          F_BIGTYPE @          F_BOOL @          F_BYTE @           F_BYTE_TO_CRC16_CCITT @          F_CheckSum16 @           F_CRC16_CCITT @           F_CreateHashTableHnd @          F_CreateLinkedListHnd @          F_DATA_TO_CRC16_CCITT @          F_DINT @           F_DWORD @           F_FormatArgToStr @          F_GetDayOfMonthEx @          F_GetDayOfWeek @          F_GetDOYOfYearMonthDay @          F_GetFloatRec @          F_GetMaxMonthDays @          F_GetMonthOfDOY @          F_GetVersionTcUtilities @           F_GetWeekOfTheYear @          F_HUGE @          F_INT @           F_LARGE @          F_LREAL @           F_LTrim @          F_REAL @           F_RTrim @          F_SINT @           F_STRING @           F_SwapReal @           F_SwapRealEx @          F_ToLCase @          F_ToUCase @          F_TranslateFileTimeBias @          F_UDINT @           F_UHUGE @          F_UINT @           F_ULARGE @          F_USINT @           F_WORD @           F_YearIsLeapYear @          FB_AddRouteEntry @          FB_AmsLogger @          FB_BasicPID @           FB_BufferedTextFileWriter @       '   FB_BufferedTextFileWriter.A_Reset @          FB_ConnectScopeServer @          FB_CSVMemBufferReader @          FB_CSVMemBufferWriter @          FB_DbgOutputCtrl @          FB_DbgOutputCtrl.A_Log @          FB_DbgOutputCtrl.A_LogHex @          FB_DbgOutputCtrl.A_Reset @          FB_DisconnectScopeServer @          FB_EnumFindFileEntry @          FB_EnumFindFileList @          FB_EnumRouteEntry @          FB_EnumStringNumbers @          FB_FileRingBuffer @       !   FB_FileRingBuffer.A_AddTail @          FB_FileRingBuffer.A_Close @           FB_FileRingBuffer.A_Create @       !   FB_FileRingBuffer.A_GetHead @          FB_FileRingBuffer.A_Open @       $   FB_FileRingBuffer.A_RemoveHead @          FB_FileRingBuffer.A_Reset @       &   FB_FileTimeToTzSpecificLocalTime @       .   FB_FileTimeToTzSpecificLocalTime.A_Reset @          FB_FormatString @           FB_GetAdaptersInfo @           FB_GetDeviceIdentification @       "   FB_GetDeviceIdentificationEx @          FB_GetHostAddrByName @          FB_GetHostName @          FB_GetLocalAmsNetId @          FB_GetRouterStatusInfo @          FB_GetTimeZoneInformation @          FB_HashTableCtrl @          FB_HashTableCtrl.A_Add @       !   FB_HashTableCtrl.A_GetFirst @       )   FB_HashTableCtrl.A_GetIndexAtPosPtr @           FB_HashTableCtrl.A_GetNext @          FB_HashTableCtrl.A_Lookup @          FB_HashTableCtrl.A_Remove @       "   FB_HashTableCtrl.A_RemoveAll @       $   FB_HashTableCtrl.A_RemoveFirst @          FB_HashTableCtrl.A_Reset @          FB_LinkedListCtrl @       &   FB_LinkedListCtrl.A_AddHeadValue @       &   FB_LinkedListCtrl.A_AddTailValue @       "   FB_LinkedListCtrl.A_FindNext @       "   FB_LinkedListCtrl.A_FindPrev @       !   FB_LinkedListCtrl.A_GetHead @       *   FB_LinkedListCtrl.A_GetIndexAtPosPtr @       !   FB_LinkedListCtrl.A_GetNext @       !   FB_LinkedListCtrl.A_GetPrev @       !   FB_LinkedListCtrl.A_GetTail @       )   FB_LinkedListCtrl.A_RemoveHeadValue @       )   FB_LinkedListCtrl.A_RemoveTailValue @       -   FB_LinkedListCtrl.A_RemoveValueAtPosPtr @          FB_LinkedListCtrl.A_Reset @       *   FB_LinkedListCtrl.A_SetValueAtPosPtr @          FB_LocalSystemTime @          FB_MemBufferMerge @          FB_MemBufferSplit @          FB_MemRingBuffer @           FB_MemRingBuffer.A_AddTail @           FB_MemRingBuffer.A_GetHead @       #   FB_MemRingBuffer.A_RemoveHead @          FB_MemRingBuffer.A_Reset @          FB_MemRingBufferEx @       "   FB_MemRingBufferEx.A_AddTail @       #   FB_MemRingBufferEx.A_FreeHead @       &   FB_MemRingBufferEx.A_GetFreeSize @       "   FB_MemRingBufferEx.A_GetHead @           FB_MemRingBufferEx.A_Reset @          FB_MemStackBuffer @          FB_MemStackBuffer.A_Pop @          FB_MemStackBuffer.A_Push @          FB_MemStackBuffer.A_Reset @          FB_MemStackBuffer.A_Top @          FB_RegQueryValue @           FB_RegSetValue @           FB_RemoveRouteEntry @           FB_ResetScopeServerControl @          FB_SaveScopeServerData @          FB_ScopeServerControl @          FB_SetTimeZoneInformation @          FB_StartScopeServer @          FB_StopScopeServer @          FB_StringRingBuffer @       #   FB_StringRingBuffer.A_AddTail @       #   FB_StringRingBuffer.A_GetHead @       &   FB_StringRingBuffer.A_RemoveHead @       !   FB_StringRingBuffer.A_Reset @       (   FB_SystemTimeToTzSpecificLocalTime @       0   FB_SystemTimeToTzSpecificLocalTime.A_Reset @          FB_TextFileRingBuffer @       %   FB_TextFileRingBuffer.A_AddTail @       #   FB_TextFileRingBuffer.A_Close @       "   FB_TextFileRingBuffer.A_Open @       #   FB_TextFileRingBuffer.A_Reset @       (   FB_TranslateLocalTimeToUtcByZoneID @       0   FB_TranslateLocalTimeToUtcByZoneID.A_Reset @       (   FB_TranslateUtcToLocalTimeByZoneID @       0   FB_TranslateUtcToLocalTimeByZoneID.A_Reset @       &   FB_TzSpecificLocalTimeToFileTime @       .   FB_TzSpecificLocalTimeToFileTime.A_Reset @       (   FB_TzSpecificLocalTimeToSystemTime @       0   FB_TzSpecificLocalTimeToSystemTime.A_Reset @          FB_WritePersistentData @          FILETIME_TO_DT @          FILETIME_TO_SYSTEMTIME @          FIX16_TO_LREAL @          FIX16_TO_WORD @          FIX16Add @          FIX16Align @          FIX16Div @          FIX16Mul @          FIX16Sub @          GetRemotePCInfo @           HEXSTR_TO_DATA @          HOST_TO_BE128 @          HOST_TO_BE16 @          HOST_TO_BE32 @          HOST_TO_BE64 @          INT64_TO_LREAL @          Int64Add64 @          Int64Add64Ex @          Int64Cmp64 @          Int64Div64Ex @          Int64IsZero @          Int64Negate @          Int64Not @          Int64Sub64 @          IsFinite @          LARGE_INTEGER @          LARGE_TO_ULARGE @          LREAL_TO_FIX16 @          LREAL_TO_FMTSTR @          LREAL_TO_INT64 @          LREAL_TO_UINT64 @          MAXSTRING_TO_BYTEARR @          NT_AbortShutdown @           NT_GetTime @           NT_Reboot @           NT_SetLocalTime @          NT_SetTimeToRTCTime @           NT_Shutdown @           NT_StartProcess @           OTSTRUCT_TO_TIME @           PBOOL_TO_BOOL @          PBYTE_TO_BYTE @          PDATE_TO_DATE @          PDINT_TO_DINT @          PDT_TO_DT @          PDWORD_TO_DWORD @          PHUGE_TO_HUGE @          PINT_TO_INT @          PLARGE_TO_LARGE @          PLC_ReadSymInfo @           PLC_ReadSymInfoByName @           PLC_ReadSymInfoByNameEx @           PLC_Reset @           PLC_Start @           PLC_Stop @           PLREAL_TO_LREAL @          PMAXSTRING_TO_MAXSTRING @          PREAL_TO_REAL @          Profiler @           PSINT_TO_SINT @          PSTRING_TO_STRING @          PTIME_TO_TIME @          PTOD_TO_TOD @          PUDINT_TO_UDINT @          PUHUGE_TO_UHUGE @          PUINT64_TO_UINT64 @          PUINT_TO_UINT @          PULARGE_TO_ULARGE @          PUSINT_TO_USINT @          PWORD_TO_WORD @          RAD_TO_DEG @           ROUTETRANSPORT_TO_STRING @       	   RTC @          RTC_EX @          RTC_EX2 @          ScopeASCIIExport @           ScopeExit @          ScopeGetRecordLen @           ScopeGetState @           ScopeLoadFile @           ScopeManualTrigger @           ScopeSaveAs @          ScopeSetOffline @           ScopeSetOnline @           ScopeSetRecordLen @           ScopeViewExport @           STRING_TO_CSVFIELD @          STRING_TO_SYSTEMTIME @          STRING_TO_UINT64 @          SYSTEMTIME_TO_DT @           SYSTEMTIME_TO_FILETIME @          SYSTEMTIME_TO_STRING @          TC_Config @          TC_CpuUsage @           TC_Restart @           TC_Stop @           TC_SysLatency @           TIME_TO_OTSTRUCT @           UInt32x32To64 @          UINT64_TO_LREAL @          UINT64_TO_STRING @          UInt64Add64 @          UInt64Add64Ex @          UInt64And @          UInt64Cmp64 @          UInt64Div16Ex @          UInt64Div64 @          UInt64Div64Ex @          UInt64isZero @          UInt64Limit @          UInt64Max @          UInt64Min @          UInt64Mod64 @          UInt64Mul64 @          UInt64Mul64Ex @          UInt64Not @          UInt64Or @          UInt64Rol @          UInt64Ror @          UInt64Shl @          UInt64Shr @          UInt64Sub64 @          UInt64Xor @          ULARGE_INTEGER @          ULARGE_TO_LARGE @          WORD_TO_FIX16 @          WritePersistentData @           ѓ	  Global_Variables @V      DEFAULT_CSV_FIELD_DOUBLE_QUOTE"@     MAX_REMOTE_PCS"@     FLOATREC_MIN_PRECISION"@     SYSTEMSERVICE_ADDREMOTE"@     SYSTEMSERVICE_IPHELPERAPI"@     SBCS_TABLES"@     FMTERR_UNACCEPTEDPARAMETER"@     MAX_ROUTE_TRANSPORT"@     MAX_LOCAL_ADAPTERS"@     ARGTYPE_IS_FLOAT_TYPE"@     FORMAT_HASH_PREFIX_STRING"@     FMTERR_PRECISIONVALUE"@     FMTERR_TYPEFIELDVALUE"@     ROUTE_FLAG_NOOVERRIDE"@     GLOBAL_FORMAT_HASH_PREFIX_TYPE"@     DATE_AND_TIME_SECPERWEEK"@     FMTERR_ARGTYPEINVALID"@     FMTERR_NOERROR"@     SYSTEMTIME_DATE_AND_TIME_MAX"@     FLOATREC_MAX_PRECISION"@     MAX_ROUTE_NAME_LEN"@     SYSTEMSERVICE_FFILEFIND"@     SYSTEMTIME_TICKSPERSEC"@     FMTERR_WIDTHPRECISIONVALPOS"@     EMPTY_ROUTE_ENTRY"@     MIN_SBCS_TABLE"@     MIN_ROUTE_TRANSPORT"@     FMTERR_DESTBUFFOVERFLOW"@     HKEY_MAX_BINARY_DATA_SIZE"@     MAX_BASIC_HASHTABLE_CHAINSIZE"@     ROUTE_FLAG_TEMPORARY"@     AMSLOGGER_IGR_GENERAL"@     MAX_ADAPTER_ADDRESS_LENGTH"@     IPHELPERAPI_IPADDRBYHOSTNAME"@     WEST_EUROPE_TZI"@     DBG_OUTPUT_FILE"@  
   ImQn_TABLE"@     FMTERR_FLAGPOSITION"@     MAX_SBCS_TABLE"@     FORMAT_MAX_ARGS"@     FLOATREC_EXP_IS_INF"@     FORMAT_TYPE_SUPPORT_MASK"@     FORMAT_DEFAULT_PRECISION"@     FORMAT_DECASC_CODES"@     DEFAULT_CSV_RECORD_SEP_LF"@     MAX_ADAPTER_NAME_LENGTH"@     ARGTYPE_IS_UNSIGNED_TYPE"@     SYSTEMTIME_TICKSPERMSEC"@     MAX_ROUTE_ADDR_LEN"@     IPHELPERAPI_ADAPTERSINFO"@     FMTERR_PRECISIONDOTPOSITION"@     DBG_OUTPUT_LOG"@     MAX_ADAPTER_DESCRIPTION_LENGTH"@     DATE_AND_TIME_SECPERDAY"@     GLOBAL_DCF77_SEQUENCE_CHECK"@     FLOATREC_EXP_IS_NAN"@     SYSTEMTIME_TICKSPERDAY"@     SYSTEMSERVICE_IPHOSTNAME"@     MAX_AVERAGE_MEASURES"@     SYSTEMSERVICE_ENUMREMOTE"@     DBG_OUTPUT_VISU"@     FLOATREC_MAX_DIGITS"@     DBG_OUTPUT_NONE"@     GLOBAL_CRC_CCITT_TABLE"@     DEFAULT_CSV_FIELD_SEP"@     AMSPORT_AMSLOGGER"@     EMPTY_ARG_VALUE"@     SYSTEMSERVICE_DELREMOTE"@     SYSTEMTIME_MAX_YEARSDAY"@     ARGTYPE_IS_STRING_TYPE"@     SYSTEMTIME_DATE_AND_TIME_MIN"@     DEFAULT_CSV_RECORD_SEP_CR"@     ARGTYPE_IS_SIGNED_TYPE"@     FMTERR_INSUFFICIENTARGS"@     SYSTEMTIME_MAX_MONTHDAYS"@     FMTERR_PERCENTSIGNPOSITION"@     GLOBAL_DCF77_PULSE_SPLIT"@     FORMAT_PREFIX_SUPPORT_MASK"@     FMTERR_WIDTHVALUE"@     FMTERR_ASTERISKPOSITION"@     ARGTYPE_IS_BIT_TYPE"@     SYSTEMTIME_DATEDELTA_OFFSET"@     FORMAT_HEXASC_CODES"@     GLOBAL_SBCS_TABLE"@     ROUTE_FLAG_DYNAMIC"@     AMSLOGGER_IOF_MODE"@   @     z   FW_AdsClearEvents @      FW_NoOfByte       FW_SystemInfoType       FW_SystemTaskInfoType    
   FW_TcEvent                   FW_AdsLogDINT @           FW_AdsLogEvent @           FW_AdsLogLREAL @           FW_AdsLogSTR @           FW_AdsRdWrt @           FW_AdsRdWrtInd @           FW_AdsRdWrtRes @           FW_AdsRead @           FW_AdsReadDeviceInfo @           FW_AdsReadInd @           FW_AdsReadRes @           FW_AdsReadState @           FW_AdsWrite @           FW_AdsWriteControl @           FW_AdsWriteInd @           FW_AdsWriteRes @           FW_DRand @           FW_GetCpuAccount @           FW_GetCpuCounter @           FW_GetCurTaskIndex @           FW_GetSystemTime @           FW_GetVersionTcBase @           FW_LptSignal @           FW_MemCmp @           FW_MemCpy @           FW_MemMove @           FW_MemSet @           FW_PortRead @          FW_PortWrite @           Q   к  ADSCLEAREVENTS @       E_IOAccessSize    
   E_OpenPath       E_SeekOrigin       E_TcEventClass       E_TcEventClearModes       E_TcEventPriority       E_TcEventStreamType       ExpressionResult       PVOID       SFCActionType       SFCStepType       ST_AdsBaDevApiHead       ST_AdsBaDevApiIoCtlModifier       ST_AdsBaDevApiReq       ST_AdsRdWrtListHead       ST_AdsRdWrtListPara       ST_AdsReadWriteListEntry    
   ST_AmsAddr       ST_StructMemberAlignmentProbe       SYSTEMINFOTYPE       SYSTEMTASKINFOTYPE    
   T_AmsNetId       T_AmsNetIdArr    	   T_AmsPort    
   T_IPv4Addr       T_IPv4AddrArr       T_MaxString       T_U64KAFFINITY       TcEvent       UXINT       XINT       XWORD                   ADSLOGDINT @           ADSLOGEVENT @           ADSLOGLREAL @           ADSLOGSTR @           ADSRDDEVINFO @           ADSRDSTATE @           ADSRDWRT @           ADSRDWRTEX @           ADSRDWRTIND @           ADSRDWRTRES @           ADSREAD @           ADSREADEX @           ADSREADIND @           ADSREADRES @           ADSWRITE @           ADSWRITEIND @           ADSWRITERES @           ADSWRTCTL @           AnalyzeExpression @          AnalyzeExpressionCombined @          AnalyzeExpressionTable @          AppendErrorString @          BAVERSION_TO_DWORD @          CLEARBIT32 @           CSETBIT32 @           DRAND @           F_CompareFwVersion @          F_CreateAmsNetId @           F_CreateIPv4Addr @           F_GetStructMemberAlignment @          F_GetVersionTcSystem @           F_IOPortRead @          F_IOPortWrite @          F_ScanAmsNetIds @          F_ScanIPv4AddrIds @          F_SplitPathName @          F_ToASC @          F_ToCHR @          FB_AdsReadWriteList @          FB_BaDeviceIoControl @          FB_BaGenGetVersion @          FB_CreateDir @          FB_EOF @           FB_FileClose @           FB_FileDelete @           FB_FileGets @           FB_FileOpen @           FB_FilePuts @           FB_FileRead @           FB_FileRename @           FB_FileSeek @           FB_FileTell @           FB_FileWrite @           FB_PcWatchdog @          FB_RemoveDir @          FB_SimpleAdsLogEvent @          FILECLOSE @           FILEOPEN @           FILEREAD @           FILESEEK @           FILEWRITE @           FW_CallGenericFb @          FW_CallGenericFun @          GETBIT32 @           GETCPUACCOUNT @           GETCPUCOUNTER @           GETCURTASKINDEX @           GETSYSTEMTIME @           GETTASKTIME @          LPTSIGNAL @           MEMCMP @           MEMCPY @           MEMMOVE @           MEMSET @           ROL32 @           ROR32 @           SETBIT32 @           SFCActionControl @           SHL32 @           SHR32 @           p  Global_Variables @      SYSTEMSERVICE_FRENAME"@     ADSIGRP_IOIMAGE_RWOB"@     SYSTEMSERVICE_CHANGENETID"@     FOPEN_MODEREAD"@     SYSTEMSERVICE_CLOSEHANDLE"@     SYSTEMSERVICE_FTELL"@     BOOTDATAFLAGS_RETAIN_REQUESTED"@     ADSSTATE_RESET"@     SYSTEMSERVICE_FGETS"@     SYSTEMSERVICE_FEOF"@     AMSPORT_R0_CAMTOOL"@     PI"@     SYSTEMSERVICE_FSEEK"@     ADSSTATE_RECONFIG"@     FILE_OPENCREATE"@     ADSIGRP_SYMNAME"@     ADSSTATE_START"@     ADSSTATE_LOADCFG"@     ADSSTATE_IDLE"@     BOOTDATAFLAGS_RETAIN_LOADED"@     FILE_SEEKEND"@     ADSIGRP_SYM_HNDBYNAME"@     TCEVENTFLAG_FMTSELF"@     ADSIGRP_SYMNOTE"@     SYSTEMSERVICE_FWRITE"@  "   SYSTEMSERVICE_REG_HKEYLOCALMACHINE"@     ADSLOG_MSGTYPE_STRING"@     TCEVENT_FMTPRGSIZE"@     ADSIGRP_SYM_VERSION"@     ADSIGRP_IOIMAGE_RWIOB"@     ADSIGRP_IOIMAGE_ROSIZE"@     ADSIGRP_SYM_INFOBYNAMEEX"@     ADSIGRP_IOIMAGE_RISIZE"@     AMSPORT_R0_NCSAF"@     TCEVENTSTATE_INVALID"@     TCEVENTSTATE_CONFIRMED"@     FILE_OPENREAD"@     AMSPORT_LOGGER"@     BOOTDATAFLAGS_PERSISTENT_LOADED"@     TCEVENTSTATE_RESETCON"@     SYSTEMSERVICE_FDELETE"@  	   FILE_READ"@     MAX_STRING_LENGTH"@     ADSSTATE_SHUTDOWN"@     AMSPORT_R0_CAM"@     ADSIGRP_SYMVAL"@     ADSIGRP_IOIMAGE_RWIX"@     ADSIGRP_SYM_DOWNLOAD"@     ADSIGRP_SYM_UPLOAD"@     TIMESERVICE_RTCTIMEDIFF"@     AMSPORT_R0_NC"@     ADSIGRP_IOIMAGE_RWIB"@     SYSTEMSTATEFLAGS_BSOD"@     AMSPORT_R0_CNC"@     BOOTDATAFLAGS_RETAIN_INVALID"@     ADSIOFFS_DEVDATA_ADSSTATE"@     ADSSTATE_SAVECFG"@     SYSTEMSERVICE_OPENWRITE"@     SYSTEMSERVICE_FCLOSE"@     ADSSTATE_CONFIG"@     ADSSTATE_POWERGOOD"@     ADSIGRP_SYM_INFOBYNAME"@     SYSTEMSERVICE_FSCANF"@     ADSIGRP_SYM_UPLOADINFO"@     SYSTEMSERVICE_OPENREAD"@     SYSTEMSERVICE_RMDIR"@     TIMESERVICE_ADJUSTTIMETORTC"@     TCEVENTFLAG_SRCID"@     SYSTEMSERVICE_FPUTS"@     FOPEN_MODEAPPEND"@     ADSLOG_MSGTYPE_MSGBOX"@     ADSSTATE_SUSPEND"@  
   FILE_WRITE"@     SYSTEMSERVICE_SENDEMAIL"@     SYSTEMSTATEFLAGS_RTVIOLATION"@     AMSPORT_R0_ISG"@     AMSPORT_R0_PLC_RTS4"@     TIMESERVICE_DATEANDTIME"@     AMSPORT_R0_PLC_RTS3"@     TCEVENTFLAG_AUTOFMTALL"@     AMSPORT_R0_PLC_RTS2"@     AMSPORT_R0_PLC_RTS1"@     TCEVENTFLAG_MSGBOX"@     FILE_OPENWRITE"@      BOOTDATAFLAGS_PERSISTENT_INVALID"@     ADSSTATE_RUN"@     ADSSTATE_POWERFAILURE"@     ADSLOG_MSGTYPE_ERROR"@     FOPEN_MODEWRITE"@     ADSLOG_MSGTYPE_WARN"@     AMSPORT_EVENTLOG"@     AMSPORT_R3_SCOPESERVER"@     SYSTEMSERVICE_STARTPROCESS"@     ADSLOG_MSGTYPE_LOG"@     ADSLOG_MSGTYPE_HINT"@     FOPEN_MODEPLUS"@     AMSPORT_R0_NCSVB"@     TCEVENTFLAG_LOG"@     SYSTEMSERVICE_MKDIR"@     ADSLOG_MSGTYPE_RESOURCE"@     TIMESERVICE_SYSTEMTIMES"@     ADSIGRP_IOIMAGE_CLEARI"@     AMSPORT_R0_LINE"@     ADSIGRP_IOIMAGE_CLEARO"@     FOPEN_MODETEXT"@     SYSTEMSERVICE_FPRINTF"@     ADSSTATE_RESUME"@     TCEVENTSTATE_RESET"@     AMSPORT_R0_IO"@     TCEVENTFLAG_PRIOCLASS"@     ADSSTATE_INVALID"@     DEFAULT_ADS_TIMEOUT"@     ADSIGRP_SYM_VALBYNAME"@     TCEVENTSTATE_SIGNALED"@     ADSIGRP_DEVICE_DATA"@     ADSSTATE_ERROR"@     AMSPORT_R0_RTIME"@     ADSIGRP_SYM_RELEASEHND"@     TIMESERVICE_TIMEZONINFORMATION"@     SYSTEMSERVICE_CREATEFILE"@     TCEVENT_SRCNAMESIZE"@     ADSSTATE_INIT"@     SYSTEMSERVICE_FREAD"@     ADSIGRP_SYMTAB"@     SYSTEMSERVICE_TIMESERVICES"@     ADSSTATE_STOP"@     FILE_SEEKBEGIN"@     ADSSTATE_MAXSTATES"@     SYSTEMSERVICE_OPENCREATE"@     SYSTEMSERVICE_FOPEN"@     AMSPORT_R3_SYSSERV"@     ADSIOFFS_DEVDATA_DEVSTATE"@     FOPEN_MODEBINARY"@     AMSPORT_R0_PLC"@     ADSIGRP_SYM_VALBYHND"@     ADSIGRP_IOIMAGE_RWOX"@   @        FW_Floor @                  FW_LrealFrac @          FW_LrealModP @          FW_LrealTrunc @                  F_GetVersionTcMath @                   FLOOR @       
   FRAC @       
   LMOD @          LTRUNC @          MODABS @          MODTURNS @           ~   Л
  _F_AxisState @_      _E_ParameterType       _E_ReadWriteParameterMode       _E_TcMC_STATES       _E_TcNC_CmdState        _E_TcNC_CmdTypeNewTargPosAndVelo       _E_TcNC_PosSetType       _E_TcNC_ServoState       _E_TcNC_SlaveTypes       _E_TcNC_StartPosType       _E_TcNC_TargPosType       _E_TouchProbeState       _InternalAxisRefData       _ST_FunctionBlockResults       _ST_NCADS_Axis       _ST_NCADS_AxisFunctions       _ST_NCADS_AxisParameter       _ST_NCADS_AxisState       _ST_NCADS_IDXOFFS_AxisFunctions       _ST_NCADS_IDXOFFS_AxisParameter       _ST_NCADS_IDXOFFS_AxisState        _ST_NCADS_IDXOFFS_TableFunctions        _ST_NCADS_IDXOFFS_TableParameter       _ST_NCADS_Table       _ST_NCADS_TableFunctions       _ST_NCADS_TableParameter       _ST_ParaStruct       _ST_TcNC_Compensation2       _ST_TcNC_CoupleSlave       _ST_TcNC_CoupleSlaveMultiMaster        _ST_TcNC_CoupleSlaveMultiMaster2       _ST_TcNC_DecoupleSlave       _ST_TcNc_OperationModes       _ST_TcNC_PhasingRequest        _ST_TcNC_SetEncoderSaclingFactor       _ST_TcNC_SetPos       _ST_TcNC_SetPosOnTheFly       _ST_TcNC_StopInfoRequest       _ST_TcNC_StopInfoResponse       _ST_TcNc_TouchProbeActivation       _ST_TcNc_TouchProbeDeactivation        _ST_TcNc_TouchProbeStatusRequest    !   _ST_TcNc_TouchProbeStatusResponse    !   _ST_TcNC_UnversalAxisStartRequest    "   _ST_TcNC_UnversalAxisStartResponse       AXIS_REF       E_AxisErrorCodes       E_AxisPositionCorrectionMode       E_DestallDetectMode       E_DestallMode       E_DisableMode    	   E_JogMode       E_PhasingType       E_PositionType    
   E_ReadMode       E_SetScalingFactorMode       E_SignalEdge       E_SignalSource       E_SuperpositionAbortOption       E_SuperpositionMode       E_TouchProbe       E_TouchProbeMode       E_WorkDirection       MC_AxisParameter       MC_AxisStates       MC_BufferMode       MC_Direction       MC_HomingMode       MC_TouchProbeRecordedData       NCTOPLC_AXIS_REF       PLCTONC_AXIS_REF       ST_AdsAddress       ST_AxisComponents       ST_AxisOpModes       ST_AxisParameterSet       ST_AxisStatus       ST_BacklashCompensationOptions       ST_DriveAddress       ST_GearInDynOptions       ST_GearInMultiMasterOptions       ST_GearInOptions       ST_GearOutOptions       ST_HomingOptions       ST_McOutputs       ST_MoveOptions       ST_NcApplicationRequest       ST_PhasingOptions       ST_PositionCompensationOptions    #   ST_PositionCompensationTableElement    %   ST_PositionCompensationTableParameter       ST_PowerStepperStruct       ST_SetEncoderScalingOptions       ST_SetPositionOptions       ST_SuperpositionOptions       ST_TableCharacValues       TRIGGER_REF                  _F_GetIndexGroup @          _F_NcCycleCounterUpdated @          _F_ReadStatus @          _F_TcMC_DWORD_TO_HEXSTR @          _F_TcMC_Round @          _F_UpdateNcCycleCounter @          _FB_MoveUniversalGeneric @       /   _FB_MoveUniversalGeneric.ActCalcDiffCmdNo @       .   _FB_MoveUniversalGeneric.ActErrorMessage @       8   _FB_MoveUniversalGeneric.ActMonitorContinousMotion @       7   _FB_MoveUniversalGeneric.ActMonitorDiscreteMotion @       -   _FB_MoveUniversalGeneric.ActMonitorStop @       0   _FB_MoveUniversalGeneric.ActNcCycleCounter @          _FB_PhasingGeneric @       '   _FB_PositionCorrectionTableLookup @       B   _FB_PositionCorrectionTableLookup.ActIsCompensationDirection @          _FB_ReadWriteParameter @          _FBAXIS_REF @          _FBAXIS_REF.ReadStatus @          _MC_HaltPhasing @          _MC_PhasingAbsolute @          _MC_PhasingRelative @          _TcMC_ADSRDWRT @          _TcMC_ADSREAD @          _TcMC_ADSWRITE @          _TCMCGLOBAL @           _TCMCGLOBAL.ReadDeviceInfo @          F_AxisCamDataQueued @          F_AxisCamScalingPending @          F_AxisCamTableQueued @          F_AxisControlLoopClosed @          F_AxisExternalLatchValid @           F_AxisGotNewTargetPosition @          F_AxisHasBeenStopped @          F_AxisHasExtSetPointGen @          F_AxisHasJob @          F_AxisInErrorState @          F_AxisInPositionWindow @          F_AxisInProtectedMode @          F_AxisInPTPmode @          F_AxisIoDataIsInvalid @          F_AxisIsAtTargetPosition @          F_AxisIsCalibrated @          F_AxisIsCalibrating @          F_AxisIsCompensating @          F_AxisIsCoupled @          F_AxisIsMoving @          F_AxisIsMovingBackwards @          F_AxisIsMovingEndless @          F_AxisIsMovingForward @          F_AxisIsNotMoving @          F_AxisIsReady @          F_AxisJobPending @           F_AxisMotionCommandsLocked @          F_AxisPhasingActive @       #   F_AxisReachedConstantVelocity @          F_GetVersion_TcMC2 @          MC_AbortSuperposition @          MC_AbortTrigger @          MC_AbortTrigger_V2_00 @          MC_BacklashCompensation @          MC_ExtSetPointGenDisable @          MC_ExtSetPointGenEnable @          MC_ExtSetPointGenFeed @          MC_GearIn @          MC_GearIn.ActGearInDyn @          MC_GearIn.WriteGearRatio @          MC_GearInDyn @          MC_GearInMultiMaster @       1   MC_GearInMultiMaster.ActGearInMultiMasterV1 @       1   MC_GearInMultiMaster.ActGearInMultiMasterV2 @          MC_GearOut @          MC_Halt @          MC_Home @          MC_Jog @          MC_Jog.ActCheckJogEnd @          MC_Jog.ActJogMove @          MC_MoveAbsolute @          MC_MoveAdditive @          MC_MoveContinuousAbsolute @          MC_MoveContinuousRelative @          MC_MoveModulo @       %   MC_MoveModulo.MC_MoveModuloCall @          MC_MoveRelative @          MC_MoveSuperImposed @          MC_MoveVelocity @          MC_OverrideFilter @       "   MC_PositionCorrectionLimiter @          MC_Power @          MC_PowerStepper @          MC_ReadActualPosition @          MC_ReadActualVelocity @          MC_ReadApplicationRequest @          MC_ReadAxisComponents @          MC_ReadAxisError @          MC_ReadBoolParameter @          MC_ReadDriveAddress @          MC_ReadParameter @          MC_ReadParameterSet @       2   MC_ReadParameterSet.ActGetSizeOfParameterSet @          MC_ReadStatus @          MC_ReadStopInfo @          MC_Reset @       $   MC_SetAcceptBlockedDriveSignal @           MC_SetEncoderScalingFactor @          MC_SetOverride @          MC_SetPosition @          MC_Stop @          MC_Stop.ActStop @       '   MC_TableBasedPositionCompensation @          MC_TouchProbe @       )   MC_TouchProbe.ActTouchProbeActivate @       0   MC_TouchProbe.ActTouchProbeMonitorActivity @       2   MC_TouchProbe.ActTouchProbeMonitorLatchValid @       0   MC_TouchProbe.ActTouchProbeMonitorPlcEvent @       ,   MC_TouchProbe.ActTouchProbeStartupInit @          MC_TouchProbe_V2_00 @       /   MC_TouchProbe_V2_00.ActTouchProbeActivate @       6   MC_TouchProbe_V2_00.ActTouchProbeMonitorActivity @       1   MC_TouchProbe_V2_00.ActTouchProbeMonitoring @       8   MC_TouchProbe_V2_00.ActTouchProbeMonitorLatchValid @       6   MC_TouchProbe_V2_00.ActTouchProbeMonitorPlcEvent @       2   MC_TouchProbe_V2_00.ActTouchProbeStartupInit @          MC_WriteBoolParameter @          MC_WriteParameter @          I   TcMC_GlobalConstants @      DEFAULT_HOME_POSITION H  
   TcMcGlobal H   H        CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @     @        F_GetVersionTcpIp @      E_WinsockError       ST_SockAddr       ST_TcIpConnSvrResponse       ST_TcIpConnSvrUdpBuffer    	   T_HSOCKET                  FB_SocketAccept @          FB_SocketClose @          FB_SocketCloseAll @          FB_SocketConnect @          FB_SocketListen @          FB_SocketReceive @          FB_SocketSend @       %   FB_SocketUdpAddMulticastAddress @          FB_SocketUdpCreate @       &   FB_SocketUdpDropMulticastAddress @          FB_SocketUdpReceiveFrom @          FB_SocketUdpSendTo @             Global_Variables @             F_CreateServerHnd @      E_ConnEstablishState       E_SocketAcceptMode       E_SocketConnectionState    	   T_HSERVER       T_ThrottleTimes                   F_GetVersionTcSocketHelper @          FB_ClientServerConnection @          FB_ServerClientConnection @          FB_SocketListenEx @          FB_SocketReceiveEx @          FB_ThrottleTimer @          FB_ThrottleTimer.MaxSpeed @          FB_ThrottleTimer.MinSpeed @          FB_ThrottleTimer.SlowDown @          FB_ThrottleTimer.SpeedUp @          HSOCKET_TO_STRING @             Globale_Variablen @          Р   F_BitArr_To_USINT @   	   LogStruct    	   ST_Result       	   BitButton    	   MotorHand       MotorHandSH       Sortimat       ZYLINDER       ZylinderHand       ZylinderHandSt              F_DEG_TO_RAD @          F_InBorders_INT @          F_InBorders_REAL @          F_Inch_To_mm @          F_LinFkt @          F_mm_To_Inch @          F_RAD_TO_DEG @          F_ResultReset @          F_RoundREAL @          F_SplitString @          F_USINT_To_BitArr @          FB_Blink @          FB_CheckParity @          FB_ClearFileByTime @       '   FB_ClearFileByTime._CallInstances @       &   FB_ClearFileByTime.ClearOldStuff @          FB_LogFile @          FB_LogFile.CallInstances @          FB_LogFile.LogMessage @          FB_RTC @          FB_StopUhr @          FB_Takt @          FB_Timer @             Globale_Variablen @          I   F_GetVersionTcSUPS @      E_S_UPS_Mode       E_S_UPS_State                  FB_NT_QuickShutdown @          FB_S_UPS @             Global_Variables @          V   F_GetVersionTcXmlDataSrv @      ST_SymAddrInfo       ST_XmlSrvOpenEntry                  FB_SymNameByAddr @          FB_XmlSrvRead @          FB_XmlSrvReadByName @          FB_XmlSrvWrite @          FB_XmlSrvWriteByName @             Global_Variables @          Internal_Global_Variables @                       , x x            2                џџџџџџџџџџџџџџџџ  
             њџџџ                 јџџџ, Z Z fy                      POUs
               _Main               Functionblocks
                 FB_CheckState                    FB_Home                     FB_Home_new  J                  FB_Instances                     FB_LedBlinking                     FB_Move                     FB_MoveInterpolation                     FB_ReadPositionFromFifo                     FB_ReadPositionWindowValue                     FB_Reset     џџџџ           	   Functions	                Check Arm State                 F_CheckAxisHaveStopped                     F_CheckIfAllAxisHomed                     F_CheckIfAxisDisabled                     F_CheckIfAxisEnabled                     F_CheckIfAxisHasError                     F_CheckIfAxisHasJob                     F_CheckIfAxisIsMoving                     F_CheckIfAxisNotMoving                     F_CheckIfHomingIsBusy                     F_CheckIfInPosArea                      F_CheckIfInTargetPos  !                   F_CheckIfNextPosIsOutOfPosArea  "                   F_CheckIfSoftLimitMax  #                   F_CheckIfSoftLimitMin  $   џџџџ               Check Positions                 F_CheckAtFinalGraspFromFloorPos  %                   F_CheckAtFinalGraspTrayPosition  &                $   F_CheckAtFinalGraspTurntablePosition  '                %   F_CheckAtFinalPutObjecttoTrayPosition  (                $   F_CheckAtFinalStoreTurntablePosition  )                   F_CheckAtHomePosition  *                   F_CheckAtLearningPosition  +                   F_CheckAtMoveArmOutPos  ,                   F_CheckAtMoveArmOutPos2  %                  F_CheckAtMoveArmOutPos3  $                  F_CheckAtPreGraspFromFloorPos  -                   F_CheckAtPreGraspFromTablePos  #                  F_CheckAtPregraspTrayPos1  .                   F_CheckAtPregraspTrayPos2  /                   F_CheckAtPregraspTrayPos3  0                #   F_CheckAtPregraspTurntablePosition1  1                #   F_CheckAtPregraspTurntablePosition2  2                   F_CheckAtPrePutObjectToTrayPos1  3                   F_CheckAtPrePutObjectToTrayPos2  4                   F_CheckAtPrePutObjectToTrayPos3  5                #   F_CheckAtPreStoreTurntablePosition1  6                #   F_CheckAtPreStoreTurntablePosition2  7                   F_CheckAtTurntableCCWPosition  8                   F_CheckAtTurntableCWPosition  9   џџџџ              Homing                 FB_HomeJoint  =                  FB_SetCamSearchDirection  G                  FB_SetDefaulHomingDirection  i  џџџџ              ReferenceDialog                 F_CheckJointSide  8                  F_CheckStartRef  `                  F_ResetDialog  g                  F_ResetStartRefDialog  e                  F_SetRefDialog  b                  F_SetStartRefDialog  c  џџџџ              StateMachine                 F_SwitchStep  ?  џџџџ                F_CalcVelocity  :                   F_ResetCommands  ;                   F_SetHomingDisable  <                   F_SetHomingEnable  =   џџџџџџџџ              TCP               _TCPIPClient               Functionblocks                FB_ClientApplication                ProcessReceiveData  A                  ProcessSendData  B   >                   FB_LocalClient  C   џџџџ           	   Functions                 F_MergeSendData  D   џџџџџџџџ              _TCPIPServer               Functionblocks                 FB_LocalServer  E                  FB_ServerApplication                ProcessReceivedData  H   F   џџџџ           	   Functions                 F_CutString  I                   F_MergeSendArmState  J                   F_MergeString  K                   F_MergeStringOneValue  L                   F_MergeStringValue  M   џџџџ              Helper POUs Server                 F_ADSLOGERROR  N                   F_ADSLOGSTRING  O                  FB_FrameStringFifo             	   A_AddTail  T                  A_RemoveHead  U                  A_Reset  V   P                  FB_PositionFifoBuffer             	   A_AddTail  [                  A_RemoveHead  \                  A_Reset  ]   W                   FB_ProtErrorFifo             	   A_AddTail  b                  A_RemoveHead  c                  A_Reset  d   ^                
   SCODE_CODE  e   џџџџџџџџџџџџ                F_CheckAtCandlePos  *                  F_CheckAxisInPositionWindow  0                  F_CheckIfInTargetPosEx  /                  FB_MoveToZero  4                 Main                CallFBs  q                  CallGraspTurntable  r                  CallMoveGraspFromFloor  s                  CallMovePreGraspFromFloor  t                  CallMovePreGraspTable  !                 CallMoveSingleAxis  u                  CallMoveToCandlePos  0                 CallMoveToHome  5                 CallMoveToTray  v                  CallPutLearningObjectToTray  w                  CallStoreTurntable  x                  CallWaitForCommand  y                  Init  Y                 ReadPLCStatus  z   f                   PRG_DataAccess  I                  TCPIPClient  {                   TCPIPServer  |   џџџџ           
   Data types            
   ArmControl              
   E_Decision  h                  E_HomingJoint  >                  E_JointSide  7                  E_STATE  }                   E_STATE_CANDLE  ,                  E_STATE_GRASPFLOOR  ~                   E_STATE_HOME  6                 E_STATE_HOMING                     E_STATE_INTERPOLATION                     E_STATE_JOG                     E_STATE_MOVE                     E_STATE_OBJECT_TO_TRAY                     E_STATE_PREGRASPFLOOR                     E_STATE_PREGRASPTABLE                     E_STATE_RESET                     E_STATE_TRAY                     E_STATE_TURNTABLE                     E_STATE_VELOCITY                     ST_ArmState                     ST_Instances                     ST_Instances_Input                     ST_Instances_Output                     ST_ReferenceDialog  Z                  ST_StartReferenceDialog  X                  ST_TurnTableState  K  џџџџ              TCPIP                Client                 E_CLIENT_STATE     џџџџ               Server              
   E_RX_STATE                     E_SERVER_STATE     џџџџ                ST_Commands     џџџџ                E_SystemMode  V                  ST_Parameters  H  џџџџ              Visualizations                 ArmState  )                 Commands  (                  ProgramSTATEs     џџџџ              Global Variables                 Globale_Constant                   Globale_Variablen                     TwinCAT_Configuration                     Variablen_Konfiguration     џџџџ                                                             KбQ                         	   localhost            P      	   localhost            P      	   localhost            P     ixR    ЧП+