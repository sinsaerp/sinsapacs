object FLogin: TFLogin
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FLogin'
  ClientHeight = 174
  ClientWidth = 384
  Color = 11169097
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 8
    Width = 48
    Height = 16
    Caption = 'Usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 55
    Width = 75
    Height = 16
    Caption = 'Contrase'#241'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnIngresar: TSpeedButton
    Left = 136
    Top = 112
    Width = 114
    Height = 36
    Caption = 'Ingresar'
    Glyph.Data = {
      40050000424D40050000000000008A0400007C0000000C0000000C0000000100
      080001000000B6000000000000000000000000010000000100000000FF0000FF
      0000FF000000000000FF424752738FC2F52851B81E151E85EB01333333136666
      662666666606999999093D0AD703285C8F320000000000000000000000000400
      0000000000000000000000000000FFFFFF00FFFEFD00FEF7E800FFFFFE00FBE8
      BD00F5C76300F5D99D00FBE8BE00F4C15200E8A41500EAB24000FBE9BF00F4C1
      5300EAB44400FAEFD800FFFDFB00FDF2DA00FFFDF800FCE9C000F4C25300E8A4
      1600EAB34200FBF1DD00F2CF8500F3BF4E00FADFA400FFFDFA00FCE9C100F4C2
      5400EAB24100FBF1DC00EDBD5B00E7A21300F2BB4400FAE0A500F4C25500FDF8
      ED00EEC16500E7A11100F2BB4300F4C04E00E9A51700FBF1DB00FDF9F000EEC1
      6400E6A11000E8A21300EAB23F00FBF0DA00FBF0D900FEFAF300FDF7EB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C000000030001320133070000000200012B
      012C01150131060000000100012B012C012D012E012F01300500000001240125
      0126012701280129010A012A04000000011F012001210122010401230114010A
      011E03000000011701180119011A0100011B011C0114011D011E02000000010F
      01100111030001120113011401150116010000000700010B010C0109010D010E
      00000800010701080109010A0000090001040105010600000900010101020103
      00000001}
    OnClick = btnIngresarClick
  end
  object btnSalir: TSpeedButton
    Left = 256
    Top = 112
    Width = 105
    Height = 36
    Caption = 'Cerrar'
    Glyph.Data = {
      7E060000424D7E060000000000008A0400007C00000010000000100000000100
      080001000000F4010000000000000000000000010000000100000000FF0000FF
      0000FF000000000000FF424752738FC2F52851B81E151E85EB01333333136666
      662666666606999999093D0AD703285C8F320000000000000000000000000400
      0000000000000000000000000000F7F7F700F6F7F700F9F9F800A1AFD5002E4B
      A3003552A1003F70B4003571B600366DB4003B6EB3003564AF002F59AA00A6B4
      D700FAFAF9007081BF005B69A4009298AB003E74B100125EAD00135DAB00135C
      AA00145BA9000E52A4007894C500727EBB00838BB100ACAFB4004176B1000F5B
      AB000F59A8000D57A6000B55A400054EA0007693C300717BB7008288AE00ABAE
      B3004074AF000D58A8000B54A4000952A200034C9D007590C000F6F7F500F7F7
      F500EDDEBD00747194008489AE00AAAEB4003E73AD000B57A70007509F000249
      9A00748EBE00FAF9F800F7F7F800E4D2AD00D8B67400D8B87700CDA04A00B086
      3E00B1A08900A9ABAF003D70AB0007439600084F9F00054D9D0000479800748D
      BD00F7F8F800CFB07300B17B1100B27D1500B37E1700B47F1700B8872300AC96
      67003C6DA60004368800064A9A00044B9A0000449500748CBA00C6A86C00A16D
      0500A2700900A26F0800A16E0800A8802F00A59A83003A6DA800054E9F00054D
      9C000249980000419200738AB700E4DAC500D2BF9800D3C09A00B59249007155
      3300918D9700A9ADB500386BA700034C9C00034B9A000248970001469500003F
      90007389B500F7F8F900F8FAFB00F8F9FB00EDE8DC006D6D95008284A100AAAD
      B300376AA500024A9A0000449300003D8F007388B400F9FAFA0070719B008283
      9E00ACB0B5003668A400004797000045940000429200003B8E007287B200F9FA
      F900898AAB00535481007E829C00275A9A00024796000A4A97000C4894000C42
      8F000E3A8500939CBB00E6E6EB00AFB1C400ADB0C4008FA7C80085A4CA00A4B9
      D500ADBBD300ADB6CC00B6B9CC00E9EAED00F7F8F700DDE0E400CDD2D900D8DC
      E100C5D1E100BDCCE100BFCDE100C0CDE000C0CDDE00C0CCDB00E0E3E800E1E4
      E900E5E7EB00EBEDEE00DBE2EA00D4DCE700D3DBE600E3E7EC00EFF1F200F0F2
      F300F3F4F500EEF0F200EBEEF100EBEEF000EAEDF000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000014501000201010001AB01AC01AD01AE01AF
      01B001AF01B001B101AC014500000201030001A401A501A601A704A801A901AA
      01000000020102000199019A019B019C019D019E019F01A001A101A201A30199
      0000020002010145018F01900191019201930194019501960197019801450000
      02000201018401850186018701880189018A018B018C018D018E010D00000201
      0200017A017B017C017D017E017F01800177018101820183010200000101016E
      016F0170017101720173017401750176016A016B017701780179010200000145
      0160016101620163016401650166016701680169016A016B016C016D01360000
      01450153015401550156015701580159015A015B015C0150015D015E015F0136
      000001450146014701480149014A014B014C014D014E014F0142015001510152
      01020000013701380139013A013B013C013D013E013F01400141013301420143
      0144010200000200012B012C012D012E012F0130013101320127012801330134
      01350136000001010300010201220123012401250126011E012701280129012A
      0102000002010200010201180119011A011B011C011D011E011F012001210102
      00000200010101000102010E010F011001110112011301140115011601170102
      00000200020101020103010401050106010701080109010A010B010C010D0000
      0001}
    OnClick = btnSalirClick
  end
  object Image1: TImage
    Left = 8
    Top = 28
    Width = 105
    Height = 114
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000690000
      0069080600000039820D3A0000000467414D410000B18F0BFC61050000000662
      4B474400FF00FF00FFA0BDA793000000097048597300002E2300002E230178A5
      3F760000000774494D4507E50701131828290FB66E000027AA4944415478DAED
      5D099C8DE5FEFF9DD9F7D5CC9889102149372A251221A245225A51B7E55E2DDA
      2D5DD595A56EAADB95BAB7922C2114BA94A550118AA4B2C6106633FBBE9DF3FF
      7E9FF77DCF9C59CE99F7CCCC99A1FBFF7D3E8FE39C39E77D9FF7F93DBF7D792C
      7226C1D30744CA6D22015E22162FED33BE5AAD01F85F0C464BB1485BBCB6C168
      8591801185118A1188E1CB5F6058314A300A30B231D2304E6224621C15B11D11
      1BDEDB6C19E2ED5D8657ED5E56FC2CDC5FE4789EC8EC0B9B7A35EC6069EA09C8
      7DFB45DAFB6129CB311B8B36ACE5FE786D89379DF18D4B31BA60103971182118
      FEF6DFDBDC7A4A22AF08234734A41DC4D88DF1032EB44F4AAD29E2EB6D55DF2C
      C78B8F8FC889E32273AF69D2256A1A243D803589C5E6B7DA344A5188B105E2B5
      23FEDA1BA30FC6C518F1187EEA37367DF01F7CDF0B3F0BF0B1883F869F375E31
      7C31BC2CDA654B4191C51C653629C16B115E49281AD558B427AF78FA7C8C6318
      3B3036E24B5BA5ACFC189054AEFE6A2D16F1C2BE38087C2E1DFE0747D2936067
      815E15C8E905E2F8FA706BBCE98FBFDE887139466C0552348404F959242EC447
      5A47FA48DB285F691BE92B2DC37D2436D85B2271BD507F2F85286F5C924C92B8
      28B712492279C556C9282C97D4FC72F91DD4FA5B46A91A895965929A57260525
      36FB7DF4D528D711B6096325E6F10D309FA1BE63B36A4BF6D2F97F40243DBE4D
      2428467B4822C766F5C6EB9FF097913A72DA09D757478C8F8F9742C29FE2FDE4
      8A1601D235C15FDA45FB4A4C90B704FBD57FCAF9255620CD2A8781AC5DA78A65
      DBEF45F26352B19CCC2997B232AB23C2C81AC90E9760622BC5CB3751AC659AEC
      B2341EB23C8FA4898734AAC04E175B1990E37319DE8D150D3971EA3B78662F6F
      680211BE7275EB00B9EEFC20E97E8EBFB400A248218EC04B1596DA2417149259
      68959C626DE4975A156B2391F2277E6083217EA0328C30282291011AC505FA5A
      AA3D34D9E2EFD965B2E344B17C7EA840BE4E2C9463786F234D79D96F0B36200B
      F1DF4598EC11C84DDC082CBB345364DA05672992264226FB429C9461E761A1A4
      C4DA19777B107F21538F35644C3016EF8A16FE32ECC210E9DF2E50DA809539E2
      850B7F2AB75C0E9E2E919F534B647F5AA91CC92C95E4BC72C92AB22A76469943
      E4581D9408CA260E7F1D59E1B84F7C88B79C0776D931C64F3AC7FA49FB66BE12
      1FEAADE49901D41778FD75870B64F92FF9B2FD44911414DB0C6411A0E9C8BBA0
      F885E006C96A87913BE4178ACCEA7C162169D2218DCF933C6CD658B00652CE03
      18ADD5DFA9E90679C975ED82E49E4B42A557AB00B5CB0D2065FC9C52225F1F2B
      926F307E01729272CBA4A8D45659F09B7D0203794AAE68180C04DB8C879CEB1C
      E72757E1FE57637402E2C2AACC63736291CCDB9D2BEB81B49C42AB23656DC778
      0DD75C85E72B9292525142717A87331C4913C0117C7DB5ED5856E605750B0A81
      6522FED24BDDCB4ACAB1C8A0F383E5C1CBC3A4E7B9016AA7134A4106BFA696CA
      9A83058AE5FC945C2C595C94CA42BDEEC03D8335E46620C5915DDA490FD78FC4
      A6E912E72F83DA07C9F51817C4F88A8F972E9840CD5F03596FEFCC567373A02C
      DA611F638E3381A07DEAB939D7A9EDCE502491BD7141BD493D303C2DF2283E7D
      48686CEA0B7455AB4019DF235C068282281B087910E25C80853FE5C9C6230592
      0CE12D3AB134E416BAA26580DCD72D4CBA34F783766D93AD5016FEF37D8E1C00
      FB54F731547CCC3321D447FAB50D94DBBB84484FCCD950560A40C9DC44AF6FCD
      52BF37943DD1E4D54B78FE254052897AD8D2D206A3AA8659864907B5572F1F1A
      A2DD30D16978D75F74EA3927C2471EBE225CC6760D9518A8CD847CA8BEE4FBEF
      FE90A3584A7E91B5C11163C088CE21F2CAC06839178A8823FC00CD6EF48A54F9
      39B9A4F27D758485408E5DD32650EEBB3454FAB70D92207D63519D2782676FCF
      912428180E54F51E10350DCF9FAC140BA501B63F039034F9B0F64465C55EE213
      702BDE10416D0DEAA1A636A54F94746FA13909A8E16E81F6F4CFEFB215920A2B
      0BE5060572AB315DC364C680286916E45DE377286FFEBC324D19BF3502E61BE4
      6F9181780E6EB45EAD03ED8ACDD6E345F2C25799B2FEB70247AA82312C4FE1CD
      6ECDE4A83FFBAB3B92C66C0289B4D46D1F09C03F0FE353CA9F0822281C46E623
      5786CB6357464854A086051A916F6CCB96057B722533DFEA31E4F0FEBE9075E3
      BA87CBF37D232B2903558173EA3BF7941CCF2C73BD1A986E34B4C3BBFE142A8F
      00596D2235AA3C5D502EAF6DCD967F61D3E518DC40D3009F108B6D8DB2AC89FF
      6975B7A9EA86A4093F43F6046A77B75AC340327FC31B22C98F1FD1F09CD63F4A
      A9D5DCCD549157FC9A2FD33667CA5EB296BADFD91482A8B93DDD33529EE91561
      977DCEE0644E995C3B3709B2A9A4F639E9C47671BCBF4CEA1D2137770A165F3C
      20F585A53FE7C9A40D197234A3D4B80ED47379460A4BE64B80AFF6CB1270C457
      2E76FB91DC5F2AE5778BD035235B14C87906FE73AFE81E832BA1B1BD7E7D33B9
      5C676F49B071666CC994F776E54A7EB1D5B3E633EE1F0A39F27C9F48C59A7CBD
      6BBFD97618B0D77F98241905E5E6E7467905EAFCF3A5616A23C48568AC94CAC4
      F835A765C7EFC5C6B5B2F0E549D054DE814255AE3E9BEA3E45B9BF64860CB209
      11340B6FEE56D7C147833B04C9EB839B49BB285FF5D5EF4F16CBD35FA4CB5747
      0B2B34364F01AE1F0DA5640628782CB4382F13F7A21C7A6C4DBABCB53DDBFDB9
      E9CF438562E675517249BCB6290F9C2E9547FF7B5ABE80AAAE5F3397AB064562
      368CDEF2BAB03EF7A636F990A1F98463155E15CDBDA3AE311CAC8D084A08D576
      D5CA7DF9F2141074882AAEA7648FC3822540739B050DEEB68B424CFD849E8C57
      A14A4FDD94A9DC4C750630870E3082FF817B0FC12625D0C5F42828EA935FF38D
      6FE5628ECF484EFEDB121A64532BE686DFCF3C92261ED6BFAD420AD4E01E117D
      F9A9E2FE130822D953499ABB2B4726AECF90B43C3758485D01F73B0F3290F71F
      DC3EC8D44FE8609DBA390B023F4B8A89A0063094E3B039670C8896BBA158908A
      C9E6C77D96262B7EC937AE9F89EF3D8C3F2E54EA39C774733E3F73D32305514B
      290552FC2D4FE37F2F88AE24DC7841B0BC7D638CF28151BDFE1758C7DF366648
      6E9187E58FBE3874EBCCBE21463966CD4026E6F51C04FC3B3B739451DB6073D4
      35DAA9FDA2E4A1CBC3959A4EA5E47EA8F76B0ED859DF298CD1D8E4EBA5149FF9
      049A52CF6B9FE2045090976E8A5B6CA3F09F3918E19C546F187A1F0C8B95D630
      56A9E1D0F6790E08F2B882A02FCAE52DFDE52D20A85B82BFA99FA480B2C98269
      02D8EAC1E15CCD898ACB4B40D45FBB872B8AA28A7FCFF254F9F65891B126508D
      6594FEDA40489A72580B8389AD3BBEFE9130BF0093E9841DBC70789CFCA9B922
      287967478E5A80BC4642509FF3024141CDE482183F533F3996550625E1B47CBA
      2FDFD4F7EB333786465E1D14ADDC50047A36EEF838A5C20525B206DFBB07AFA7
      D56EA9459170BD9C4A93E38D6DCD41A20BF1BFBE9C440C64CFDC5B62ED328036
      C243AB4EBBA7C6D663116E008B7D036ABE6150D606D4B8281F361C2E6C9C3027
      E6D80C6BF46F8881A1B0A50854A4C67E92E6B8462F4B79F924687C65EA07D39C
      BB8F9C4F99E106CDF3E80D044D17E5EA1065BC4D1F10254F5C15A1BEC650C29D
      CB52E4586D167B03002F3FAA4B0834A9664A069A81DD49C5F297D5A7E5BBE345
      8D832003A8D0C01459383C563977C96D666CC952E2A05CF3BE3319660CD67605
      0C5E4878982DD36A667DCEA7FDFC3191B252FEEF068CF9A2CBA19158A4FFDC1C
      A30269478198514B53643B17C0936AB6EE5C27FB98D63FDAEE66AA0DB881FE0A
      0AFA29C98437C11300CE7F15149A4523E2947397F12952D372701E7D3E3F62DC
      224C3323DB73A296D73C757AB5E918B449025E97E3932BB8501D627C65C5A8E6
      2A3846B7FD5F56A7C9BC5DB91E3752190A7FF4CA7079AE4FA40A879B01C67D1E
      865179F87469D320C861FEF75D16266FC2446076D34F292572CBA264F92DDD3E
      AF37415A8F639DCB24119F2DEA54ED12D5A73F799FE27052942A12D89CAA36FD
      722AC44C55F7DE6EA1EA6B73A028501097947B424DAA7840660A4DB83A529EEC
      19A11ED20C2C836D327EED693991E579166C0618D8FCD790667645E26DA8FF8F
      6003E99E77266F8EC43C3F178AD829D5595EF54798F41B556DFEAF9B30A549E4
      1C92ED2D9D83E5C361712A00463E7FCB47299298E1C15DAADB1D2F5E1B257FB9
      3CCC1E25750564F50C3D3CB32EBD710C69379EA52D0CEE4F6E6F2E17412B6654
      F88E65A9B29A1E098D31AC07BB1B21F4F571EDA75656222A3FC6644657D547BE
      20BF7784820DBF8985A6B20237B8EADC00C5E6EEFD245516EFC9F368A8811AE4
      CCEBA2E51EDD82AF0D48D134502998B3F31D11542D11B26900CF74D725A1F2EF
      9B621447D874B4506E5D9C22E9DA5C29FC1FC47FDE172906922AB3BCCA539F64
      B87E5406296551242FFE688F709935A8995AACC57BF364EC8A54292CF3109BC3
      655BC2387E0DF71B7661B0E99F31BD8B4144C677F24A6C9286873F018B9F7E34
      0EBED71259A4C990C6C82EB9119F8BC63F65E69C0AE7EE4ED194B494AA4A44C5
      542B546E3F50D15CFCE7763ED0B958B0FFDE15AFDC2F0C1BDFB43059BE3BE621
      6D0EF73BBF99AFBC09FECD4CA2FA021782F978F4341C82A0DE79B2584553F724
      17ABCF94ABCBD3CE5F47C0FD7AB509505C89916226640E59902C27B395ECA4CB
      E061ACFD1C9506E7901FE180243B15F5144D16A90492277B45C82B603B8437BF
      CB56CA82D5432E952EF174F334536CD55340767D1808FBF248A1AC3E902F3B4F
      1457F8191B81BA98F5357B488C3C008D8F04F318149C7F6EB553D37758075253
      254F44C5B4E8A3B3D9BCC4C7325BC81FF19DF8301F59032A62BAEFA9DC32193C
      3F597E3C55DCF00FA3070BE9E631E2328D0114E0DF01490BF7E4CA7F0F80551A
      CA86279185FD70694B7FF9ECCE78153560CC6DF0FC2449D5EECDB0350DDC45CA
      047AF13CF5136D3A130F68898C22AC6AF802E35C5E6C2CB04DD706B14F959BAE
      9506A7225CAF1F581B55D40ECD7C3DB83ACE81397F4C31A6E241DF5E6EA107F3
      2F44A3A6776EA43913A6EE7D2F0CDCF9B437B57BAEC6A2DC86D742238AAB21E9
      D97D5A52A34D1EC73B06F3A06A7BC9F251714A365028DFB83049BE39DAF0B268
      E805C12A585835DDAA29801AE217870BE595AFB3E49B6385F664D90607EC813E
      6D03954ACEF4E7CF40C52396241BC1C70C8C2118DB94509DDE5E9F82521A240C
      24B64A581FA40BB8D520495E64F5FE02B96D6972FD22988EA0A77BDD0D9574E6
      806855C272260159CF9BD0BADEDA9EE331A7318960D9C838952A96012220CB73
      50C85E123F9FC9109622AF74C4ED2B1406A60283D4341FDD742CDEB357472864
      DEB732553EF83EB761A888D59650451FEB112113707D57E9564D0964EBFF3D58
      2013D7A7574F9E6C901B88DC0F237D0ED81E4D9B17BFCA9429B0F1F4FB7C0F32
      1E88D774AAE2167BFEB6D5FA3C3E9C6224747C7E77BC5C7A8EBFAAE1E9FF4152
      C37817742F029325C7750F3395CDE30C48D58CB2D2FEC92A2A57EF1919F601CE
      E9FC8D0AF252F54C11015EF5BACFAFA925F2E417E9B2F66041C32289A96F90C1
      EB4727A8A0296BA4484D99054AD364D0EB2661A2A585A53A1AAB0BD559DD35C4
      F035E097ABEF6CAE1E966E167A18EAEDA2638C05C87F19EAFCE84B4295F2E20E
      7067D328FD412FFAFA09BB3B31AB54C94B22C8287F31CA5DE8BE2292CE8FF693
      CBB0D97A407B641E3891E62EB0CC86594F0B7ECC3555A26B16E8EA9A372C56E5
      9C6763C30D595049EE4F8532F79C941503495A608F197BEB8515DE9805BDCDF4
      9911316356A442F3C81153BE1917088A0FF3565E8B9126B3790CA07B9F210726
      576E4E2C94E359655252AA276B1B98AE696A8EE52EF81EA3A5F49BDD044585A3
      7DB47B9A643A64133D041FEDC96B38D6875D35F6B270F9CF4D1ACB7B765DBACC
      DC9C65206913E64E9B29CF40D218616114FE4CBF12C3112C016122453FB0BAFD
      A9F5E0C975C8E62130A38732E15DC8C26F8FB390AB010C4EDDC3705EA4AFDC7E
      71888CED1A663ABA4B3885F5180375795D454E5DFD808934A06EB2BCE6B09956
      EDCF97E18B538CC8023360FB61FC625119A931E16F09CB54F468E2C6B11A9FDC
      F05BA1DC04D5BBA0AE5A9DF222F8C1068A5185626681D57533A106530E149578
      20A15F7F1C2ED0533D23544A9AD930C8DE941219B934457E4D6918658222E5B3
      BB9A4BEFD6814AFE5FFBFE29C52D706DFC2377622CA14C8AD0E5512F92DF75ED
      8395FECE1CEA57BEC992A73F4FAFDB64B010AC40A0914A59600698B0C85298E9
      5BB2E4645659A3245552D364B5E173D744CA3961E6A88A062FC5802A726B0065
      8A7622839A2C07A23DFA257331B4679F013E38812A7827157062B711DC733C76
      D6AC41D14A1E311569E1EE3AC823A61C770C068B8B56ACC50C64839DBDF065A6
      4AF925B21A3B1FA12F94A5D7AEC7868AAB7D43716DA89ABF0C6AAF3780304677
      0B93F787C62A113BEEB3D3327B5B96B1E6AB2197865326B10A9C99404AA2BF03
      2176FFA561AA68F8BA79A764C7F162B776346F74479750A5C5994D16A11A4DED
      691EB5A78A3A9FC605DCF71268814CF4348A0D5C01E5D3D08F5264C7EFF54C70
      D1F320D6C0E4A1CDC8E4D28781281DF662030D22929E10A617011564712B6F8F
      5755E074EDF7057F3C916D3E044D7BE42118682FF48D32ADEA523919BF365D3E
      667246530316AC4B829FCCC5AEEE6A22E172C9DE3C2812A9F5F3C4E0A7ADA0BC
      7C35F61CA5C4B0DC933910C59AF2908A2F5C4F24D995064660378C4950AA2A2B
      BF5912C29A5633400A1ADF2342A64275AFAD26C800667792BC3F3FD840DA5243
      001EB70776F6825BE36AD5FC28436EFF3845565584C1EB0474BDAD05255DD932
      40762515CB0068D47AC49646ED5D44D21AFC679051FCB5E9DE04254099CC3172
      69B2720BD50A7A4EF6DA7BE2A58549E14B2D89D946DF2436723E9C19C0F35045
      7F1BACBFB6EC249A092397A498DECC35018D5AFAF168BF1D07E7EAFDEE4949CC
      B407021F2392A0834B5723CEB1EE9E04D5AF673678E3B80ADEE81A0CE1774BAC
      A9F5A6C7E0AFAB4FCBEE93EEC9BBC6042E1CCB59A875B902DA73B46DD63229BF
      1ECFC2DC0716A531FCDF6F6E92EC49B2C7EDA6134947854D30B0D07DDB05C9AA
      3BE2954BE5EF9B32E56F1B32CCED7220F8D1ABC255855F6DB00EEA25E3528D52
      B7541FD06505D7A3361382AEB3FB3E4D93B2BA06DBF0B31950B45835C840E4E0
      05C9F2F511BB1AFE1E9144728926926EB82044968D8A53FD7C987CFF8F2D99E6
      D46FFCF6C64E21F2F1C8B86ABD801C81AE1D16579D29F9706616EFFECBC254BE
      A18F8B0D459FE275F392645F5D3D33D8E413FB44AA6A0C36F6180AC5E1F303F9
      C6DA2F2792289C82B8D0C32E0A9525B7C5A9DA1AFAA9FEB535CB1C92F030F43A
      B3CA82F191AAC0E8E307BB7255E1EF19950F67E2B9985AC6B85A77176A39E987
      A2E1AD6DD975E30E589FC77B45CAAB60AF4C9864AAD7AA5FF38CB55F472431E7
      CB875F1C01FB66F18838A5A931C97DCE772691A4CFF442280FCCF4A18BC3F819
      1D93AC5BFAC737595A6FB9B305410ECFF5D85511F2DAA068975FA317820A4471
      5DC20558FB47700F568A30DCC228ED273FDB91B49948D21A86E18BC37524F16F
      7F553BC30D24E90FD41C06EC00C836666CB2AF0153A8984AD5A055758D097A0E
      FCBAD1092E43FCAC7FBA76EE29C71C6FF380B57F14487A5D21C9A614914F7FB1
      23E9EB4A9434B473882C05BBA366C3D4AD37BE751349FA43D913108D4D75262B
      082680E53E1FDE1AEB32CC42CFF5F0CA6CCA3C60ED9FBA3A527969789D611FA5
      C867FB2A53925D260DECA03957E911A6FC98F655E659BFC00D02589BFB2F0F57
      7693ABE567ADF0DFBFACC39A61333F7F6D944C81F2C088039DAC1B190E719049
      BA7627D2B34D80CA56A50FE965C89067EAEA01FFA301D6A61B14872F60AC4707
      39F7472EFA294FEE5E9E62CE015005E8DC7D0C36197DA6833EAC9494B2A2C24E
      02362F823DB0714C82EAA43577971636F76061CBD9037AE87FFD68268A3AD7F2
      189C1C04553CD74DEF03098639E2775C1CA242F57DDE3FE518685576D22EFCE7
      1223519E6E218617E8E8A3BEEED1FAA3B30828A797C20E649EA033606D2E1738
      29C73D3B90E26515D4FCFE6D03E5A07E8D5315D7985EC9771711E8A5FC6FEC20
      CC2EBF03E6D91D7DFF0F589F370637539DC79CC1891C4DC33B98E68686A73BB6
      D783833196C57C8EEBE727699D2DB5BAFFF1155E70D176CB626877C33A052B4C
      12A3079BBA9CF14C0107AF8033605C8CE96F7B4EB9E193D4DB2D7C092431379C
      A5456C27A07B98EC5E707B3C492545420D7CB657848A91DC0476B7FE607EFD32
      85FE2880551BD72342D5BE3A03A697F5FFE094FC70C20D24E1BAD7770C96E5A3
      34ADBA4A92A43D9E541199C50FEEEE1AA67A34102F9AAD544757C71F0DB0360F
      760F5719A7CE204347D22EB79024B09122948D446FC35DCB5264F19E5C8330F6
      620CAA96E370594BAA9A5AB8E2C31F7355C28547EA91CE363041492CB2EB0799
      B4D78DB4646F20633E0CE551309419A620BB74282F5A8DFB0EAF9C2DA4AB9AEB
      A06AB24E680F6EC69D715639453D054C3EB9C6B54C62C08E483A64568ED38D16
      E62D1B4627C885B17ECA7D3670DE29C928B06721E9D9428E7977A251D97F6E8E
      559D87993D3AA4726CE37F1A98E0C98E94CE605F5A8952B652724D6E6AE0A26F
      BB40597547735565C1FAA88756A519B6A943DE5D950C5692F5984BC3E4DD9B35
      B9A4DC439B32FFE7298971B265239BCB0D1D9D67E16E49D492EE4D87D21DDC41
      F452DCB3A2520A9D43066B0DB9E017C4FA29EB9AB90EAC2D6531737D62F8673D
      E8DE7D26E9902D3903B6681BBDDC6471835E61C25815B37B6B60950EB9E055AB
      2A44AB4A60C8E26658D7542B072F48926D891EEE1F74260373E3DA04A8FA6157
      F554EC2131D5AC8315D7BCFA3CB0BA3B9B4B38AEC94E67772E4B75EC4FEE5055
      51B53E49BF00FBE1BCA367FB4FDB922993D699CC77F82382839AEC0CE83E1BB1
      244556FE623E54C1AA7EB6E321AB1BFB69AA7CF883BD50AF6A7D52CD957E4CDC
      A796C793BF987E35705E92A33FE97F0A28D419C2A16FCD19FCAEB32B531E1ADD
      4F4AAF3A9B2AD2E737605EA506F2552AFD08556B66454B76A436C32EF5C4F4FD
      D03ADEDF99F3BFC7F2F4100E6587ABACDCB5870A64D84726EB8A71CD07BB6B09
      2E24BA595BB3E589B595D2E7AAD4CC126AA83E3726C794261AB6EC8543AF7883
      54129C45E0A56F56F6547505AA006C4B96292A8A0AF256B2884D4568C0DEB0A0
      52971927D5E735F571104D81983F2C5686770E51950ECC7BFEE8470F367E3AD3
      404FE267FD108FEB71064CB661A06EE7EF26DC41B8E6DDB041DFBD3946E5CE33
      5048AF8E4348C8491F07023BA2586D5EE2AB7744D12F38B04390CA7BE0E1503C
      4287C9E48DD26BF50C002EE21C871E7FCE80B1B7E18B936B2FB6D353C43ED13B
      9EB14E76187EB7F190DD59C07C93D1188BD407531D3BA21026FF267A16091408
      0B7B0B45F2637A6619351CDE395865B2B02CE3ED1D397F7C2461830EC533CFBB
      25B6D2517655811CE9CF2B5365AE99160A58DE87AF0C57A172E636928AD8F1CC
      210D6C3B1406B03ACB69ADEF5D554A7AF617111F3F5E885DBA3E10AD77B59A6C
      6F6835EC8E121DE8ADCED7BB113CF488271B123635E8E5FB1FDFD65CF5557205
      0C8ED28E5427A8595C5F93073D3202CBF63C8C3D51C67F5B617FD25B300E1799
      A38EE574381CCB49BF3B5B1FFC6785F02C24D17AE1BC3E089A9EEEB7E219484F
      7E9E5EF7DCE7AACE8B33A169A0C3623242CDCCA0DB3ABBAE94E7E3339CF3E6B6
      DA0F24615A1823BBACDF22CCDA9A254F610D1D9690FDEE18364A5693985A53BF
      3B82BD73A4CD572C5EFF168D3FDA77C14A687A1D637C152FBD7B79AAFB7539B8
      8E0FE89CFCB867EB0009042BA5A79D27A4E434C6B10926E6C71A5A7ABAD9B1A5
      369B94D521A4865A1DAAB8EE30207CEED018C53A79F22703AA472A1229298B1E
      02077B4F9D0538A363A59FD7D028D7684EA80E86A76C4A306EC4236FD88F8E5A
      1FC99C39CB47DD607BFC1DABBDD953DCB039E806F9F8977CB5AB9AD458D61134
      A977A43CDD2BC265E1018105643C0F70D9DE5AB45D9D752E1FD95C5567B0E3E6
      032BD364FEEE4A5DA02B7AB0DAAA3772AF3E9309FB35753CBB88746FEF664C60
      051F5B80F1C834024B3E58086636C79B076D30A7DABF86727C16633D0ED671B0
      294A626C5AB5DDE43E91EA28B8DA1044E0C18B54A25CE67EEB87619175DED145
      639D3CEC6B1CD6ACA8A23DAAD6CD58E473F5DC2F9AE9664CA00742F505B755F4
      05D76FCAF69BCBF45D412A6028E31FDF66B93EA043573DE90671D574902D699E
      5D97211B7E2BF0FCA1580680CB9E8767621929CF5E32E376E33C879BE022AACB
      C9D591F242DF4895E443EE337C498A239B23687DC1BD2C65C2B2E137AA377077
      7E8B178E8317A9F3F728CC3E14FAF4F4051FD231583EB825466573D24BFEE0AA
      3459BAD7453B173DFCB1F9DE04FB11A6CE802168B611FDF7CE1C49CDF5602747
      2B9D2C16D5A5853D1CCC14321398BC4879BCBEB6AE282CE904C7796B483345A5
      7C2EFEEE8BCAF5C17BF0BDA1785F870EFB04CD9F47F0D6CFED7BD2F147E32157
      A6F78F52AC811505633F49952F7F737260071BEEAA0AEB04537D1D385F668312
      59F489E5163640CB1A07E4909B3313F52F60BF23600B859A6CE7C6981A2BE5DF
      FD3EA796071019707E90BC07458135C4646D6C81C0E771005E642C1E6AB93A6E
      8267F4BA7D5605A1A6535FF44950C8F2E42D260BF2220C1DF31C06679D8E49EE
      AF5F1F5DAB0FCC11D471D6B8DEA23DB9B2E148A1EAFA6BB3BA79CCB6439507CF
      36E2594B54AD59446CB6CF8431179E29CB3A2B97A607FE44CDF5BDA1B1AAC914
      BF4A757BF2FA8CAAF2EB65292B9F245E5E65B51D1FE7C6F949D21D63B11887CC
      E37E3C2F9C7D836ED78522CF61B8FFD334D95E53030ADD3DCF18D5A0F3DD6B27
      CD54A743E925CA2DF51590C596D1A7C00A59546C35CE71B567AD5774EEE246A2
      33938B45B59F476593ADB9DB0891089ABE25539DDA52E2AA5B0BFED4A35580EA
      BAD5498FE0B281080F62CCAEEC985E838DAF9F9F24F53C3F89A04E22B36AE468
      B3DE2EDA496461C6A4D8F1986AF9CD7A8E343D12AC12DC72B4D029A2D852ED56
      371AB33B024B3BD97E9327CEB00FC4EF50DB4FE7972B9598F80A00FBA531CA03
      205B83B5321ED622CC5B355AAA0B30F9FEA54D99EAC0DFDA10C4D6376C274D5B
      92C0360B3C7526B5B21DE57012193E9CDAB6D639983CD34F3772E980F5F6AA38
      D34F9F5C8B701FD52EFAC68EDAC21FC92C95C7C1BB57D674EA979E3636051A0F
      4BE2FDEBD1D5D1D3C0C31327437B9DF7638E94978B5379CBCFD935FFD581CDA4
      5584E62D5F0E439F2A7A95E4FD53F8FE186872EB241FDC8607DFCFE854EB3CCC
      AF50852251ED744C75842828EA35C89C11BA2B85BEA917B103694F543B815297
      6944124F74714736341630076EC2BA74D9C8743667A03FC783504026F78E50DA
      2E7146C7E9936B4F4B72650AAA381D9318A7677666C7DA27220D78CEAC41217F
      EF17A55CFBF4559197BFF7438EBCB4394B92B26B6E8DC64C99BFF58992BEE705
      9E1129E7D4E016ECC99399904189AE4E57C31AB700D54C86FA3EBA6BA8E2088C
      09D17498F26566D5704E239D336B80B3139B45F4F38EBC647C8F70E5FE09D75D
      3FCC479BF265868AEE563352F583DFD99795CEC7B6514DD3C09D5AD877507818
      CA5EBD3FDFB9FCE1C778ACBE6D02E50518C0C6910DACD0E3F1E1ACB42FACEC81
      69E4139B09D5CF3E9F291A45D9591F7B7EDF7A61883A73F57CBDD7298DB9D9DB
      73E49D9DD99242B7BE2355E98A5987183F19835D4996E94EDBCDFA00B562E66E
      F30063969D2821EF4CC7C0868A0FF756EEAD072F0BB31BE6FBD34A65D28674D5
      26C05AB9155C964290CDFA36D649D3911BE5EC73C2042826DE819AD5293626B0
      30156C9C18CA84BEF017C360A44B6448876015EEE0B7D93260D6B759CA482D2C
      B655471666C478CBCD17846004A98E61C175D4CC5C013DF93B2077D8C28DE754
      28E7AEB315C1C207F95B64309EE37170091EA448A069C0BEA9E41235F40E6706
      EA33E0810BC4D7DBAAFE560C45EA958B1B094984C7B761E6B1FACA0A67FD30C6
      44D16350C6A2334B930A021D972DF53E08F95024788AF11C50150FC955DD896B
      A02CDA385D13FC60DF04494FC82EDA3BFCAC2E0A21099FB908FB4F97CA66B0DD
      2F0E17C88F492592E7EAC417FCC91F1A18E526A987DD5E82F43671F4B2BCBE2D
      4BDEFF21B7A630CB7E8C27B067610F156B177FA9F6437F1B1E49061832AAACD8
      4B7C026EC51B6A7E15CABF4E1D97C2887C02728A6ABAF1A0E4E36C864B6F3ADD
      40D516CCC15B4064B781DDC334DFCE186CFB465B88E710F1DC3F2A2A46076A36
      F628804C492FB0AAD36A78140F7307391851568BAA1F425D0DF47B86E27EDC18
      ECCF3AB05D905DBED21E235B7B15DC60374B54AAAFE246E171AF16CB6EAD0DA6
      D489C5352C92083C4D934083D75ADE4D57D1FB57BA3E1E3CD08F0ECD6015E1ED
      71AEBF5A580235AAADC735D643F7CFF1AC525CA606F78F5A40ED73060FD94D8C
      E193205F2F15402485F12BD42AB99805A556F5AA52776D2EDC49FA75BD7081D6
      11BED2AF5DA00C874CBDB2A5BF9DD5F21AAC67E51916AACB72F583EDD982FF3D
      5C671AEE93AC0EA0E7FD5E727EC86FE3228930F1A0B6103C10D626EC4AF1A868
      E534950B7AB0B9A220706F82BC615F6EF63B35E2375C4BBAFF372516AA966B3C
      5B88C5C2A58ECDDA6BF062B8FD8406B2F1473F209985099C07DBEDF46E1DA028
      D6300798CAB6FD44B13225782856667E8DC7F61C102634DA6C4B30C712A53931
      C2EA709AD89981248291574E43ADAC8C8744809A2C9453BDA40A55A92441208B
      FD5EE9FBEBD52A5025611AC09DCBD4DDDD10C83B4E1481B5942837505A81A3CF
      CE1143AEDAEC8B42B0977E8E05B532AAFA97C4FB49F716012AD9845E135F0743
      8DA5955BB059689832BEA590535D76917A3EC63C664233DAA79E9B1BC9C4A1F3
      4D872403E89DE002322660B3B19DE4BDF8F4018C56D5D6906C109A1383813740
      5E0D00D23A36F3B3CB2D0398BE4B359E88A3D03E06967812AA3C3340D9AEBAE2
      BC0AB02D2C14A993D7A0339546F63961DED20AAC8C4DE9A9C0F01C8BAABD6299
      37476F3E732E561F285067EE1519368FA5DACC7760CCC2F3AD0262A8FD68193B
      0D443D9E471281ECCFD74FD42182F43A97582F122DE972B8B00EAA2AE8F60523
      B8F454F781B1C84340A88E47BBD0E8C822899C32FD4011C3562651506E11594E
      7F8B7B12C94C98A7E2F215B43E2A0374D83A552C34CD0DB24716E0EFC99AACC3
      17F361A8CFEAEC91A5F4BC2366D2619DAAE8A02DF706755D864F49592C908AAB
      F67D078D8E8780B486517B519CBF5CDCDC4FB9FF5B810AD89C826C8BAE186F13
      261491510424E681E2488DA4441EB9C3900735BE44BCCF3534BE9AD571FE8572
      6711FEBB502CDE4794E6160C5B312BD7B40FAEAED038DE32E5A508D78C15953B
      51EE83DD07ABCEC2040C86E7C9C46B5E6E078DCE1FEC89594654BBD998828354
      C6222C228D67A4ABBD80EF1797694D6C69B4A61796AB234B19FAA6ADC490BF72
      FBB8D2F83428C2D88DB104F35809A195A82C589B217BEAA75A9F594832E0A93D
      307B4344534F8193AB614E6D39DC1A6FFAEBC8BA1C23D6E5356C8EAF0E813E4B
      C57F4D7DC739D07D734C580EC9943668DEC07C8642A85527B5690DAB18D4064D
      E377569415AA539697B62BAD368640C837581FD547B43ADE78717435790E18F8
      2262A80CC018B56D85903B263E3E9ABFCDCA6A097F918320AAA5C31B7DB99A3E
      38701FE4707BE0215B37FE14C2CAFDF1DA126FA86C74C3E8229A1783328C01AB
      BA1E464BF5842C8C492027316885939D61D7D8F6013129408CE626A020F38171
      7EE2B8C8DC6B9A74899A1E498EF0F4014D5DA30BC6A28B28BE5AADF40D52236C
      891913596D4453E7995D4B6399D99AAC95F4D59F890BCD7C34DA314CD149130D
      298918478110087EBCB7D932607C97E98E628DB2C381FFE37922B32F6CEAD5B0
      C3FF012DC7EB29FCCB48530000002574455874646174653A6372656174650032
      3032312D30372D30315431393A32343A33342B30303A3030CE3FC93D00000025
      74455874646174653A6D6F6469667900323032312D30372D30315431393A3234
      3A33342B30303A3030BF6271810000000049454E44AE426082}
  end
  object eUsuario: TEdit
    Left = 136
    Top = 28
    Width = 225
    Height = 26
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 'SISTEMAS'
  end
  object eClave: TEdit
    Left = 136
    Top = 74
    Width = 225
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    Text = 'SISTEMAS1'
    OnKeyPress = eClaveKeyPress
  end
end
