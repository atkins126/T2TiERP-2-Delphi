object FSpedFiscal: TFSpedFiscal
  Left = 401
  Top = 194
  BorderStyle = bsDialog
  Caption = 'Sped Fiscal'
  ClientHeight = 463
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 497
    Height = 65
    Align = alTop
    Color = 14537936
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      497
      65)
    object Bevel1: TBevel
      Left = 61
      Top = 50
      Width = 429
      Height = 6
      Anchors = [akLeft, akTop, akRight]
      ExplicitWidth = 605
    end
    object Image1: TImage
      Left = 7
      Top = 7
      Width = 48
      Height = 49
      ParentShowHint = False
      Picture.Data = {
        0B54504E474772617068696336240000424D3624000000000000360000002800
        0000300000003000000001002000000000000024000000000000000000000000
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
        0000000000000000000000000000020406020305070802030512010102200306
        0A0F03070C010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000305
        0701030407060204060F0101022104060A4715202F81253B57B927466FE20B17
        278C0102042403080F0400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000030508030305080A010204180101
        02340E16206C1F324BAA304D74DD3B6193FA3C6296FF3C6296FE2E568BFE1F4B
        82FE153052CD0305095202060B0F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000003050702030508070204061201020329080C125719283D94294468CD395E
        90F63B649BFF3B649AFF3C669CFF3C6599FF3C6499FF3D6599FF2E588EFF1D47
        7FFF1F4A82FF1D4476F40A1627920102042703080F0400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000030508050305080D0102
        041D04060843131F2E7E233B59B9335685E93C669EFD3B639EFE3B649DFF3B64
        9BFE3B649CFE3C669EFF3D669CFE3D699DFE3E689CFF3E699DFE2F5A90FE1F4B
        83FF1E4981FE1E4A82FF204C85FE163054CE03060A5302060B0E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000306090203050808020406150001012F0D141E681D314AA52D4D
        77DA3A649CF93B69A3FE3A66A1FE39649FFF3B649FFE3C649FFE3B649FFF3A66
        9FFE3C689FFE3B679EFF3D69A0FE3C689EFE3E679FFF3E699FFE305D93FE204E
        86FF1F4D84FE1F4A84FF1F4A83FE224D87FE1F4578F30B16279001030624040A
        1203000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000003060901030609060305
        091001020325070B105117273B90274469C9376194F43A6AA5FF3969A4FF3A67
        A3FF3965A1FF38649FFF38639EFF3966A0FF3B69A2FF3B69A2FF3C68A1FF3C69
        A0FF3C69A0FF3C68A0FF3C69A0FF3D68A0FF3E6AA2FF3E6BA1FF305D94FF224E
        87FF214F87FF214E87FF214C87FF214B85FF224C86FF234E89FE173155CE0306
        0A5003080E0D0000000000000000000000000000000000000000000000000000
        00000000000000000000050A0F030306090D0103051B0305073E111C2B792038
        58B6305484E63967A2FD396AA6FF3969A5FE3867A3FF3865A1FE38649FFE3764
        9FFE36639EFF36619DFE36629CFE37649DFF3A69A2FE3A68A2FE3C68A1FF3B67
        A0FE3C69A1FE3C68A1FF3D6AA1FE3D6BA2FE3E69A0FF3D6BA2FE326096FE224F
        86FF235088FE225088FF245189FE224F89FE224C87FF224D87FE24518BFE2148
        79F20B17278E01030623040A1203000000000000000000000000000000000000
        000000000000000000000C141F331A2E469E294973D7346097F83766A2FE3765
        A2FF3864A2FF3865A3FF3866A2FF3764A1FF3866A2FF36649FFF31629CFF2368
        A2FF186BA6FF116FAAFF1475B0FF2A80B8FF39649DFF3B69A3FF3B69A3FF3C6B
        A4FF3D6BA3FF3C6BA3FF3D6DA4FF3D6CA2FF3E6DA4FF3E6EA5FF315F95FF214F
        86FF224F87FF245088FF245089FF245088FF235189FF224F89FF224C86FF234F
        88FF234F87FE173053CC0205084E0409100C0000000000000000000000000000
        000000000000000000002B4F806934619CFE35619DFF34629EFE3662A0FE3765
        A2FF3867A4FE3869A6FE396AA5FF3768A1FE2E6EA5FF1F7DB4FE198AC1FE2795
        C9FE3EAAD8FF54BDE7FE64CCF4FE4F9BCCFF3C6CA5FE3D6CA6FE3D6EA6FF3C6C
        A5FE3D6CA6FE3D6CA6FF3D6CA4FE3C6AA2FE3D6BA4FF3D6BA4FE305E95FE214D
        84FF234F86FE245088FF245089FE245089FE245189FF24528BFE24518BFE234E
        87FF224D87FE234F87FE204577F30B16268C02050820060C1602000000000000
        00000000000000000000335F996735629DFE3565A0FF3665A1FE3868A3FE3969
        A4FF3A6AA5FE3A6BA6FE396BA4FF3B8EBFFE47A9D2FF5FBFE2FE73D0EBFE79D4
        F0FE82DEF5FF68B5DBFE4881B5FE3D6DA7FF3C6DA6FE3B6BA4FE3C6CA5FF3C6C
        A5FE3B6BA4FE3B6AA4FF3C6BA4FE3B69A2FE3C6AA3FF3C6AA4FE305E95FE214D
        83FF204C82FE224E84FF235088FE245189FE26538BFF25538CFE24528BFE2553
        8CFF235089FE234D85FE244E87FF254F87FE172F51C703060A45050B14090000
        000000000000000000003665A0673666A1FE3767A2FF3869A3FE3A69A4FE3A69
        A5FF3A6AA6FE3B6CA6FE3D6FA7FF71BADAFE85D1EAFF81CAE4FE71B5D5FE5993
        C0FE3F70A9FF3A69A5FE4170AAFE557FB4FF5881B6FE4070A9FE3A6BA5FF3B6B
        A5FE3B6BA5FE3B6AA5FF3C6BA6FE3B6BA5FE4470A9FF567EB3FE547AADFE3660
        94FF214C82FE214C82FF234E85FE235087FE25528AFF26538CFE26558DFE2652
        8BFF245089FE25518AFE234E86FF234C84FE244D84FE214474F00B152579050A
        110E00000000000000003767A1673968A3FF3869A3FF3A69A4FF3A6AA5FF3A6A
        A5FF3B6BA6FF3B6CA7FF3B6BA6FF3B6CA7FF3B6BA6FF3B6BA6FF4170AAFF537E
        B3FF638ABCFF6E8EBEFF637DADFF455A8CFF2C3D6CFF354D7DFF3B6AA6FF3D6C
        A7FF4976AEFF5A82B5FF6589BBFF6F8BB6FF6E7992FF605A62FF5D473FFF555D
        74FF4F74A6FF355E92FF224C82FF224D85FF244F87FF255289FF26528AFF2652
        8AFF255189FF245089FF255189FF244E87FF234C83FF254B82FF264B81FD0F19
        2A3E09101B03000000003A69A26A3868A2FE3868A2FF3969A3FE3A6AA4FE3A6A
        A3FF3A6AA4FE3B6AA4FE3B6AA4FF4C78AFFE6288BBFF6D8DBBFE677EA0FE495A
        7DFE354783FF24346FFE1E2D66FE1D2B63FF1A295CFE243566FE5F80B0FF7287
        ADFE75758BFE705E61FF6E4938FE6A3816FE65320AFF612F02FE663409FE6531
        01FF603D23FE566078FF4C73A7FE356195FE255087FF244F87FE2C558BFE455A
        77FF516788FE406CA1FE2C588FFF254F88FE255087FE254F86FF274C82FE2543
        6F3000000000000000003B6AA26C3768A1FE3766A0FF38669FFE3967A1FE3867
        A1FF3967A1FE3A68A2FE577EB2FF6B88B5FE485263FF3B3D3FFE373737FE2429
        3BFE29397CFF293A7AFE263675FE23336FFF1F2E66FE19285DFE14214EFF6C41
        35FE854B30FE804828FF7B431FFE763E14FE70390CFF693402FE6C3809FE6A34
        01FF693300FE673201FF603C21FE575560FE515E75FF53535CFE674120FE6934
        07FF6A360AFE634431FE516281FF3C669BFE285289FE255087FF275085FE2C4F
        823000000000000000003A68A16C38669FFF36659EFF37649EFF37649EFF3866
        9FFF3967A1FF3F6CA5FF6482B4FF424C5CFF3C3C3CFF454545FF424242FF2B2F
        42FF2E3F85FF2D3E81FF293A7AFF253572FF203069FF1B2A60FF132151FF7346
        3AFF8D5235FF884E2DFF804822FF7A4116FF733B0DFF6B3502FF6D3909FF6B35
        01FF6A3501FF6A3401FF693401FF683301FF683302FF6A3404FF6C3606FF6F38
        09FF71390BFF713A0DFF59341BFF294169FF476C9FFF376196FF32588CED3155
        881800000000000000003C69A06C37669EFE36639DFF37629DFE3E69A2FE4F78
        ADFF5E84B7FE698BB9FE546E92FF3D3D3FFE444444FF4C4C4CFE454545FE2D31
        43FE304187FF2E3F82FE293A7AFE253572FF213069FE1B2A61FE132152FF7448
        3BFE8F5437FE894F2EFF824922FE7A4216FE733B0EFF6C3503FE6D3809FE6B35
        01FF6A3400FE6B3501FF6A3400FE6B3501FE6C3603FF6D3705FE703808FE7139
        0BFF733B0DFE743C0FFE684126E848597A8C4461906140659A3B496E9E160000
        00000000000000000000466FA36B5279ACFE5E82B4FF6587B7FE5D7A90FE4862
        65FF39503FFE2D401FFE202D15FF444444FE494949FF4E4E4EFE464646FE2D31
        43FE304188FF2E3F82FE293A7AFE263573FF213069FE1B2A61FE132152FF7448
        3BFE8F5437FE8A4F2FFF824923FE7A4216FE733B0EFF6C3503FE6D3809FE6B35
        01FF6A3400FE6B3501FF6B3401FE6B3502FE6D3704FF6F3807FE71390AFE723A
        0CFF743C0EFE753D10FE733E16BC000000000000000000000000000000000000
        00000000000000000000567AAA054D6E9E3F4A6A9A903A5E91DD30471FFE2F45
        17FF33491AFF33481CFF273519FF4A4A4AFF4B4B4BFF4E4E4EFF464646FF2D31
        43FF304188FF2E3F83FF293B7BFF263573FF21306AFF1C2A61FF132152FF7448
        3BFF8F5437FF8A4F2FFF824923FF7A4217FF713B0EFF693403FF6C3809FF6B35
        01FF6B3501FF6B3501FF6B3501FF6C3604FF6E3706FF703909FF723A0BFF733B
        0DFF753C10FF763E12FF773F12BC000000000000000000000000000000000000
        0000000000000000000000000000000000003F5B7F02273A360D354C1CF2374E
        1CFF39511FFE374D1FFE29381AFF4B4B4BFE4C4C4CFF4D4D4DFE464646FE2D31
        43FE304188FF2E4083FE2A3B7BFE263573FF21316AFE1C2B62FE132151FF7347
        3BFE8C5336FE864D2DFF834A24FE7E451CFE784015FF703A0BFE6E390BFE6B35
        01FF6A3400FE6B3501FF6C3603FE6D3705FE703808FF71390AFE733B0DFE743C
        0FFF753D11FE773E12FE783F12BC000000000000000000000000000000000000
        000000000000000000000000000000000000000000002E431F06374F1DF03951
        1EFF3B5220FE384E20FE29381AFF4B4B4BFE4C4C4CFF4D4D4DFE464646FE2D31
        43FE304188FF2E4084FE2A3B7BFE263573FF21316AFE1B2A60FE13204FFF7045
        35FE8C5232FE8B502EFF824924FE7B4217FE743C0FFF6C3604FE6D3809FE6B35
        01FF6A3401FE6B3502FF6D3604FE6F3806FE713909FF723A0CFE733B0EFE753D
        10FF763E12FE783F13FE794013BC000000000000000000000000000000000000
        00000000000000000000000000000000000000000000364D1C0538501DF03951
        1EFF3B5220FF384F20FF29381AFF4C4B4CFF4C4C4CFF4D4D4DFF474747FF2D31
        43FF2F4087FF2D3F83FF2A3A7AFF283574FF24316DFF1F2D65FF152253FF7448
        3BFF8F5437FF8A5030FF834A24FF7B4318FF743C0FFF6C3604FF6D3809FF6B35
        01FF6B3501FF6C3603FF6E3706FF703808FF723A0BFF733B0DFF743C0FFF763D
        12FF773F13FF794013FF7A4114BC000000000000000000000000000000000000
        00000000000000000000000000000000000000000000374F1D0538501EF03951
        1EFF3B5220FE394F20FE29381AFF4B4B4BFE4B4B4BFF4E4E4EFE464646FE2C30
        42FE2D3D81FF2D3C7FFE2A3979FE253572FF213069FE1C2B61FE132152FF7448
        3BFE8F5437FE8B5030FF834A24FE7B4318FE743C0FFF6C3604FE6D3809FE6B35
        01FF6C3503FE6D3705FF6F3807FE71390AFE723A0CFF743C0EFE753D11FE773E
        12FF784013FE794114FE7A4216BC000000000000000000000000000000000000
        00000000000000000000000000000000000000000000374F1D0538501DF03950
        1DFF3B5320FE384E20FE2A391BFF4B4B4BFE4B4B4BFF4D4D4DFE464646FE2C31
        43FE2E3F86FF2D3F83FE2A3B7BFE263674FF22316BFE1C2B62FE132152FF7448
        3BFE8F5437FE8B5031FF834A24FE7C4318FE753C10FF6D3605FE6C3809FE6B35
        02FF6D3604FE6E3806FF703909FE723A0BFE733B0EFF753D10FE763E12FE783F
        13FF794013FE7A4216FE7B4317BC000000000000000000000000000000000000
        00000000000000000000000000000000000000000000374F1D0538501DF03951
        1EFF3B5220FF384F20FF2A391BFF4B4B4BFF4C4C4CFF4D4D4DFF464646FF2D31
        43FF304187FF2E4084FF2A3B7CFF263674FF22326BFF1C2B62FF132152FF7448
        3BFF905538FF8B5031FF834A25FF7C4318FF753D10FF6D3605FF6C3809FF6C36
        03FF6E3705FF703808FF713A0BFF733B0DFF743C0FFF763D11FF773F12FF7840
        13FF7A4115FF7B4217FF7C4419BC000000000000000000000000000000000000
        00000000000000000000000000000000000000000000374F1D0538501DF03951
        1EFF3B5220FE384E20FE2A391BFF4C4B4CFE4C4C4CFF4D4D4DFE464646FE2D31
        43FE304188FF2E4085FE2A3C7CFE263674FF22326BFE1D2B63FE132152FF7448
        3BFE8F5437FE8B5131FF844A25FE7C4319FE753D10FF6D3604FE6D3809FE6D37
        05FF6F3807FE71390AFF723A0CFE743C0EFE753D10FF763E12FE783F13FE7941
        14FF7B4216FE7C4419FE7D451BBC000000000000000000000000000000000000
        00000000000000000000000000000000000000000000374F1D0539501EF03950
        1DFF3B5220FE384F20FE2A3A1BFF4B4B4BFE4B4B4BFF4D4D4DFE464646FE2D32
        44FE304188FF2F4085FE2A3C7CFE263675FF22326CFE1D2C63FE132152FF7448
        3BFE8F5437FE8B5131FF844B25FE7C4419FE753D10FF6D3705FE6D390AFE6E37
        06FF703909FE723A0BFF733B0DFE753C10FE763E12FF773F12FE794013FE7A41
        15FF7C4318FE7D451BFE7E461CBC000000000000000000000000000000000000
        00000000000000000000000000000000000000000000374F1D0539511EF03850
        1DFF3B5220FF394F20FF2B3A1BFF4B4B4BFF4B4B4BFF4E4E4EFF464646FF2D32
        44FF304188FF2F4085FF2A3C7CFF273675FF22326CFF1D2C64FF132152FF7448
        3BFF905538FF8C5132FF844B26FF7C4419FF753D10FF6D3706FF6D390AFF7038
        08FF71390AFF733B0DFF743C0FFF753D11FF773E12FF784013FF7A4115FF7B42
        17FF7D4419FF7E461CFF7F471EBC000000000000000000000000000000000000
        00000000000000000000000000000000000000000000374F1D0538501EF03850
        1DFF3B5320FE384F20FE2B3B1BFF4B4B4BFE4B4B4BFF4E4E4EFE464646FE2E32
        44FE304188FF2F4085FE2A3C7DFE273775FF22326CFE1D2C64FE142152FF7448
        3BFE8F5437FE8C5132FF844B26FE7D441AFE763D10FF6D3706FE6E390AFE7139
        0AFF723A0CFE733B0EFF753D10FE763E12FE783F13FF794114FE7B4216FE7C44
        18FF7D451BFE7F461EFE804720BC000000000000000000000000000000000000
        00000000000000000000000000000000000000000000374F1D0538501DF03850
        1DFF3B5220FF384E20FF2B3B1BFF4C4B4CFF4B4B4BFF4E4E4EFF464646FF2E33
        45FF304188FF2F4085FF2B3C7DFF273775FF23326CFF1D2D64FF142153FF7448
        3BFF905538FF8C5132FF854B26FF7D441BFF763D11FF6E3706FF6E390BFF723A
        0BFF733B0DFF743C0FFF763D12FF773F12FF794013FF7A4115FF7B4317FF7D45
        1AFF7E461DFF80471FFF814821BC000000000000000000000000000000000000
        00000000000000000000000000000000000000000000374F1D0538501DF03951
        1EFF3B5220FE384F20FE2C3C1BFF4B4B4BFE4C4C4CFF4D4D4DFE464646FE2F33
        45FE304188FF2F4085FE2A3C7DFE273775FF23326DFE1D2C64FE142153FF7448
        3BFE8F5437FE8C5233FF854B27FE7D441AFE753D11FF6D3707FE6E3A0BFE723B
        0CFF743C0FFE753D11FF773E12FE784013FE794114FF7B4216FE7C4419FE7E46
        1CFF7F471EFE814821FE824923BC000000000000000000000000000000000000
        00000000000000000000000000000000000000000000374F1D0538501DF03951
        1EFF3B5320FE384F20FE2C3C1BFF4B4B4BFE4C4C4CFF4D4D4DFE474747FE2F33
        45FE304188FF2F4086FE2A3C7DFE273776FF23336DFE1D2C64FE142153FF7448
        3AFE8E5437FE884F31FF814A27FE7F461EFE7A4217FF713C0EFE6F3B0EFE733B
        0EFF753D10FE763E12FF783F13FE794014FE7A4216FF7C4318FE7D451BFE7F46
        1DFF804820FE814923FE834A24BC000000000000000000000000000000000000
        00000000000000000000000000000000000000000000374F1D0538501DF03951
        1EFF3B5220FF394F20FF2C3C1BFF4B4B4BFF4C4C4CFF4D4D4DFF474747FF2F33
        45FF304188FF2F4086FF2B3D7EFF273776FF23326DFF1E2D64FF152253FF7045
        36FF8C5233FF8E5332FF8C532FFF87522BFF835127FF7D4B1EFF754215FF753E
        10FF763E11FF773F12FF784013FF7A4115FF7B4217FF7D451AFF7E461DFF8047
        1FFF814822FF834A24FF844B26BC000000000000000000000000000000000000
        00000000000000000000000000000000000000000000384F1D0539501EF03951
        1EFF3A521FFE395021FE2D3D1CFF4B4B4BFE4C4C4CFF4E4E4EFE484848FE3035
        47FE304188FF2F4086FE2B3D7EFE283777FF273471FE22306BFE172557FF774C
        3FFE9C684CFE9C7063FF916F76FE897080FE8F7F87FF9D988FFE968972FE8558
        30FF804C21FE7D461BFF7A4216FE7B4216FE7C4419FF7E451CFE7F471EFE8048
        21FF824923FE844B25FE854B27BC000000000000000000000000000000000000
        0000000000000000000000000000000000000000000039511F0539511EF03A52
        20FF3E5623FE3A5121FE2D3E1BFF515151FE6A6A6AFF9A9A9AFEB4B4B4FE797E
        90FE2F3F84FF314085FE303F81FE2E3D7CFF2A3975FE24346BFE1B2B5EFF4E3F
        49FE6B4C48FE7B7789FFA0C1D7FEB7E7F4FEBBECF8FFBCEDF9FEC0EFF9FEC2E7
        EDFFB1B8ADFE9A7F62FF89572FFE844F27FE804920FF7F471EFE804720FE8149
        22FF834A25FE854B27FE864C28BC000000000000000000000000000000000000
        000000000000000000000000000000000000000000003A5220043C5423E25869
        47FFADB7A2FFD6DCD0FFC1C6BBFF8A9084FF53594DFF6B6D69FFA7A7A7FFAEB3
        C5FF34478BFF3A4C8DFF354F8EFF2E5596FF355E99FF4A6D9BFF617D9EFF4154
        7DFF202D5DFF2E2E4DFF4F3B3BFF806F60FFA1ABA6FFB6E0EAFFC1EFF9FFC9F4
        FAFFCFF6FAFFD4F8F9FFCEE3E0FFB6AB98FF9B7452FF8C5732FF88522DFF854C
        27FF854B26FF864C28FF874D2ABC000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000043582C054C60
        37434C5C3C9168755BDD9EA597FDD8DAD7FEEDEDEDFFC4C8BFFE8A9184FE525C
        56FE354567FF315A90FE69A1CAFE9ED1E9FFB6E4F5FEB8E9F9FEB7E9FAFFB8EA
        F8FEA8D4E3FE7A99B4FF495D85FE243265FE353353FF584246FE8D7D72FEB0BA
        B6FFC9EBEEFED4F9FAFFDAF9F9FEE0F9F9FEE4F8F9FFD4D7CEFEB59F87FE996C
        49FF905B39FE8B5432FE8A512FBC000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000069775A0365755432596A4680637352CD959E8AFCCDCFCAFEECED
        ECFECDD2C8FF949F90FE546365FE3E526BFF5E799FFE8CB1CBFEAEDBEBFFB9E8
        F7FEBAEBFAFEB9EDFAFFBAEDF8FEABD8E5FE80A1BAFD4E638DFD29376BFE3C38
        58FF614C51FE99887BFFBFC5BDFEDCF2F2FEE6FAFAFFEBF9F9FEEBF9F9FEE6F3
        F2FBD0C7B9E8A98468DD935D3BAD000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000068785701697A57225F714B6E5E70
        4BBD8A967DFAC4C9C0FFEEEEEEFFD5DAD0FF9AA596FF5A6B6FFC425779F46581
        ACFD93B9D2FFB3E1EFFFBBECF9FFBCEFFAFFBDF1FAFFBEF2F9FEB1DFE9FE85A6
        BEFE516791FE29376DFF413D5CFF68535AFBA7907FF0D2D8D565E6F1F031E2E9
        E511CFC8BB04000000009F745404000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000070805E1263754E5C5A6D46AB98A28E94BDC3BC31919DA00B596D7A075369
        911F4A5F9475495E94CD6C89B3FB9DC5DDFEB9E8F5FFBDEFF9FEBFF2F9FEC1F4
        F9FEC3F5F8F6B0DDE7E57594B2C4313F78C36461710F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000052689B28495D957C4D6299D37B9CC1AFB7E4EE4CBFF0
        F62DBCEBF211A9D5E10300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000546B9F026D8AB407000000000000
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
        000000000000}
      ShowHint = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 62
      Top = 24
      Width = 107
      Height = 23
      Caption = 'Sped Fiscal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object ActionToolBarPrincipal: TActionToolBar
    AlignWithMargins = True
    Left = 3
    Top = 436
    Width = 491
    Height = 26
    ActionManager = ActionManagerLocal
    Align = alBottom
    BiDiMode = bdRightToLeft
    Caption = 'ActionToolBarPrincipal'
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 15660791
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Orientation = boRightToLeft
    ParentBiDiMode = False
    ParentFont = False
    Spacing = 5
  end
  object PageControlItens: TPageControl
    Left = 0
    Top = 65
    Width = 497
    Height = 366
    ActivePage = tsDados
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 454
    ExplicitHeight = 116
    object tsDados: TTabSheet
      Caption = 'Dados Sped Fiscal'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 573
      ExplicitHeight = 223
      object PanelDados: TPanel
        Left = 0
        Top = 0
        Width = 489
        Height = 338
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 573
        ExplicitHeight = 223
        DesignSize = (
          489
          338)
        object PanelMestre: TPanel
          Left = 6
          Top = 9
          Width = 474
          Height = 321
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvLowered
          TabOrder = 0
          ExplicitHeight = 256
          DesignSize = (
            474
            321)
          object ComboBoxVersaoLeiauteSped: TLabeledComboBox
            Left = 10
            Top = 22
            Width = 248
            Height = 21
            Style = csDropDownList
            ItemIndex = 6
            TabOrder = 0
            Text = '007 - Vers'#227'o 1.06 Ato COTEPE 01/01/2013'
            Items.Strings = (
              '001 - Vers'#227'o 1.00 Ato COTEPE 01/01/2008'
              '002 - Vers'#227'o 1.01 Ato COTEPE 01/01/2009'
              '003 - Vers'#227'o 1.02 Ato COTEPE 01/01/2010'
              '004 - Vers'#227'o 1.03 Ato COTEPE 01/01/2011'
              '005 - Vers'#227'o 1.04 Ato COTEPE 01/01/2012'
              '006 - Vers'#227'o 1.05 Ato COTEPE 01/07/2012'
              '007 - Vers'#227'o 1.06 Ato COTEPE 01/01/2013')
            ComboBoxLabel.Width = 90
            ComboBoxLabel.Height = 13
            ComboBoxLabel.Caption = 'Vers'#227'o do Leiaute:'
          end
          object ComboBoxFinalidadeArquivoSped: TLabeledComboBox
            Left = 264
            Top = 22
            Width = 199
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 1
            Text = '0 - Remessa do arquivo original'
            Items.Strings = (
              '0 - Remessa do arquivo original'
              '1 - Remessa do arquivo substituto')
            ComboBoxLabel.Width = 107
            ComboBoxLabel.Height = 13
            ComboBoxLabel.Caption = 'Finalidade do Arquivo:'
          end
          object ComboBoxPerfilSped: TLabeledComboBox
            Left = 10
            Top = 69
            Width = 199
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 2
            Text = 'A - Perfil A'
            Items.Strings = (
              'A - Perfil A'
              'B - Perfil B'
              'C - Perfil C')
            ComboBoxLabel.Width = 170
            ComboBoxLabel.Height = 13
            ComboBoxLabel.Caption = 'Perfil de Apresenta'#231#227'o do Arquivio:'
          end
          object EditPeriodoInicial: TLabeledDateEdit
            Left = 215
            Top = 69
            Width = 121
            Height = 21
            TabOrder = 3
            DateEditLabel.Width = 70
            DateEditLabel.Height = 13
            DateEditLabel.Caption = 'Per'#237'odo Inicial:'
          end
          object EditPeriodoFinal: TLabeledDateEdit
            Left = 342
            Top = 69
            Width = 121
            Height = 21
            TabOrder = 4
            DateEditLabel.Width = 65
            DateEditLabel.Height = 13
            DateEditLabel.Caption = 'Per'#237'odo Final:'
          end
          object GroupBox1: TGroupBox
            Left = 10
            Top = 144
            Width = 453
            Height = 170
            Anchors = [akLeft, akTop, akRight, akBottom]
            Caption = 'Contadores:'
            TabOrder = 6
            object Grid: TJvDBUltimGrid
              Left = 2
              Top = 15
              Width = 449
              Height = 153
              Align = alClient
              DataSource = DSContador
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              Columns = <
                item
                  Expanded = False
                  FieldName = 'INSCRICAO_CRC'
                  Title.Caption = 'CRC'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF_CRC'
                  Title.Caption = 'UF CRC'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOME'
                  Title.Caption = 'Nome'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FONE'
                  Title.Caption = 'Fone'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FAX'
                  Title.Caption = 'Fax'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LOGRADOURO'
                  Title.Caption = 'Logradouro'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NUMERO'
                  Title.Caption = 'N'#250'mero'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COMPLEMENTO'
                  Title.Caption = 'Complemento'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BAIRRO'
                  Title.Caption = 'Bairro'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CIDADE'
                  Title.Caption = 'Cidade'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CEP'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MUNICIPIO_IBGE'
                  Title.Caption = 'Munic'#237'pio IBGE'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'EMAIL'
                  Title.Caption = 'Email'
                  Visible = True
                end>
            end
          end
          object ComboBoxInventario: TLabeledComboBox
            Left = 12
            Top = 114
            Width = 451
            Height = 21
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 5
            Text = '00 - Sem Invent'#225'rio'
            Items.Strings = (
              '00 - Sem Invent'#225'rio'
              '01 '#8211' No final no per'#237'odo'
              '02 '#8211' Na mudan'#231'a de forma de tributa'#231#227'o da mercadoria (ICMS)'
              
                '03 '#8211' Na solicita'#231#227'o da baixa cadastral, paralisa'#231#227'o tempor'#225'ria e' +
                ' outras situa'#231#245'es'
              
                '04 '#8211' Na altera'#231#227'o de regime de pagamento '#8211' condi'#231#227'o do contribui' +
                'nte'
              '05 '#8211' Por determina'#231#227'o dos fiscos')
            ComboBoxLabel.Width = 54
            ComboBoxLabel.Height = 13
            ComboBoxLabel.Caption = 'Invent'#225'rio:'
          end
        end
      end
    end
  end
  object ActionManagerLocal: TActionManager
    ActionBars.ShowHints = False
    ActionBars = <
      item
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActionCancelar
            Caption = '&Cancelar [F11]'
            ImageIndex = 10
            ShortCut = 122
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = ActionSair
            Caption = '&Sair [F8]'
            ImageIndex = 12
            ShortCut = 119
          end
          item
            Caption = '-'
          end
          item
            Action = ActionGerarSpedFiscal
            Caption = '&Gerar Sped Fiscal [F12]'
            ImageIndex = 33
            ShortCut = 123
          end>
        ActionBar = ActionToolBarPrincipal
      end
      item
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Caption = '-'
          end
          item
            Caption = '-'
          end>
      end>
    DisabledImages = FDataModule.ImagensCadastrosD
    Images = FDataModule.ImagensCadastros
    Left = 192
    Top = 24
    StyleName = 'Ribbon - Silver'
    object ActionCancelar: TAction
      Category = 'Geral'
      Caption = 'Cancelar [F11]'
      ImageIndex = 10
      ShortCut = 122
      OnExecute = ActionCancelarExecute
    end
    object ActionSair: TAction
      Category = 'Geral'
      Caption = 'Sair [F8]'
      ImageIndex = 12
      ShortCut = 119
      OnExecute = ActionSairExecute
    end
    object ActionGerarSpedFiscal: TAction
      Category = 'Geral'
      Caption = 'Gerar Sped Fiscal [F12]'
      ImageIndex = 33
      ShortCut = 123
      OnExecute = ActionGerarSpedFiscalExecute
    end
  end
  object CDSContador: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ID_PESSOA'
        DataType = ftInteger
      end
      item
        Name = 'INSCRICAO_CRC'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'UF_CRC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'FAX'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'LOGRADOURO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'MUNICIPIO_IBGE'
        DataType = ftInteger
      end
      item
        Name = 'UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 150
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 312
    Top = 24
    Data = {
      AE0100009619E0BD010000001800000010000000000003000000AE0102494404
      000100000000000949445F504553534F4104000100000000000D494E53435249
      43414F5F4352430100490000000100055749445448020002000F000655465F43
      5243010049002000010005574944544802000200020004464F4E450100490000
      000100055749445448020002000E000346415801004900000001000557494454
      48020002000E000A4C4F475241444F55524F0100490000000100055749445448
      020002006400064E554D45524F0100490000000100055749445448020002000A
      000B434F4D504C454D454E544F01004900000001000557494454480200020064
      000642414952524F0100490000000100055749445448020002003C0006434944
      4144450100490000000100055749445448020002003C00034345500100490000
      0001000557494454480200020008000E4D554E49434950494F5F494247450400
      010000000000025546010049002000010005574944544802000200020005454D
      41494C010049000000010005574944544802000200FA00044E4F4D4501004900
      000001000557494454480200020096000000}
    object CDSContadorID: TIntegerField
      FieldName = 'ID'
    end
    object CDSContadorID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object CDSContadorINSCRICAO_CRC: TStringField
      FieldName = 'INSCRICAO_CRC'
      Size = 15
    end
    object CDSContadorUF_CRC: TStringField
      FieldName = 'UF_CRC'
      FixedChar = True
      Size = 2
    end
    object CDSContadorFONE: TStringField
      FieldName = 'FONE'
      Size = 14
    end
    object CDSContadorFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object CDSContadorLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 100
    end
    object CDSContadorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object CDSContadorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object CDSContadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object CDSContadorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object CDSContadorCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object CDSContadorMUNICIPIO_IBGE: TIntegerField
      FieldName = 'MUNICIPIO_IBGE'
    end
    object CDSContadorUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object CDSContadorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 250
    end
    object CDSContadorNOME: TStringField
      FieldName = 'NOME'
      Size = 150
    end
  end
  object DSContador: TDataSource
    DataSet = CDSContador
    Left = 392
    Top = 24
  end
end
