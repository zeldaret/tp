lbl_80136624:
/* 80136624  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80136628  7C 08 02 A6 */	mflr r0
/* 8013662C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80136630  39 61 00 40 */	addi r11, r1, 0x40
/* 80136634  48 22 BB 99 */	bl _savegpr_25
/* 80136638  7C 7C 1B 78 */	mr r28, r3
/* 8013663C  7C 9D 23 78 */	mr r29, r4
/* 80136640  7C B9 2B 78 */	mr r25, r5
/* 80136644  7C DE 33 78 */	mr r30, r6
/* 80136648  7C FF 3B 78 */	mr r31, r7
/* 8013664C  3C 80 80 39 */	lis r4, lit_3757@ha
/* 80136650  3B 44 D6 58 */	addi r26, r4, lit_3757@l
/* 80136654  38 80 01 08 */	li r4, 0x108
/* 80136658  4B F8 C7 4D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013665C  2C 03 00 00 */	cmpwi r3, 0
/* 80136660  40 82 00 0C */	bne lbl_8013666C
/* 80136664  38 60 00 00 */	li r3, 0
/* 80136668  48 00 03 64 */	b lbl_801369CC
lbl_8013666C:
/* 8013666C  2C 19 00 00 */	cmpwi r25, 0
/* 80136670  3B 7A 1C B0 */	addi r27, r26, 0x1cb0
/* 80136674  41 82 00 08 */	beq lbl_8013667C
/* 80136678  3B 7A 1C 44 */	addi r27, r26, 0x1c44
lbl_8013667C:
/* 8013667C  38 00 00 00 */	li r0, 0
/* 80136680  90 1C 31 98 */	stw r0, 0x3198(r28)
/* 80136684  B0 1C 30 0C */	sth r0, 0x300c(r28)
/* 80136688  B0 1C 30 0E */	sth r0, 0x300e(r28)
/* 8013668C  93 BC 31 9C */	stw r29, 0x319c(r28)
/* 80136690  B0 1C 30 10 */	sth r0, 0x3010(r28)
/* 80136694  B0 1C 30 12 */	sth r0, 0x3012(r28)
/* 80136698  2C 1D 00 00 */	cmpwi r29, 0
/* 8013669C  40 80 01 5C */	bge lbl_801367F8
/* 801366A0  2C 1D FF FD */	cmpwi r29, -3
/* 801366A4  40 82 00 34 */	bne lbl_801366D8
/* 801366A8  38 80 00 2C */	li r4, 0x2c
/* 801366AC  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 801366B0  38 A0 FF FF */	li r5, -1
/* 801366B4  C0 62 93 3C */	lfs f3, lit_7808(r2)
/* 801366B8  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 801366BC  38 00 FF FF */	li r0, -1
/* 801366C0  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 801366C4  C0 02 93 80 */	lfs f0, lit_8780(r2)
/* 801366C8  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 801366CC  38 00 00 04 */	li r0, 4
/* 801366D0  98 1C 2F 9D */	stb r0, 0x2f9d(r28)
/* 801366D4  48 00 00 F4 */	b lbl_801367C8
lbl_801366D8:
/* 801366D8  2C 1D FF FE */	cmpwi r29, -2
/* 801366DC  40 82 00 38 */	bne lbl_80136714
/* 801366E0  C0 62 92 C0 */	lfs f3, lit_6108(r2)
/* 801366E4  80 6D 8A 98 */	lwz r3, m_midnaActor__9daPy_py_c(r13)
/* 801366E8  28 03 00 00 */	cmplwi r3, 0
/* 801366EC  41 82 00 10 */	beq lbl_801366FC
/* 801366F0  80 03 08 98 */	lwz r0, 0x898(r3)
/* 801366F4  60 00 00 10 */	ori r0, r0, 0x10
/* 801366F8  90 03 08 98 */	stw r0, 0x898(r3)
lbl_801366FC:
/* 801366FC  A0 1C 06 04 */	lhz r0, 0x604(r28)
/* 80136700  2C 00 00 01 */	cmpwi r0, 1
/* 80136704  41 82 00 18 */	beq lbl_8013671C
/* 80136708  38 00 00 01 */	li r0, 1
/* 8013670C  B0 1C 30 12 */	sth r0, 0x3012(r28)
/* 80136710  48 00 00 0C */	b lbl_8013671C
lbl_80136714:
/* 80136714  38 7A 1C 44 */	addi r3, r26, 0x1c44
/* 80136718  C0 63 00 0C */	lfs f3, 0xc(r3)
lbl_8013671C:
/* 8013671C  38 80 00 2C */	li r4, 0x2c
/* 80136720  C0 42 94 04 */	lfs f2, lit_13794(r2)
/* 80136724  38 A0 FF FF */	li r5, -1
/* 80136728  38 7A 1C 44 */	addi r3, r26, 0x1c44
/* 8013672C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80136730  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 80136734  2C 1D FF FC */	cmpwi r29, -4
/* 80136738  40 82 00 20 */	bne lbl_80136758
/* 8013673C  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 80136740  60 00 10 00 */	ori r0, r0, 0x1000
/* 80136744  90 1C 05 78 */	stw r0, 0x578(r28)
/* 80136748  38 00 00 00 */	li r0, 0
/* 8013674C  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 80136750  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80136754  48 00 00 58 */	b lbl_801367AC
lbl_80136758:
/* 80136758  2C 1D FF FB */	cmpwi r29, -5
/* 8013675C  40 82 00 1C */	bne lbl_80136778
/* 80136760  80 1C 06 10 */	lwz r0, 0x610(r28)
/* 80136764  2C 00 00 00 */	cmpwi r0, 0
/* 80136768  40 81 00 10 */	ble lbl_80136778
/* 8013676C  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 80136770  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80136774  48 00 00 38 */	b lbl_801367AC
lbl_80136778:
/* 80136778  2C 1D FF FE */	cmpwi r29, -2
/* 8013677C  40 82 00 20 */	bne lbl_8013679C
/* 80136780  A0 1C 06 04 */	lhz r0, 0x604(r28)
/* 80136784  2C 00 00 01 */	cmpwi r0, 1
/* 80136788  40 82 00 14 */	bne lbl_8013679C
/* 8013678C  38 00 00 1E */	li r0, 0x1e
/* 80136790  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 80136794  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80136798  48 00 00 14 */	b lbl_801367AC
lbl_8013679C:
/* 8013679C  38 00 00 01 */	li r0, 1
/* 801367A0  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 801367A4  38 7A 1D 6C */	addi r3, r26, 0x1d6c
/* 801367A8  C0 23 00 28 */	lfs f1, 0x28(r3)
lbl_801367AC:
/* 801367AC  80 DC 31 A0 */	lwz r6, 0x31a0(r28)
/* 801367B0  3C 60 EF FF */	lis r3, 0xEFFF /* 0xEFFF7FFF@ha */
/* 801367B4  38 03 7F FF */	addi r0, r3, 0x7FFF /* 0xEFFF7FFF@l */
/* 801367B8  7C C0 00 38 */	and r0, r6, r0
/* 801367BC  90 1C 31 A0 */	stw r0, 0x31a0(r28)
/* 801367C0  38 00 00 01 */	li r0, 1
/* 801367C4  B0 1C 30 0E */	sth r0, 0x300e(r28)
lbl_801367C8:
/* 801367C8  38 00 00 01 */	li r0, 1
/* 801367CC  B0 1C 30 0C */	sth r0, 0x300c(r28)
/* 801367D0  7F 83 E3 78 */	mr r3, r28
/* 801367D4  4B FF 2F 31 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 801367D8  7F 83 E3 78 */	mr r3, r28
/* 801367DC  38 80 00 92 */	li r4, 0x92
/* 801367E0  4B F7 90 C1 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 801367E4  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 801367E8  D0 1C 34 7C */	stfs f0, 0x347c(r28)
/* 801367EC  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 801367F0  D0 1C 34 84 */	stfs f0, 0x3484(r28)
/* 801367F4  48 00 01 5C */	b lbl_80136950
lbl_801367F8:
/* 801367F8  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 801367FC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80136800  D0 21 00 08 */	stfs f1, 8(r1)
/* 80136804  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80136808  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8013680C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80136810  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80136814  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80136818  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8013681C  38 80 00 06 */	li r4, 6
/* 80136820  38 A0 00 1F */	li r5, 0x1f
/* 80136824  38 C1 00 08 */	addi r6, r1, 8
/* 80136828  4B F3 91 FD */	bl StartShock__12dVibration_cFii4cXyz
/* 8013682C  7F 83 E3 78 */	mr r3, r28
/* 80136830  3C 80 00 03 */	lis r4, 0x0003 /* 0x0003001A@ha */
/* 80136834  38 84 00 1A */	addi r4, r4, 0x001A /* 0x0003001A@l */
/* 80136838  4B F8 89 5D */	bl seStartMapInfo__9daAlink_cFUl
/* 8013683C  38 00 00 04 */	li r0, 4
/* 80136840  98 1C 2F 9D */	stb r0, 0x2f9d(r28)
/* 80136844  2C 1D 00 29 */	cmpwi r29, 0x29
/* 80136848  40 82 00 44 */	bne lbl_8013688C
/* 8013684C  7F 83 E3 78 */	mr r3, r28
/* 80136850  38 80 00 2D */	li r4, 0x2d
/* 80136854  38 BB 00 14 */	addi r5, r27, 0x14
/* 80136858  4B FF 2F F1 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013685C  7F 83 E3 78 */	mr r3, r28
/* 80136860  38 80 00 92 */	li r4, 0x92
/* 80136864  4B F7 90 3D */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 80136868  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 8013686C  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 80136870  C0 02 94 04 */	lfs f0, lit_13794(r2)
/* 80136874  D0 1C 34 7C */	stfs f0, 0x347c(r28)
/* 80136878  38 00 00 01 */	li r0, 1
/* 8013687C  90 1C 31 98 */	stw r0, 0x3198(r28)
/* 80136880  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 80136884  D0 1C 34 84 */	stfs f0, 0x3484(r28)
/* 80136888  48 00 00 B8 */	b lbl_80136940
lbl_8013688C:
/* 8013688C  2C 1D 00 2A */	cmpwi r29, 0x2a
/* 80136890  40 82 00 3C */	bne lbl_801368CC
/* 80136894  7F 83 E3 78 */	mr r3, r28
/* 80136898  38 80 00 2E */	li r4, 0x2e
/* 8013689C  38 BB 00 28 */	addi r5, r27, 0x28
/* 801368A0  4B FF 2F A9 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 801368A4  7F 83 E3 78 */	mr r3, r28
/* 801368A8  38 80 00 93 */	li r4, 0x93
/* 801368AC  4B F7 8F F5 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 801368B0  C0 1B 00 38 */	lfs f0, 0x38(r27)
/* 801368B4  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 801368B8  C0 02 94 B4 */	lfs f0, lit_17382(r2)
/* 801368BC  D0 1C 34 7C */	stfs f0, 0x347c(r28)
/* 801368C0  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 801368C4  D0 1C 34 84 */	stfs f0, 0x3484(r28)
/* 801368C8  48 00 00 78 */	b lbl_80136940
lbl_801368CC:
/* 801368CC  2C 1D 00 2B */	cmpwi r29, 0x2b
/* 801368D0  40 82 00 3C */	bne lbl_8013690C
/* 801368D4  7F 83 E3 78 */	mr r3, r28
/* 801368D8  38 80 00 2F */	li r4, 0x2f
/* 801368DC  38 BB 00 3C */	addi r5, r27, 0x3c
/* 801368E0  4B FF 2F 69 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 801368E4  7F 83 E3 78 */	mr r3, r28
/* 801368E8  38 80 00 93 */	li r4, 0x93
/* 801368EC  4B F7 8F B5 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 801368F0  C0 1B 00 4C */	lfs f0, 0x4c(r27)
/* 801368F4  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 801368F8  C0 02 94 B4 */	lfs f0, lit_17382(r2)
/* 801368FC  D0 1C 34 7C */	stfs f0, 0x347c(r28)
/* 80136900  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 80136904  D0 1C 34 84 */	stfs f0, 0x3484(r28)
/* 80136908  48 00 00 38 */	b lbl_80136940
lbl_8013690C:
/* 8013690C  7F 83 E3 78 */	mr r3, r28
/* 80136910  38 80 00 2C */	li r4, 0x2c
/* 80136914  7F 65 DB 78 */	mr r5, r27
/* 80136918  4B FF 2F 31 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013691C  7F 83 E3 78 */	mr r3, r28
/* 80136920  38 80 00 92 */	li r4, 0x92
/* 80136924  4B F7 8F 7D */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 80136928  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 8013692C  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 80136930  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 80136934  D0 1C 34 7C */	stfs f0, 0x347c(r28)
/* 80136938  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 8013693C  D0 1C 34 84 */	stfs f0, 0x3484(r28)
lbl_80136940:
/* 80136940  2C 19 00 00 */	cmpwi r25, 0
/* 80136944  41 82 00 0C */	beq lbl_80136950
/* 80136948  38 00 00 01 */	li r0, 1
/* 8013694C  B0 1C 30 10 */	sth r0, 0x3010(r28)
lbl_80136950:
/* 80136950  7F 83 E3 78 */	mr r3, r28
/* 80136954  7F C4 F3 78 */	mr r4, r30
/* 80136958  38 A0 00 00 */	li r5, 0
/* 8013695C  7F E6 FB 78 */	mr r6, r31
/* 80136960  4B F7 72 19 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 80136964  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80136968  D0 1C 33 98 */	stfs f0, 0x3398(r28)
/* 8013696C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80136970  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80136974  7F 83 E3 78 */	mr r3, r28
/* 80136978  38 80 00 04 */	li r4, 4
/* 8013697C  4B FE A8 45 */	bl setFootEffectProcType__9daAlink_cFi
/* 80136980  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 80136984  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 80136988  D0 1C 35 88 */	stfs f0, 0x3588(r28)
/* 8013698C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80136990  D0 1C 35 8C */	stfs f0, 0x358c(r28)
/* 80136994  C0 03 00 08 */	lfs f0, 8(r3)
/* 80136998  D0 1C 35 90 */	stfs f0, 0x3590(r28)
/* 8013699C  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 801369A0  A8 1C 1F D8 */	lha r0, 0x1fd8(r28)
/* 801369A4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 801369A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801369AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801369B0  3C 00 43 30 */	lis r0, 0x4330
/* 801369B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 801369B8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801369BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801369C0  EC 02 00 24 */	fdivs f0, f2, f0
/* 801369C4  D0 1C 34 80 */	stfs f0, 0x3480(r28)
/* 801369C8  38 60 00 01 */	li r3, 1
lbl_801369CC:
/* 801369CC  39 61 00 40 */	addi r11, r1, 0x40
/* 801369D0  48 22 B8 49 */	bl _restgpr_25
/* 801369D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801369D8  7C 08 03 A6 */	mtlr r0
/* 801369DC  38 21 00 40 */	addi r1, r1, 0x40
/* 801369E0  4E 80 00 20 */	blr 
