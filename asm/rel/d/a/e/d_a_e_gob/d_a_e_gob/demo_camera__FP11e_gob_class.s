lbl_806DC5D4:
/* 806DC5D4  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 806DC5D8  7C 08 02 A6 */	mflr r0
/* 806DC5DC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 806DC5E0  39 61 00 D0 */	addi r11, r1, 0xd0
/* 806DC5E4  4B C8 5B EC */	b _savegpr_26
/* 806DC5E8  7C 7F 1B 78 */	mr r31, r3
/* 806DC5EC  3C 80 80 6E */	lis r4, lit_3763@ha
/* 806DC5F0  3B C4 EE 38 */	addi r30, r4, lit_3763@l
/* 806DC5F4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806DC5F8  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 806DC5FC  83 7C 5D AC */	lwz r27, 0x5dac(r28)
/* 806DC600  88 1C 5D B0 */	lbz r0, 0x5db0(r28)
/* 806DC604  7C 00 07 74 */	extsb r0, r0
/* 806DC608  1C 00 00 38 */	mulli r0, r0, 0x38
/* 806DC60C  7C 9C 02 14 */	add r4, r28, r0
/* 806DC610  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 806DC614  38 00 FF FF */	li r0, -1
/* 806DC618  A8 83 0D 38 */	lha r4, 0xd38(r3)
/* 806DC61C  2C 04 00 0A */	cmpwi r4, 0xa
/* 806DC620  41 82 07 64 */	beq lbl_806DCD84
/* 806DC624  40 80 00 44 */	bge lbl_806DC668
/* 806DC628  2C 04 00 04 */	cmpwi r4, 4
/* 806DC62C  41 82 03 18 */	beq lbl_806DC944
/* 806DC630  40 80 00 20 */	bge lbl_806DC650
/* 806DC634  2C 04 00 01 */	cmpwi r4, 1
/* 806DC638  41 82 00 60 */	beq lbl_806DC698
/* 806DC63C  40 80 00 08 */	bge lbl_806DC644
/* 806DC640  48 00 10 08 */	b lbl_806DD648
lbl_806DC644:
/* 806DC644  2C 04 00 03 */	cmpwi r4, 3
/* 806DC648  40 80 02 54 */	bge lbl_806DC89C
/* 806DC64C  48 00 01 30 */	b lbl_806DC77C
lbl_806DC650:
/* 806DC650  2C 04 00 07 */	cmpwi r4, 7
/* 806DC654  41 82 06 D0 */	beq lbl_806DCD24
/* 806DC658  40 80 0F F0 */	bge lbl_806DD648
/* 806DC65C  2C 04 00 06 */	cmpwi r4, 6
/* 806DC660  40 80 05 78 */	bge lbl_806DCBD8
/* 806DC664  48 00 03 4C */	b lbl_806DC9B0
lbl_806DC668:
/* 806DC668  2C 04 00 0F */	cmpwi r4, 0xf
/* 806DC66C  41 82 0D 54 */	beq lbl_806DD3C0
/* 806DC670  40 80 00 1C */	bge lbl_806DC68C
/* 806DC674  2C 04 00 0D */	cmpwi r4, 0xd
/* 806DC678  41 82 0A A0 */	beq lbl_806DD118
/* 806DC67C  40 80 0B E8 */	bge lbl_806DD264
/* 806DC680  2C 04 00 0C */	cmpwi r4, 0xc
/* 806DC684  40 80 08 20 */	bge lbl_806DCEA4
/* 806DC688  48 00 07 18 */	b lbl_806DCDA0
lbl_806DC68C:
/* 806DC68C  2C 04 00 64 */	cmpwi r4, 0x64
/* 806DC690  41 82 0F 30 */	beq lbl_806DD5C0
/* 806DC694  48 00 0F B4 */	b lbl_806DD648
lbl_806DC698:
/* 806DC698  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 806DC69C  28 00 00 02 */	cmplwi r0, 2
/* 806DC6A0  41 82 00 28 */	beq lbl_806DC6C8
/* 806DC6A4  38 80 00 02 */	li r4, 2
/* 806DC6A8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 806DC6AC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 806DC6B0  38 C0 00 00 */	li r6, 0
/* 806DC6B4  4B 93 F2 54 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 806DC6B8  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 806DC6BC  60 00 00 02 */	ori r0, r0, 2
/* 806DC6C0  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 806DC6C4  48 00 11 24 */	b lbl_806DD7E8
lbl_806DC6C8:
/* 806DC6C8  38 7D 02 48 */	addi r3, r29, 0x248
/* 806DC6CC  4B A8 4E 04 */	b Stop__9dCamera_cFv
/* 806DC6D0  38 00 00 02 */	li r0, 2
/* 806DC6D4  B0 1F 0D 38 */	sth r0, 0xd38(r31)
/* 806DC6D8  38 00 00 00 */	li r0, 0
/* 806DC6DC  B0 1F 0D 3A */	sth r0, 0xd3a(r31)
/* 806DC6E0  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 806DC6E4  D0 1F 0D 84 */	stfs f0, 0xd84(r31)
/* 806DC6E8  38 7D 02 48 */	addi r3, r29, 0x248
/* 806DC6EC  38 80 00 03 */	li r4, 3
/* 806DC6F0  4B A8 69 1C */	b SetTrimSize__9dCamera_cFl
/* 806DC6F4  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 806DC6F8  D0 1F 0D 48 */	stfs f0, 0xd48(r31)
/* 806DC6FC  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 806DC700  D0 1F 0D 4C */	stfs f0, 0xd4c(r31)
/* 806DC704  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 806DC708  D0 1F 0D 50 */	stfs f0, 0xd50(r31)
/* 806DC70C  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 806DC710  D0 1F 0D 3C */	stfs f0, 0xd3c(r31)
/* 806DC714  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 806DC718  D0 1F 0D 40 */	stfs f0, 0xd40(r31)
/* 806DC71C  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 806DC720  D0 1F 0D 44 */	stfs f0, 0xd44(r31)
/* 806DC724  38 7D 02 48 */	addi r3, r29, 0x248
/* 806DC728  38 80 00 03 */	li r4, 3
/* 806DC72C  4B A8 68 E0 */	b SetTrimSize__9dCamera_cFl
/* 806DC730  38 00 00 03 */	li r0, 3
/* 806DC734  B0 1B 06 04 */	sth r0, 0x604(r27)
/* 806DC738  38 00 00 00 */	li r0, 0
/* 806DC73C  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 806DC740  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806DC744  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806DC748  80 63 00 00 */	lwz r3, 0(r3)
/* 806DC74C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806DC750  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000021@ha */
/* 806DC754  38 84 00 21 */	addi r4, r4, 0x0021 /* 0x01000021@l */
/* 806DC758  4B BD 2D 44 */	b subBgmStart__8Z2SeqMgrFUl
/* 806DC75C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DC760  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DC764  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 806DC768  7F E4 FB 78 */	mr r4, r31
/* 806DC76C  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 806DC770  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 806DC774  38 C0 00 00 */	li r6, 0
/* 806DC778  4B 96 61 9C */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_806DC77C:
/* 806DC77C  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DC780  2C 00 00 14 */	cmpwi r0, 0x14
/* 806DC784  40 80 00 3C */	bge lbl_806DC7C0
/* 806DC788  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 806DC78C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DC790  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 806DC794  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 806DC798  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 806DC79C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 806DC7A0  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 806DC7A4  38 81 00 98 */	addi r4, r1, 0x98
/* 806DC7A8  38 A0 80 00 */	li r5, -32768
/* 806DC7AC  38 C0 00 00 */	li r6, 0
/* 806DC7B0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806DC7B4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806DC7B8  7D 89 03 A6 */	mtctr r12
/* 806DC7BC  4E 80 04 21 */	bctrl 
lbl_806DC7C0:
/* 806DC7C0  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DC7C4  2C 00 00 32 */	cmpwi r0, 0x32
/* 806DC7C8  40 82 0E 80 */	bne lbl_806DD648
/* 806DC7CC  38 00 00 03 */	li r0, 3
/* 806DC7D0  B0 1F 0D 38 */	sth r0, 0xd38(r31)
/* 806DC7D4  38 00 00 00 */	li r0, 0
/* 806DC7D8  B0 1F 0D 3A */	sth r0, 0xd3a(r31)
/* 806DC7DC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806DC7E0  D0 3F 0D 60 */	stfs f1, 0xd60(r31)
/* 806DC7E4  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 806DC7E8  D0 1F 0D 64 */	stfs f0, 0xd64(r31)
/* 806DC7EC  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 806DC7F0  D0 1F 0D 68 */	stfs f0, 0xd68(r31)
/* 806DC7F4  D0 3F 0D 54 */	stfs f1, 0xd54(r31)
/* 806DC7F8  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 806DC7FC  D0 1F 0D 58 */	stfs f0, 0xd58(r31)
/* 806DC800  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 806DC804  D0 1F 0D 5C */	stfs f0, 0xd5c(r31)
/* 806DC808  C0 3F 0D 54 */	lfs f1, 0xd54(r31)
/* 806DC80C  C0 1F 0D 3C */	lfs f0, 0xd3c(r31)
/* 806DC810  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DC814  FC 00 02 10 */	fabs f0, f0
/* 806DC818  FC 00 00 18 */	frsp f0, f0
/* 806DC81C  D0 1F 0D 6C */	stfs f0, 0xd6c(r31)
/* 806DC820  C0 3F 0D 58 */	lfs f1, 0xd58(r31)
/* 806DC824  C0 1F 0D 40 */	lfs f0, 0xd40(r31)
/* 806DC828  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DC82C  FC 00 02 10 */	fabs f0, f0
/* 806DC830  FC 00 00 18 */	frsp f0, f0
/* 806DC834  D0 1F 0D 70 */	stfs f0, 0xd70(r31)
/* 806DC838  C0 3F 0D 5C */	lfs f1, 0xd5c(r31)
/* 806DC83C  C0 1F 0D 44 */	lfs f0, 0xd44(r31)
/* 806DC840  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DC844  FC 00 02 10 */	fabs f0, f0
/* 806DC848  FC 00 00 18 */	frsp f0, f0
/* 806DC84C  D0 1F 0D 74 */	stfs f0, 0xd74(r31)
/* 806DC850  C0 3F 0D 60 */	lfs f1, 0xd60(r31)
/* 806DC854  C0 1F 0D 48 */	lfs f0, 0xd48(r31)
/* 806DC858  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DC85C  FC 00 02 10 */	fabs f0, f0
/* 806DC860  FC 00 00 18 */	frsp f0, f0
/* 806DC864  D0 1F 0D 78 */	stfs f0, 0xd78(r31)
/* 806DC868  C0 3F 0D 64 */	lfs f1, 0xd64(r31)
/* 806DC86C  C0 1F 0D 4C */	lfs f0, 0xd4c(r31)
/* 806DC870  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DC874  FC 00 02 10 */	fabs f0, f0
/* 806DC878  FC 00 00 18 */	frsp f0, f0
/* 806DC87C  D0 1F 0D 7C */	stfs f0, 0xd7c(r31)
/* 806DC880  C0 3F 0D 68 */	lfs f1, 0xd68(r31)
/* 806DC884  C0 1F 0D 50 */	lfs f0, 0xd50(r31)
/* 806DC888  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DC88C  FC 00 02 10 */	fabs f0, f0
/* 806DC890  FC 00 00 18 */	frsp f0, f0
/* 806DC894  D0 1F 0D 80 */	stfs f0, 0xd80(r31)
/* 806DC898  48 00 0D B0 */	b lbl_806DD648
lbl_806DC89C:
/* 806DC89C  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 806DC8A0  4B FF FC 51 */	bl cam_3d_morf__FP11e_gob_classf
/* 806DC8A4  38 7F 0D 88 */	addi r3, r31, 0xd88
/* 806DC8A8  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 806DC8AC  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 806DC8B0  C0 7E 01 3C */	lfs f3, 0x13c(r30)
/* 806DC8B4  4B B9 31 88 */	b cLib_addCalc2__FPffff
/* 806DC8B8  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DC8BC  2C 00 00 96 */	cmpwi r0, 0x96
/* 806DC8C0  41 80 00 0C */	blt lbl_806DC8CC
/* 806DC8C4  38 00 00 96 */	li r0, 0x96
/* 806DC8C8  B0 1F 0D 3A */	sth r0, 0xd3a(r31)
lbl_806DC8CC:
/* 806DC8CC  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DC8D0  2C 00 00 3C */	cmpwi r0, 0x3c
/* 806DC8D4  41 80 0D 74 */	blt lbl_806DD648
/* 806DC8D8  40 82 00 1C */	bne lbl_806DC8F4
/* 806DC8DC  38 7F 0D 94 */	addi r3, r31, 0xd94
/* 806DC8E0  7F E4 FB 78 */	mr r4, r31
/* 806DC8E4  38 A0 00 C9 */	li r5, 0xc9
/* 806DC8E8  38 C0 00 00 */	li r6, 0
/* 806DC8EC  38 E0 00 00 */	li r7, 0
/* 806DC8F0  4B B6 D6 A0 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_806DC8F4:
/* 806DC8F4  38 7F 0D 94 */	addi r3, r31, 0xd94
/* 806DC8F8  7F E4 FB 78 */	mr r4, r31
/* 806DC8FC  38 A0 00 00 */	li r5, 0
/* 806DC900  38 C0 00 00 */	li r6, 0
/* 806DC904  4B B6 D9 D4 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 806DC908  2C 03 00 00 */	cmpwi r3, 0
/* 806DC90C  41 82 0D 3C */	beq lbl_806DD648
/* 806DC910  7F E3 FB 78 */	mr r3, r31
/* 806DC914  38 80 00 13 */	li r4, 0x13
/* 806DC918  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 806DC91C  38 A0 00 00 */	li r5, 0
/* 806DC920  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 806DC924  4B FF BC 55 */	bl anm_init__FP11e_gob_classifUcf
/* 806DC928  38 00 00 04 */	li r0, 4
/* 806DC92C  B0 1F 0D 38 */	sth r0, 0xd38(r31)
/* 806DC930  38 00 00 00 */	li r0, 0
/* 806DC934  B0 1F 0D 3A */	sth r0, 0xd3a(r31)
/* 806DC938  38 00 00 03 */	li r0, 3
/* 806DC93C  B0 1F 06 58 */	sth r0, 0x658(r31)
/* 806DC940  48 00 0D 08 */	b lbl_806DD648
lbl_806DC944:
/* 806DC944  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DC948  2C 00 00 24 */	cmpwi r0, 0x24
/* 806DC94C  40 81 0C FC */	ble lbl_806DD648
/* 806DC950  38 00 00 05 */	li r0, 5
/* 806DC954  B0 1F 0D 38 */	sth r0, 0xd38(r31)
/* 806DC958  38 00 00 00 */	li r0, 0
/* 806DC95C  B0 1F 0D 3A */	sth r0, 0xd3a(r31)
/* 806DC960  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 806DC964  D0 1F 0D 48 */	stfs f0, 0xd48(r31)
/* 806DC968  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 806DC96C  D0 1F 0D 4C */	stfs f0, 0xd4c(r31)
/* 806DC970  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 806DC974  D0 1F 0D 50 */	stfs f0, 0xd50(r31)
/* 806DC978  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 806DC97C  D0 1F 0D 3C */	stfs f0, 0xd3c(r31)
/* 806DC980  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 806DC984  D0 1F 0D 40 */	stfs f0, 0xd40(r31)
/* 806DC988  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 806DC98C  D0 1F 0D 44 */	stfs f0, 0xd44(r31)
/* 806DC990  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806DC994  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806DC998  80 63 00 00 */	lwz r3, 0(r3)
/* 806DC99C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806DC9A0  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000022@ha */
/* 806DC9A4  38 84 00 22 */	addi r4, r4, 0x0022 /* 0x01000022@l */
/* 806DC9A8  4B BD 2A F4 */	b subBgmStart__8Z2SeqMgrFUl
/* 806DC9AC  48 00 0C 9C */	b lbl_806DD648
lbl_806DC9B0:
/* 806DC9B0  A8 7F 0D 3A */	lha r3, 0xd3a(r31)
/* 806DC9B4  2C 03 00 0A */	cmpwi r3, 0xa
/* 806DC9B8  40 82 00 20 */	bne lbl_806DC9D8
/* 806DC9BC  38 60 00 01 */	li r3, 1
/* 806DC9C0  90 7B 06 14 */	stw r3, 0x614(r27)
/* 806DC9C4  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 806DC9C8  38 60 00 02 */	li r3, 2
/* 806DC9CC  90 7B 06 10 */	stw r3, 0x610(r27)
/* 806DC9D0  38 60 00 00 */	li r3, 0
/* 806DC9D4  B0 7B 06 0A */	sth r3, 0x60a(r27)
lbl_806DC9D8:
/* 806DC9D8  A8 7F 0D 3A */	lha r3, 0xd3a(r31)
/* 806DC9DC  2C 03 00 34 */	cmpwi r3, 0x34
/* 806DC9E0  40 82 00 1C */	bne lbl_806DC9FC
/* 806DC9E4  38 60 00 22 */	li r3, 0x22
/* 806DC9E8  90 7B 06 14 */	stw r3, 0x614(r27)
/* 806DC9EC  38 60 00 00 */	li r3, 0
/* 806DC9F0  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 806DC9F4  90 7B 06 10 */	stw r3, 0x610(r27)
/* 806DC9F8  B0 7B 06 0A */	sth r3, 0x60a(r27)
lbl_806DC9FC:
/* 806DC9FC  A8 7F 0D 3A */	lha r3, 0xd3a(r31)
/* 806DCA00  2C 03 00 1E */	cmpwi r3, 0x1e
/* 806DCA04  40 80 00 14 */	bge lbl_806DCA18
/* 806DCA08  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 806DCA0C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806DCA10  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DCA14  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_806DCA18:
/* 806DCA18  A8 7F 0D 3A */	lha r3, 0xd3a(r31)
/* 806DCA1C  2C 03 00 2F */	cmpwi r3, 0x2f
/* 806DCA20  40 82 00 44 */	bne lbl_806DCA64
/* 806DCA24  38 80 00 01 */	li r4, 1
/* 806DCA28  3C 60 80 6E */	lis r3, ms@ha
/* 806DCA2C  38 A3 F2 F4 */	addi r5, r3, ms@l
/* 806DCA30  80 65 00 00 */	lwz r3, 0(r5)
/* 806DCA34  B0 83 05 82 */	sth r4, 0x582(r3)
/* 806DCA38  38 80 00 00 */	li r4, 0
/* 806DCA3C  80 65 00 00 */	lwz r3, 0(r5)
/* 806DCA40  B0 83 05 96 */	sth r4, 0x596(r3)
/* 806DCA44  80 65 00 00 */	lwz r3, 0(r5)
/* 806DCA48  B0 83 05 94 */	sth r4, 0x594(r3)
/* 806DCA4C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806DCA50  80 65 00 00 */	lwz r3, 0(r5)
/* 806DCA54  D0 03 05 9C */	stfs f0, 0x59c(r3)
/* 806DCA58  38 80 00 28 */	li r4, 0x28
/* 806DCA5C  80 65 00 00 */	lwz r3, 0(r5)
/* 806DCA60  B0 83 05 86 */	sth r4, 0x586(r3)
lbl_806DCA64:
/* 806DCA64  A8 7F 0D 3A */	lha r3, 0xd3a(r31)
/* 806DCA68  2C 03 00 36 */	cmpwi r3, 0x36
/* 806DCA6C  40 82 00 0C */	bne lbl_806DCA78
/* 806DCA70  38 00 00 02 */	li r0, 2
/* 806DCA74  48 00 00 30 */	b lbl_806DCAA4
lbl_806DCA78:
/* 806DCA78  2C 03 00 39 */	cmpwi r3, 0x39
/* 806DCA7C  40 82 00 0C */	bne lbl_806DCA88
/* 806DCA80  38 00 00 03 */	li r0, 3
/* 806DCA84  48 00 00 20 */	b lbl_806DCAA4
lbl_806DCA88:
/* 806DCA88  2C 03 00 3B */	cmpwi r3, 0x3b
/* 806DCA8C  40 82 00 0C */	bne lbl_806DCA98
/* 806DCA90  38 00 00 01 */	li r0, 1
/* 806DCA94  48 00 00 10 */	b lbl_806DCAA4
lbl_806DCA98:
/* 806DCA98  2C 03 00 3E */	cmpwi r3, 0x3e
/* 806DCA9C  40 82 00 08 */	bne lbl_806DCAA4
/* 806DCAA0  38 00 00 00 */	li r0, 0
lbl_806DCAA4:
/* 806DCAA4  2C 00 00 00 */	cmpwi r0, 0
/* 806DCAA8  41 80 00 E0 */	blt lbl_806DCB88
/* 806DCAAC  38 80 00 01 */	li r4, 1
/* 806DCAB0  3C 60 80 6E */	lis r3, ms@ha
/* 806DCAB4  38 C3 F2 F4 */	addi r6, r3, ms@l
/* 806DCAB8  80 66 00 00 */	lwz r3, 0(r6)
/* 806DCABC  1F 80 00 A0 */	mulli r28, r0, 0xa0
/* 806DCAC0  7C 63 E2 14 */	add r3, r3, r28
/* 806DCAC4  98 83 06 B2 */	stb r4, 0x6b2(r3)
/* 806DCAC8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 806DCACC  80 06 00 00 */	lwz r0, 0(r6)
/* 806DCAD0  7C 60 E2 14 */	add r3, r0, r28
/* 806DCAD4  D0 03 06 AC */	stfs f0, 0x6ac(r3)
/* 806DCAD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DCADC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DCAE0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806DCAE4  38 80 00 00 */	li r4, 0
/* 806DCAE8  90 81 00 08 */	stw r4, 8(r1)
/* 806DCAEC  38 00 FF FF */	li r0, -1
/* 806DCAF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806DCAF4  90 81 00 10 */	stw r4, 0x10(r1)
/* 806DCAF8  90 81 00 14 */	stw r4, 0x14(r1)
/* 806DCAFC  90 81 00 18 */	stw r4, 0x18(r1)
/* 806DCB00  38 80 00 00 */	li r4, 0
/* 806DCB04  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008455@ha */
/* 806DCB08  38 A5 84 55 */	addi r5, r5, 0x8455 /* 0x00008455@l */
/* 806DCB0C  80 06 00 00 */	lwz r0, 0(r6)
/* 806DCB10  38 DC 06 B4 */	addi r6, r28, 0x6b4
/* 806DCB14  7C C0 32 14 */	add r6, r0, r6
/* 806DCB18  38 E0 00 00 */	li r7, 0
/* 806DCB1C  39 00 00 00 */	li r8, 0
/* 806DCB20  39 20 00 00 */	li r9, 0
/* 806DCB24  39 40 00 FF */	li r10, 0xff
/* 806DCB28  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806DCB2C  4B 96 FF 64 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806DCB30  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806DCB34  7C 03 07 74 */	extsb r3, r0
/* 806DCB38  4B 95 05 34 */	b dComIfGp_getReverb__Fi
/* 806DCB3C  7C 67 1B 78 */	mr r7, r3
/* 806DCB40  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080109@ha */
/* 806DCB44  38 03 01 09 */	addi r0, r3, 0x0109 /* 0x00080109@l */
/* 806DCB48  90 01 00 28 */	stw r0, 0x28(r1)
/* 806DCB4C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806DCB50  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806DCB54  80 63 00 00 */	lwz r3, 0(r3)
/* 806DCB58  38 81 00 28 */	addi r4, r1, 0x28
/* 806DCB5C  3C A0 80 6E */	lis r5, ms@ha
/* 806DCB60  80 05 F2 F4 */	lwz r0, ms@l(r5)
/* 806DCB64  38 BC 06 B4 */	addi r5, r28, 0x6b4
/* 806DCB68  7C A0 2A 14 */	add r5, r0, r5
/* 806DCB6C  38 C0 00 00 */	li r6, 0
/* 806DCB70  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806DCB74  FC 40 08 90 */	fmr f2, f1
/* 806DCB78  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 806DCB7C  FC 80 18 90 */	fmr f4, f3
/* 806DCB80  39 00 00 00 */	li r8, 0
/* 806DCB84  4B BC EE 00 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806DCB88:
/* 806DCB88  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DCB8C  2C 00 00 52 */	cmpwi r0, 0x52
/* 806DCB90  40 82 0A B8 */	bne lbl_806DD648
/* 806DCB94  38 00 00 06 */	li r0, 6
/* 806DCB98  B0 1F 0D 38 */	sth r0, 0xd38(r31)
/* 806DCB9C  38 00 00 00 */	li r0, 0
/* 806DCBA0  B0 1F 0D 3A */	sth r0, 0xd3a(r31)
/* 806DCBA4  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 806DCBA8  D0 1F 0D 48 */	stfs f0, 0xd48(r31)
/* 806DCBAC  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 806DCBB0  D0 1F 0D 4C */	stfs f0, 0xd4c(r31)
/* 806DCBB4  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 806DCBB8  D0 1F 0D 50 */	stfs f0, 0xd50(r31)
/* 806DCBBC  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 806DCBC0  D0 1F 0D 3C */	stfs f0, 0xd3c(r31)
/* 806DCBC4  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 806DCBC8  D0 1F 0D 40 */	stfs f0, 0xd40(r31)
/* 806DCBCC  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 806DCBD0  D0 1F 0D 44 */	stfs f0, 0xd44(r31)
/* 806DCBD4  48 00 0A 74 */	b lbl_806DD648
lbl_806DCBD8:
/* 806DCBD8  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DCBDC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 806DCBE0  40 82 00 34 */	bne lbl_806DCC14
/* 806DCBE4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806DCBE8  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 806DCBEC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 806DCBF0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 806DCBF4  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 806DCBF8  38 7C 5B D4 */	addi r3, r28, 0x5bd4
/* 806DCBFC  38 80 00 08 */	li r4, 8
/* 806DCC00  38 A0 00 1F */	li r5, 0x1f
/* 806DCC04  38 C1 00 68 */	addi r6, r1, 0x68
/* 806DCC08  4B 99 2E 1C */	b StartShock__12dVibration_cFii4cXyz
/* 806DCC0C  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 806DCC10  D0 1F 0D 8C */	stfs f0, 0xd8c(r31)
lbl_806DCC14:
/* 806DCC14  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DCC18  2C 00 00 5A */	cmpwi r0, 0x5a
/* 806DCC1C  40 81 0A 2C */	ble lbl_806DD648
/* 806DCC20  38 00 00 07 */	li r0, 7
/* 806DCC24  B0 1F 0D 38 */	sth r0, 0xd38(r31)
/* 806DCC28  38 A0 00 00 */	li r5, 0
/* 806DCC2C  B0 BF 0D 3A */	sth r5, 0xd3a(r31)
/* 806DCC30  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 806DCC34  D0 1F 0D 60 */	stfs f0, 0xd60(r31)
/* 806DCC38  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 806DCC3C  D0 1F 0D 64 */	stfs f0, 0xd64(r31)
/* 806DCC40  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 806DCC44  D0 1F 0D 68 */	stfs f0, 0xd68(r31)
/* 806DCC48  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 806DCC4C  D0 1F 0D 54 */	stfs f0, 0xd54(r31)
/* 806DCC50  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 806DCC54  D0 1F 0D 58 */	stfs f0, 0xd58(r31)
/* 806DCC58  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 806DCC5C  D0 1F 0D 5C */	stfs f0, 0xd5c(r31)
/* 806DCC60  C0 3F 0D 54 */	lfs f1, 0xd54(r31)
/* 806DCC64  C0 1F 0D 3C */	lfs f0, 0xd3c(r31)
/* 806DCC68  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DCC6C  FC 00 02 10 */	fabs f0, f0
/* 806DCC70  FC 00 00 18 */	frsp f0, f0
/* 806DCC74  D0 1F 0D 6C */	stfs f0, 0xd6c(r31)
/* 806DCC78  C0 3F 0D 58 */	lfs f1, 0xd58(r31)
/* 806DCC7C  C0 1F 0D 40 */	lfs f0, 0xd40(r31)
/* 806DCC80  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DCC84  FC 00 02 10 */	fabs f0, f0
/* 806DCC88  FC 00 00 18 */	frsp f0, f0
/* 806DCC8C  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 806DCC90  EC 02 00 32 */	fmuls f0, f2, f0
/* 806DCC94  D0 1F 0D 70 */	stfs f0, 0xd70(r31)
/* 806DCC98  C0 3F 0D 5C */	lfs f1, 0xd5c(r31)
/* 806DCC9C  C0 1F 0D 44 */	lfs f0, 0xd44(r31)
/* 806DCCA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DCCA4  FC 00 02 10 */	fabs f0, f0
/* 806DCCA8  FC 00 00 18 */	frsp f0, f0
/* 806DCCAC  D0 1F 0D 74 */	stfs f0, 0xd74(r31)
/* 806DCCB0  C0 3F 0D 60 */	lfs f1, 0xd60(r31)
/* 806DCCB4  C0 1F 0D 48 */	lfs f0, 0xd48(r31)
/* 806DCCB8  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DCCBC  FC 00 02 10 */	fabs f0, f0
/* 806DCCC0  FC 00 00 18 */	frsp f0, f0
/* 806DCCC4  D0 1F 0D 78 */	stfs f0, 0xd78(r31)
/* 806DCCC8  C0 3F 0D 64 */	lfs f1, 0xd64(r31)
/* 806DCCCC  C0 1F 0D 4C */	lfs f0, 0xd4c(r31)
/* 806DCCD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DCCD4  FC 00 02 10 */	fabs f0, f0
/* 806DCCD8  FC 00 00 18 */	frsp f0, f0
/* 806DCCDC  EC 02 00 32 */	fmuls f0, f2, f0
/* 806DCCE0  D0 1F 0D 7C */	stfs f0, 0xd7c(r31)
/* 806DCCE4  C0 3F 0D 68 */	lfs f1, 0xd68(r31)
/* 806DCCE8  C0 1F 0D 50 */	lfs f0, 0xd50(r31)
/* 806DCCEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DCCF0  FC 00 02 10 */	fabs f0, f0
/* 806DCCF4  FC 00 00 18 */	frsp f0, f0
/* 806DCCF8  D0 1F 0D 80 */	stfs f0, 0xd80(r31)
/* 806DCCFC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DCD00  D0 1F 0D 88 */	stfs f0, 0xd88(r31)
/* 806DCD04  38 00 00 02 */	li r0, 2
/* 806DCD08  3C 60 80 6E */	lis r3, ms@ha
/* 806DCD0C  38 83 F2 F4 */	addi r4, r3, ms@l
/* 806DCD10  80 64 00 00 */	lwz r3, 0(r4)
/* 806DCD14  B0 03 05 82 */	sth r0, 0x582(r3)
/* 806DCD18  80 64 00 00 */	lwz r3, 0(r4)
/* 806DCD1C  B0 A3 05 84 */	sth r5, 0x584(r3)
/* 806DCD20  48 00 09 28 */	b lbl_806DD648
lbl_806DCD24:
/* 806DCD24  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 806DCD28  4B FF F7 C9 */	bl cam_3d_morf__FP11e_gob_classf
/* 806DCD2C  38 7F 0D 88 */	addi r3, r31, 0xd88
/* 806DCD30  C0 3E 01 74 */	lfs f1, 0x174(r30)
/* 806DCD34  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 806DCD38  C0 7E 01 78 */	lfs f3, 0x178(r30)
/* 806DCD3C  4B B9 2D 00 */	b cLib_addCalc2__FPffff
/* 806DCD40  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DCD44  2C 00 00 6E */	cmpwi r0, 0x6e
/* 806DCD48  40 81 09 00 */	ble lbl_806DD648
/* 806DCD4C  38 00 00 64 */	li r0, 0x64
/* 806DCD50  B0 1F 0D 38 */	sth r0, 0xd38(r31)
/* 806DCD54  38 00 00 02 */	li r0, 2
/* 806DCD58  B0 1F 06 56 */	sth r0, 0x656(r31)
/* 806DCD5C  38 00 FF FF */	li r0, -1
/* 806DCD60  B0 1F 06 58 */	sth r0, 0x658(r31)
/* 806DCD64  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806DCD68  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806DCD6C  80 63 00 00 */	lwz r3, 0(r3)
/* 806DCD70  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806DCD74  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100001D@ha */
/* 806DCD78  38 84 00 1D */	addi r4, r4, 0x001D /* 0x0100001D@l */
/* 806DCD7C  4B BD 27 20 */	b subBgmStart__8Z2SeqMgrFUl
/* 806DCD80  48 00 08 C8 */	b lbl_806DD648
lbl_806DCD84:
/* 806DCD84  7F 63 DB 78 */	mr r3, r27
/* 806DCD88  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 806DCD8C  81 8C 02 28 */	lwz r12, 0x228(r12)
/* 806DCD90  7D 89 03 A6 */	mtctr r12
/* 806DCD94  4E 80 04 21 */	bctrl 
/* 806DCD98  38 00 00 0B */	li r0, 0xb
/* 806DCD9C  B0 1F 0D 38 */	sth r0, 0xd38(r31)
lbl_806DCDA0:
/* 806DCDA0  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 806DCDA4  28 00 00 02 */	cmplwi r0, 2
/* 806DCDA8  41 82 00 2C */	beq lbl_806DCDD4
/* 806DCDAC  7F E3 FB 78 */	mr r3, r31
/* 806DCDB0  38 80 00 02 */	li r4, 2
/* 806DCDB4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 806DCDB8  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 806DCDBC  38 C0 00 00 */	li r6, 0
/* 806DCDC0  4B 93 EB 48 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 806DCDC4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 806DCDC8  60 00 00 02 */	ori r0, r0, 2
/* 806DCDCC  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 806DCDD0  48 00 0A 18 */	b lbl_806DD7E8
lbl_806DCDD4:
/* 806DCDD4  38 7D 02 48 */	addi r3, r29, 0x248
/* 806DCDD8  4B A8 46 F8 */	b Stop__9dCamera_cFv
/* 806DCDDC  38 00 00 0C */	li r0, 0xc
/* 806DCDE0  B0 1F 0D 38 */	sth r0, 0xd38(r31)
/* 806DCDE4  38 00 00 00 */	li r0, 0
/* 806DCDE8  B0 1F 0D 3A */	sth r0, 0xd3a(r31)
/* 806DCDEC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 806DCDF0  D0 1F 0D 84 */	stfs f0, 0xd84(r31)
/* 806DCDF4  38 7D 02 48 */	addi r3, r29, 0x248
/* 806DCDF8  38 80 00 03 */	li r4, 3
/* 806DCDFC  4B A8 62 10 */	b SetTrimSize__9dCamera_cFl
/* 806DCE00  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806DCE04  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 806DCE08  D0 3F 04 D0 */	stfs f1, 0x4d0(r31)
/* 806DCE0C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806DCE10  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806DCE14  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 806DCE18  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 806DCE1C  D0 3F 06 B8 */	stfs f1, 0x6b8(r31)
/* 806DCE20  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 806DCE24  D0 1F 06 C0 */	stfs f0, 0x6c0(r31)
/* 806DCE28  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 806DCE2C  D0 1F 0D 3C */	stfs f0, 0xd3c(r31)
/* 806DCE30  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 806DCE34  D0 1F 0D 40 */	stfs f0, 0xd40(r31)
/* 806DCE38  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 806DCE3C  D0 1F 0D 44 */	stfs f0, 0xd44(r31)
/* 806DCE40  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806DCE44  D0 1F 0D 48 */	stfs f0, 0xd48(r31)
/* 806DCE48  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806DCE4C  D0 1F 0D 4C */	stfs f0, 0xd4c(r31)
/* 806DCE50  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806DCE54  D0 1F 0D 50 */	stfs f0, 0xd50(r31)
/* 806DCE58  38 7D 02 48 */	addi r3, r29, 0x248
/* 806DCE5C  38 80 00 03 */	li r4, 3
/* 806DCE60  4B A8 61 AC */	b SetTrimSize__9dCamera_cFl
/* 806DCE64  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 806DCE68  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 806DCE6C  EC 21 00 2A */	fadds f1, f1, f0
/* 806DCE70  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DCE74  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 806DCE78  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 806DCE7C  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 806DCE80  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 806DCE84  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 806DCE88  38 81 00 98 */	addi r4, r1, 0x98
/* 806DCE8C  38 A0 00 00 */	li r5, 0
/* 806DCE90  38 C0 00 00 */	li r6, 0
/* 806DCE94  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806DCE98  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806DCE9C  7D 89 03 A6 */	mtctr r12
/* 806DCEA0  4E 80 04 21 */	bctrl 
lbl_806DCEA4:
/* 806DCEA4  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DCEA8  2C 00 00 02 */	cmpwi r0, 2
/* 806DCEAC  40 82 00 28 */	bne lbl_806DCED4
/* 806DCEB0  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 806DCEB4  38 00 00 17 */	li r0, 0x17
/* 806DCEB8  90 03 06 14 */	stw r0, 0x614(r3)
/* 806DCEBC  38 00 00 01 */	li r0, 1
/* 806DCEC0  90 03 06 0C */	stw r0, 0x60c(r3)
/* 806DCEC4  38 00 00 02 */	li r0, 2
/* 806DCEC8  90 03 06 10 */	stw r0, 0x610(r3)
/* 806DCECC  38 00 00 00 */	li r0, 0
/* 806DCED0  B0 03 06 0A */	sth r0, 0x60a(r3)
lbl_806DCED4:
/* 806DCED4  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 806DCED8  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DCEDC  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 806DCEE0  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 806DCEE4  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 806DCEE8  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 806DCEEC  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 806DCEF0  38 81 00 98 */	addi r4, r1, 0x98
/* 806DCEF4  38 A0 00 00 */	li r5, 0
/* 806DCEF8  38 C0 00 00 */	li r6, 0
/* 806DCEFC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806DCF00  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806DCF04  7D 89 03 A6 */	mtctr r12
/* 806DCF08  4E 80 04 21 */	bctrl 
/* 806DCF0C  A8 1F 06 D6 */	lha r0, 0x6d6(r31)
/* 806DCF10  2C 00 00 02 */	cmpwi r0, 2
/* 806DCF14  41 80 01 14 */	blt lbl_806DD028
/* 806DCF18  38 7F 0D 3C */	addi r3, r31, 0xd3c
/* 806DCF1C  C0 3E 01 7C */	lfs f1, 0x17c(r30)
/* 806DCF20  C0 5E 01 38 */	lfs f2, 0x138(r30)
/* 806DCF24  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 806DCF28  4B B9 2B 14 */	b cLib_addCalc2__FPffff
/* 806DCF2C  38 7F 0D 44 */	addi r3, r31, 0xd44
/* 806DCF30  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806DCF34  C0 5E 01 38 */	lfs f2, 0x138(r30)
/* 806DCF38  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 806DCF3C  4B B9 2B 00 */	b cLib_addCalc2__FPffff
/* 806DCF40  38 7F 0D 40 */	addi r3, r31, 0xd40
/* 806DCF44  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806DCF48  C0 5E 01 38 */	lfs f2, 0x138(r30)
/* 806DCF4C  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 806DCF50  4B B9 2A EC */	b cLib_addCalc2__FPffff
/* 806DCF54  38 7F 0D 48 */	addi r3, r31, 0xd48
/* 806DCF58  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806DCF5C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 806DCF60  EC 21 00 28 */	fsubs f1, f1, f0
/* 806DCF64  C0 5E 00 F8 */	lfs f2, 0xf8(r30)
/* 806DCF68  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 806DCF6C  4B B9 2A D0 */	b cLib_addCalc2__FPffff
/* 806DCF70  38 7F 0D 4C */	addi r3, r31, 0xd4c
/* 806DCF74  C0 5E 01 8C */	lfs f2, 0x18c(r30)
/* 806DCF78  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806DCF7C  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 806DCF80  EC 01 00 2A */	fadds f0, f1, f0
/* 806DCF84  EC 22 00 2A */	fadds f1, f2, f0
/* 806DCF88  C0 5E 00 F8 */	lfs f2, 0xf8(r30)
/* 806DCF8C  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 806DCF90  4B B9 2A AC */	b cLib_addCalc2__FPffff
/* 806DCF94  38 7F 0D 50 */	addi r3, r31, 0xd50
/* 806DCF98  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806DCF9C  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 806DCFA0  EC 20 18 28 */	fsubs f1, f0, f3
/* 806DCFA4  C0 5E 00 F8 */	lfs f2, 0xf8(r30)
/* 806DCFA8  4B B9 2A 94 */	b cLib_addCalc2__FPffff
/* 806DCFAC  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DCFB0  2C 00 00 80 */	cmpwi r0, 0x80
/* 806DCFB4  40 82 00 B8 */	bne lbl_806DD06C
/* 806DCFB8  38 00 00 01 */	li r0, 1
/* 806DCFBC  98 1F 06 DA */	stb r0, 0x6da(r31)
/* 806DCFC0  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 806DCFC4  D0 1F 06 E8 */	stfs f0, 0x6e8(r31)
/* 806DCFC8  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 806DCFCC  D0 1F 06 EC */	stfs f0, 0x6ec(r31)
/* 806DCFD0  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 806DCFD4  D0 1F 06 F0 */	stfs f0, 0x6f0(r31)
/* 806DCFD8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806DCFDC  7C 03 07 74 */	extsb r3, r0
/* 806DCFE0  4B 95 00 8C */	b dComIfGp_getReverb__Fi
/* 806DCFE4  7C 67 1B 78 */	mr r7, r3
/* 806DCFE8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070202@ha */
/* 806DCFEC  38 03 02 02 */	addi r0, r3, 0x0202 /* 0x00070202@l */
/* 806DCFF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806DCFF4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806DCFF8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806DCFFC  80 63 00 00 */	lwz r3, 0(r3)
/* 806DD000  38 81 00 24 */	addi r4, r1, 0x24
/* 806DD004  38 BF 06 DC */	addi r5, r31, 0x6dc
/* 806DD008  38 C0 00 00 */	li r6, 0
/* 806DD00C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806DD010  FC 40 08 90 */	fmr f2, f1
/* 806DD014  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 806DD018  FC 80 18 90 */	fmr f4, f3
/* 806DD01C  39 00 00 00 */	li r8, 0
/* 806DD020  4B BC E9 64 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806DD024  48 00 00 48 */	b lbl_806DD06C
lbl_806DD028:
/* 806DD028  38 7F 0D 48 */	addi r3, r31, 0xd48
/* 806DD02C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806DD030  C0 5E 00 F8 */	lfs f2, 0xf8(r30)
/* 806DD034  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 806DD038  4B B9 2A 04 */	b cLib_addCalc2__FPffff
/* 806DD03C  38 7F 0D 4C */	addi r3, r31, 0xd4c
/* 806DD040  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806DD044  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 806DD048  EC 21 00 2A */	fadds f1, f1, f0
/* 806DD04C  C0 5E 00 F8 */	lfs f2, 0xf8(r30)
/* 806DD050  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 806DD054  4B B9 29 E8 */	b cLib_addCalc2__FPffff
/* 806DD058  38 7F 0D 50 */	addi r3, r31, 0xd50
/* 806DD05C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 806DD060  C0 5E 00 F8 */	lfs f2, 0xf8(r30)
/* 806DD064  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 806DD068  4B B9 29 D4 */	b cLib_addCalc2__FPffff
lbl_806DD06C:
/* 806DD06C  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DD070  2C 00 00 BE */	cmpwi r0, 0xbe
/* 806DD074  40 82 00 58 */	bne lbl_806DD0CC
/* 806DD078  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DD07C  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
/* 806DD080  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806DD084  7C 03 07 74 */	extsb r3, r0
/* 806DD088  4B 94 FF E4 */	b dComIfGp_getReverb__Fi
/* 806DD08C  7C 67 1B 78 */	mr r7, r3
/* 806DD090  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070204@ha */
/* 806DD094  38 03 02 04 */	addi r0, r3, 0x0204 /* 0x00070204@l */
/* 806DD098  90 01 00 20 */	stw r0, 0x20(r1)
/* 806DD09C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806DD0A0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806DD0A4  80 63 00 00 */	lwz r3, 0(r3)
/* 806DD0A8  38 81 00 20 */	addi r4, r1, 0x20
/* 806DD0AC  38 BF 06 DC */	addi r5, r31, 0x6dc
/* 806DD0B0  38 C0 00 00 */	li r6, 0
/* 806DD0B4  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806DD0B8  FC 40 08 90 */	fmr f2, f1
/* 806DD0BC  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 806DD0C0  FC 80 18 90 */	fmr f4, f3
/* 806DD0C4  39 00 00 00 */	li r8, 0
/* 806DD0C8  4B BC E8 BC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806DD0CC:
/* 806DD0CC  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DD0D0  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 806DD0D4  40 82 05 74 */	bne lbl_806DD648
/* 806DD0D8  38 00 00 0D */	li r0, 0xd
/* 806DD0DC  B0 1F 0D 38 */	sth r0, 0xd38(r31)
/* 806DD0E0  38 00 00 00 */	li r0, 0
/* 806DD0E4  B0 1F 0D 3A */	sth r0, 0xd3a(r31)
/* 806DD0E8  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 806DD0EC  D0 1F 0D 3C */	stfs f0, 0xd3c(r31)
/* 806DD0F0  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 806DD0F4  D0 1F 0D 40 */	stfs f0, 0xd40(r31)
/* 806DD0F8  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 806DD0FC  D0 1F 0D 44 */	stfs f0, 0xd44(r31)
/* 806DD100  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806DD104  D0 1F 0D 48 */	stfs f0, 0xd48(r31)
/* 806DD108  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806DD10C  D0 1F 0D 4C */	stfs f0, 0xd4c(r31)
/* 806DD110  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806DD114  D0 1F 0D 50 */	stfs f0, 0xd50(r31)
lbl_806DD118:
/* 806DD118  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 806DD11C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DD120  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 806DD124  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 806DD128  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 806DD12C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 806DD130  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 806DD134  38 81 00 98 */	addi r4, r1, 0x98
/* 806DD138  38 A0 00 00 */	li r5, 0
/* 806DD13C  38 C0 00 00 */	li r6, 0
/* 806DD140  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806DD144  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806DD148  7D 89 03 A6 */	mtctr r12
/* 806DD14C  4E 80 04 21 */	bctrl 
/* 806DD150  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DD154  2C 00 00 14 */	cmpwi r0, 0x14
/* 806DD158  40 82 00 0C */	bne lbl_806DD164
/* 806DD15C  38 00 00 02 */	li r0, 2
/* 806DD160  B0 1F 06 58 */	sth r0, 0x658(r31)
lbl_806DD164:
/* 806DD164  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DD168  2C 00 00 96 */	cmpwi r0, 0x96
/* 806DD16C  41 80 00 0C */	blt lbl_806DD178
/* 806DD170  38 00 00 96 */	li r0, 0x96
/* 806DD174  B0 1F 0D 3A */	sth r0, 0xd3a(r31)
lbl_806DD178:
/* 806DD178  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DD17C  2C 00 00 3C */	cmpwi r0, 0x3c
/* 806DD180  41 80 00 E4 */	blt lbl_806DD264
/* 806DD184  40 82 00 7C */	bne lbl_806DD200
/* 806DD188  38 7F 0D 94 */	addi r3, r31, 0xd94
/* 806DD18C  7F E4 FB 78 */	mr r4, r31
/* 806DD190  38 A0 00 CA */	li r5, 0xca
/* 806DD194  38 C0 00 00 */	li r6, 0
/* 806DD198  38 E0 00 00 */	li r7, 0
/* 806DD19C  4B B6 CD F4 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 806DD1A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806DD1A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806DD1A8  80 63 00 00 */	lwz r3, 0(r3)
/* 806DD1AC  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 806DD1B0  D0 63 04 04 */	stfs f3, 0x404(r3)
/* 806DD1B4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DD1B8  D0 03 04 08 */	stfs f0, 0x408(r3)
/* 806DD1BC  38 00 00 00 */	li r0, 0
/* 806DD1C0  90 03 04 10 */	stw r0, 0x410(r3)
/* 806DD1C4  D0 03 04 0C */	stfs f0, 0x40c(r3)
/* 806DD1C8  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 806DD1CC  38 00 00 2D */	li r0, 0x2d
/* 806DD1D0  90 03 04 20 */	stw r0, 0x420(r3)
/* 806DD1D4  EC 43 00 28 */	fsubs f2, f3, f0
/* 806DD1D8  80 03 04 20 */	lwz r0, 0x420(r3)
/* 806DD1DC  C8 3E 01 C8 */	lfd f1, 0x1c8(r30)
/* 806DD1E0  90 01 00 AC */	stw r0, 0xac(r1)
/* 806DD1E4  3C 00 43 30 */	lis r0, 0x4330
/* 806DD1E8  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 806DD1EC  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 806DD1F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 806DD1F4  EC 02 00 24 */	fdivs f0, f2, f0
/* 806DD1F8  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 806DD1FC  D0 63 04 1C */	stfs f3, 0x41c(r3)
lbl_806DD200:
/* 806DD200  38 7F 0D 94 */	addi r3, r31, 0xd94
/* 806DD204  4B B6 D3 34 */	b getMsgNo__10dMsgFlow_cFv
/* 806DD208  28 03 17 77 */	cmplwi r3, 0x1777
/* 806DD20C  41 82 00 18 */	beq lbl_806DD224
/* 806DD210  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 806DD214  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 806DD218  80 03 00 34 */	lwz r0, 0x34(r3)
/* 806DD21C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 806DD220  41 82 00 18 */	beq lbl_806DD238
lbl_806DD224:
/* 806DD224  A8 1F 06 58 */	lha r0, 0x658(r31)
/* 806DD228  2C 00 00 04 */	cmpwi r0, 4
/* 806DD22C  40 80 00 0C */	bge lbl_806DD238
/* 806DD230  38 00 00 04 */	li r0, 4
/* 806DD234  B0 1F 06 58 */	sth r0, 0x658(r31)
lbl_806DD238:
/* 806DD238  38 7F 0D 94 */	addi r3, r31, 0xd94
/* 806DD23C  7F E4 FB 78 */	mr r4, r31
/* 806DD240  38 A0 00 00 */	li r5, 0
/* 806DD244  38 C0 00 00 */	li r6, 0
/* 806DD248  4B B6 D0 90 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 806DD24C  2C 03 00 00 */	cmpwi r3, 0
/* 806DD250  41 82 00 14 */	beq lbl_806DD264
/* 806DD254  38 00 00 0E */	li r0, 0xe
/* 806DD258  B0 1F 0D 38 */	sth r0, 0xd38(r31)
/* 806DD25C  38 00 00 00 */	li r0, 0
/* 806DD260  B0 1F 0D 3A */	sth r0, 0xd3a(r31)
lbl_806DD264:
/* 806DD264  38 7F 0D 48 */	addi r3, r31, 0xd48
/* 806DD268  C0 3F 05 38 */	lfs f1, 0x538(r31)
/* 806DD26C  C0 5E 01 38 */	lfs f2, 0x138(r30)
/* 806DD270  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 806DD274  4B B9 27 C8 */	b cLib_addCalc2__FPffff
/* 806DD278  38 7F 0D 4C */	addi r3, r31, 0xd4c
/* 806DD27C  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 806DD280  C0 5E 01 38 */	lfs f2, 0x138(r30)
/* 806DD284  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 806DD288  4B B9 27 B4 */	b cLib_addCalc2__FPffff
/* 806DD28C  38 7F 0D 50 */	addi r3, r31, 0xd50
/* 806DD290  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 806DD294  C0 5E 01 38 */	lfs f2, 0x138(r30)
/* 806DD298  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 806DD29C  4B B9 27 A0 */	b cLib_addCalc2__FPffff
/* 806DD2A0  A8 1F 0D 38 */	lha r0, 0xd38(r31)
/* 806DD2A4  2C 00 00 0E */	cmpwi r0, 0xe
/* 806DD2A8  40 82 00 20 */	bne lbl_806DD2C8
/* 806DD2AC  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DD2B0  2C 00 00 14 */	cmpwi r0, 0x14
/* 806DD2B4  40 82 00 14 */	bne lbl_806DD2C8
/* 806DD2B8  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 806DD2BC  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 806DD2C0  38 63 06 04 */	addi r3, r3, g_blackColor@l
/* 806DD2C4  4B 92 AD 14 */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
lbl_806DD2C8:
/* 806DD2C8  A8 1F 0D 38 */	lha r0, 0xd38(r31)
/* 806DD2CC  2C 00 00 0E */	cmpwi r0, 0xe
/* 806DD2D0  40 82 03 78 */	bne lbl_806DD648
/* 806DD2D4  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DD2D8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 806DD2DC  40 82 03 6C */	bne lbl_806DD648
/* 806DD2E0  38 00 00 0F */	li r0, 0xf
/* 806DD2E4  B0 1F 0D 38 */	sth r0, 0xd38(r31)
/* 806DD2E8  38 00 00 00 */	li r0, 0
/* 806DD2EC  B0 1F 0D 3A */	sth r0, 0xd3a(r31)
/* 806DD2F0  38 00 00 03 */	li r0, 3
/* 806DD2F4  3C 60 80 6E */	lis r3, ms@ha
/* 806DD2F8  38 A3 F2 F4 */	addi r5, r3, ms@l
/* 806DD2FC  80 65 00 00 */	lwz r3, 0(r5)
/* 806DD300  B0 03 05 82 */	sth r0, 0x582(r3)
/* 806DD304  38 00 00 01 */	li r0, 1
/* 806DD308  3C 60 80 6E */	lis r3, my@ha
/* 806DD30C  38 83 F2 F8 */	addi r4, r3, my@l
/* 806DD310  80 64 00 00 */	lwz r3, 0(r4)
/* 806DD314  B0 03 05 7E */	sth r0, 0x57e(r3)
/* 806DD318  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 806DD31C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 806DD320  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 806DD324  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806DD328  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 806DD32C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 806DD330  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 806DD334  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 806DD338  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 806DD33C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 806DD340  A8 1B 04 E0 */	lha r0, 0x4e0(r27)
/* 806DD344  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 806DD348  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 806DD34C  98 1F 04 E2 */	stb r0, 0x4e2(r31)
/* 806DD350  88 1B 04 E3 */	lbz r0, 0x4e3(r27)
/* 806DD354  98 1F 04 E3 */	stb r0, 0x4e3(r31)
/* 806DD358  A8 1B 04 E4 */	lha r0, 0x4e4(r27)
/* 806DD35C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 806DD360  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 806DD364  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 806DD368  A8 1B 04 E8 */	lha r0, 0x4e8(r27)
/* 806DD36C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 806DD370  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 806DD374  80 65 00 00 */	lwz r3, 0(r5)
/* 806DD378  C0 23 05 8C */	lfs f1, 0x58c(r3)
/* 806DD37C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806DD380  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DD384  EC 02 00 2A */	fadds f0, f2, f0
/* 806DD388  80 64 00 00 */	lwz r3, 0(r4)
/* 806DD38C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 806DD390  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806DD394  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 806DD398  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 806DD39C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806DD3A0  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 806DD3A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DD3A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DD3AC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806DD3B0  38 80 00 02 */	li r4, 2
/* 806DD3B4  38 A0 00 01 */	li r5, 1
/* 806DD3B8  38 C1 00 5C */	addi r6, r1, 0x5c
/* 806DD3BC  4B 99 27 54 */	b StartQuake__12dVibration_cFii4cXyz
lbl_806DD3C0:
/* 806DD3C0  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DD3C4  2C 00 00 02 */	cmpwi r0, 2
/* 806DD3C8  40 82 00 4C */	bne lbl_806DD414
/* 806DD3CC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 806DD3D0  D0 1F 0D 84 */	stfs f0, 0xd84(r31)
/* 806DD3D4  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 806DD3D8  D0 1F 0D 48 */	stfs f0, 0xd48(r31)
/* 806DD3DC  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 806DD3E0  D0 1F 0D 4C */	stfs f0, 0xd4c(r31)
/* 806DD3E4  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 806DD3E8  D0 1F 0D 50 */	stfs f0, 0xd50(r31)
/* 806DD3EC  C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 806DD3F0  D0 1F 0D 3C */	stfs f0, 0xd3c(r31)
/* 806DD3F4  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 806DD3F8  D0 1F 0D 40 */	stfs f0, 0xd40(r31)
/* 806DD3FC  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 806DD400  D0 1F 0D 44 */	stfs f0, 0xd44(r31)
/* 806DD404  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 806DD408  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 806DD40C  38 63 06 04 */	addi r3, r3, g_blackColor@l
/* 806DD410  4B 92 AB C8 */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
lbl_806DD414:
/* 806DD414  3C 60 80 6E */	lis r3, ms@ha
/* 806DD418  38 63 F2 F4 */	addi r3, r3, ms@l
/* 806DD41C  80 63 00 00 */	lwz r3, 0(r3)
/* 806DD420  38 63 05 8C */	addi r3, r3, 0x58c
/* 806DD424  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 806DD428  C0 5E 01 BC */	lfs f2, 0x1bc(r30)
/* 806DD42C  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 806DD430  4B B9 26 0C */	b cLib_addCalc2__FPffff
/* 806DD434  3C 60 80 6E */	lis r3, ms@ha
/* 806DD438  38 63 F2 F4 */	addi r3, r3, ms@l
/* 806DD43C  80 63 00 00 */	lwz r3, 0(r3)
/* 806DD440  C0 23 05 8C */	lfs f1, 0x58c(r3)
/* 806DD444  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 806DD448  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DD44C  40 80 00 D0 */	bge lbl_806DD51C
/* 806DD450  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 806DD454  D0 1F 0D 8C */	stfs f0, 0xd8c(r31)
/* 806DD458  A8 7F 0D 3A */	lha r3, 0xd3a(r31)
/* 806DD45C  38 03 00 01 */	addi r0, r3, 1
/* 806DD460  B0 1F 0D 3A */	sth r0, 0xd3a(r31)
/* 806DD464  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DD468  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 806DD46C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806DD470  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806DD474  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DD478  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 806DD47C  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 806DD480  38 00 00 FF */	li r0, 0xff
/* 806DD484  90 01 00 08 */	stw r0, 8(r1)
/* 806DD488  38 80 00 00 */	li r4, 0
/* 806DD48C  90 81 00 0C */	stw r4, 0xc(r1)
/* 806DD490  38 00 FF FF */	li r0, -1
/* 806DD494  90 01 00 10 */	stw r0, 0x10(r1)
/* 806DD498  90 81 00 14 */	stw r4, 0x14(r1)
/* 806DD49C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806DD4A0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806DD4A4  80 9F 0D 30 */	lwz r4, 0xd30(r31)
/* 806DD4A8  38 A0 00 00 */	li r5, 0
/* 806DD4AC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000844D@ha */
/* 806DD4B0  38 C6 84 4D */	addi r6, r6, 0x844D /* 0x0000844D@l */
/* 806DD4B4  38 E1 00 74 */	addi r7, r1, 0x74
/* 806DD4B8  39 00 00 00 */	li r8, 0
/* 806DD4BC  39 20 00 00 */	li r9, 0
/* 806DD4C0  39 40 00 00 */	li r10, 0
/* 806DD4C4  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806DD4C8  4B 97 00 04 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806DD4CC  90 7F 0D 30 */	stw r3, 0xd30(r31)
/* 806DD4D0  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 806DD4D4  38 63 02 10 */	addi r3, r3, 0x210
/* 806DD4D8  80 9F 0D 30 */	lwz r4, 0xd30(r31)
/* 806DD4DC  4B 96 E3 D8 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 806DD4E0  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 806DD4E4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DD4E8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 806DD4EC  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 806DD4F0  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 806DD4F4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 806DD4F8  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 806DD4FC  38 81 00 98 */	addi r4, r1, 0x98
/* 806DD500  38 A0 80 00 */	li r5, -32768
/* 806DD504  38 C0 00 00 */	li r6, 0
/* 806DD508  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806DD50C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806DD510  7D 89 03 A6 */	mtctr r12
/* 806DD514  4E 80 04 21 */	bctrl 
/* 806DD518  48 00 00 24 */	b lbl_806DD53C
lbl_806DD51C:
/* 806DD51C  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DD520  2C 00 01 E0 */	cmpwi r0, 0x1e0
/* 806DD524  40 82 00 18 */	bne lbl_806DD53C
/* 806DD528  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DD52C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DD530  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806DD534  38 80 00 1F */	li r4, 0x1f
/* 806DD538  4B 99 28 5C */	b StopQuake__12dVibration_cFi
lbl_806DD53C:
/* 806DD53C  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 806DD540  3C 60 80 6E */	lis r3, ms@ha
/* 806DD544  38 63 F2 F4 */	addi r3, r3, ms@l
/* 806DD548  80 63 00 00 */	lwz r3, 0(r3)
/* 806DD54C  C0 23 05 8C */	lfs f1, 0x58c(r3)
/* 806DD550  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806DD554  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DD558  EC 02 00 2A */	fadds f0, f2, f0
/* 806DD55C  3C 60 80 6E */	lis r3, my@ha
/* 806DD560  38 63 F2 F8 */	addi r3, r3, my@l
/* 806DD564  80 63 00 00 */	lwz r3, 0(r3)
/* 806DD568  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 806DD56C  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DD570  2C 00 02 26 */	cmpwi r0, 0x226
/* 806DD574  40 82 00 D4 */	bne lbl_806DD648
/* 806DD578  38 00 00 64 */	li r0, 0x64
/* 806DD57C  B0 1F 0D 38 */	sth r0, 0xd38(r31)
/* 806DD580  38 00 00 0B */	li r0, 0xb
/* 806DD584  B0 1F 06 56 */	sth r0, 0x656(r31)
/* 806DD588  38 00 00 00 */	li r0, 0
/* 806DD58C  B0 1F 06 58 */	sth r0, 0x658(r31)
/* 806DD590  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DD594  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DD598  38 63 09 58 */	addi r3, r3, 0x958
/* 806DD59C  38 80 00 07 */	li r4, 7
/* 806DD5A0  4B 95 73 78 */	b onDungeonItem__12dSv_memBit_cFi
/* 806DD5A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DD5A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DD5AC  38 80 00 0E */	li r4, 0xe
/* 806DD5B0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 806DD5B4  7C 05 07 74 */	extsb r5, r0
/* 806DD5B8  4B 95 7C 48 */	b onSwitch__10dSv_info_cFii
/* 806DD5BC  48 00 00 8C */	b lbl_806DD648
lbl_806DD5C0:
/* 806DD5C0  C0 1F 0D 48 */	lfs f0, 0xd48(r31)
/* 806DD5C4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806DD5C8  C0 1F 0D 4C */	lfs f0, 0xd4c(r31)
/* 806DD5CC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806DD5D0  C0 1F 0D 50 */	lfs f0, 0xd50(r31)
/* 806DD5D4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806DD5D8  C0 1F 0D 3C */	lfs f0, 0xd3c(r31)
/* 806DD5DC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806DD5E0  C0 1F 0D 40 */	lfs f0, 0xd40(r31)
/* 806DD5E4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806DD5E8  C0 1F 0D 44 */	lfs f0, 0xd44(r31)
/* 806DD5EC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806DD5F0  38 7D 02 48 */	addi r3, r29, 0x248
/* 806DD5F4  38 81 00 50 */	addi r4, r1, 0x50
/* 806DD5F8  38 A1 00 44 */	addi r5, r1, 0x44
/* 806DD5FC  C0 3F 0D 84 */	lfs f1, 0xd84(r31)
/* 806DD600  38 C0 00 00 */	li r6, 0
/* 806DD604  4B AA 35 9C */	b Reset__9dCamera_cF4cXyz4cXyzfs
/* 806DD608  38 7D 02 48 */	addi r3, r29, 0x248
/* 806DD60C  4B A8 3E A0 */	b Start__9dCamera_cFv
/* 806DD610  38 7D 02 48 */	addi r3, r29, 0x248
/* 806DD614  38 80 00 00 */	li r4, 0
/* 806DD618  4B A8 59 F4 */	b SetTrimSize__9dCamera_cFl
/* 806DD61C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DD620  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DD624  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 806DD628  4B 96 4E 40 */	b reset__14dEvt_control_cFv
/* 806DD62C  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 806DD630  38 00 00 02 */	li r0, 2
/* 806DD634  B0 03 06 04 */	sth r0, 0x604(r3)
/* 806DD638  38 00 00 01 */	li r0, 1
/* 806DD63C  90 03 06 14 */	stw r0, 0x614(r3)
/* 806DD640  38 00 00 00 */	li r0, 0
/* 806DD644  B0 1F 0D 38 */	sth r0, 0xd38(r31)
lbl_806DD648:
/* 806DD648  A8 1F 0D 38 */	lha r0, 0xd38(r31)
/* 806DD64C  2C 00 00 00 */	cmpwi r0, 0
/* 806DD650  41 82 01 98 */	beq lbl_806DD7E8
/* 806DD654  C0 1F 0D 48 */	lfs f0, 0xd48(r31)
/* 806DD658  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806DD65C  C0 1F 0D 4C */	lfs f0, 0xd4c(r31)
/* 806DD660  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806DD664  C0 1F 0D 50 */	lfs f0, 0xd50(r31)
/* 806DD668  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 806DD66C  C0 1F 0D 3C */	lfs f0, 0xd3c(r31)
/* 806DD670  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 806DD674  C0 1F 0D 40 */	lfs f0, 0xd40(r31)
/* 806DD678  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 806DD67C  C0 1F 0D 44 */	lfs f0, 0xd44(r31)
/* 806DD680  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 806DD684  3B 40 00 00 */	li r26, 0
/* 806DD688  C0 5F 0D 8C */	lfs f2, 0xd8c(r31)
/* 806DD68C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806DD690  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806DD694  40 81 00 90 */	ble lbl_806DD724
/* 806DD698  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DD69C  1C 00 12 00 */	mulli r0, r0, 0x1200
/* 806DD6A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806DD6A4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806DD6A8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806DD6AC  7C 03 04 2E */	lfsx f0, r3, r0
/* 806DD6B0  C0 3F 0D 4C */	lfs f1, 0xd4c(r31)
/* 806DD6B4  EC 02 00 32 */	fmuls f0, f2, f0
/* 806DD6B8  EC 01 00 2A */	fadds f0, f1, f0
/* 806DD6BC  D0 1F 0D 4C */	stfs f0, 0xd4c(r31)
/* 806DD6C0  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DD6C4  1C 00 12 00 */	mulli r0, r0, 0x1200
/* 806DD6C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806DD6CC  7C 43 04 2E */	lfsx f2, r3, r0
/* 806DD6D0  C0 3F 0D 40 */	lfs f1, 0xd40(r31)
/* 806DD6D4  C0 1F 0D 8C */	lfs f0, 0xd8c(r31)
/* 806DD6D8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806DD6DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 806DD6E0  D0 1F 0D 40 */	stfs f0, 0xd40(r31)
/* 806DD6E4  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DD6E8  1C 00 13 00 */	mulli r0, r0, 0x1300
/* 806DD6EC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806DD6F0  7C 63 02 14 */	add r3, r3, r0
/* 806DD6F4  C0 43 00 04 */	lfs f2, 4(r3)
/* 806DD6F8  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 806DD6FC  C0 1F 0D 8C */	lfs f0, 0xd8c(r31)
/* 806DD700  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806DD704  EC 01 00 32 */	fmuls f0, f1, f0
/* 806DD708  FC 00 00 1E */	fctiwz f0, f0
/* 806DD70C  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 806DD710  83 41 00 AC */	lwz r26, 0xac(r1)
/* 806DD714  38 7F 0D 8C */	addi r3, r31, 0xd8c
/* 806DD718  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806DD71C  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 806DD720  4B B9 23 60 */	b cLib_addCalc0__FPfff
lbl_806DD724:
/* 806DD724  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 806DD728  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806DD72C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 806DD730  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806DD734  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 806DD738  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806DD73C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 806DD740  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806DD744  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 806DD748  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806DD74C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 806DD750  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806DD754  38 7D 02 48 */	addi r3, r29, 0x248
/* 806DD758  38 81 00 38 */	addi r4, r1, 0x38
/* 806DD75C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 806DD760  7F 46 D3 78 */	mr r6, r26
/* 806DD764  C0 3F 0D 84 */	lfs f1, 0xd84(r31)
/* 806DD768  4B AA 33 D8 */	b Set__9dCamera_cF4cXyz4cXyzsf
/* 806DD76C  A8 7F 0D 3A */	lha r3, 0xd3a(r31)
/* 806DD770  38 03 00 01 */	addi r0, r3, 1
/* 806DD774  B0 1F 0D 3A */	sth r0, 0xd3a(r31)
/* 806DD778  A8 1F 0D 3A */	lha r0, 0xd3a(r31)
/* 806DD77C  2C 00 27 10 */	cmpwi r0, 0x2710
/* 806DD780  40 81 00 0C */	ble lbl_806DD78C
/* 806DD784  38 00 27 10 */	li r0, 0x2710
/* 806DD788  B0 1F 0D 3A */	sth r0, 0xd3a(r31)
lbl_806DD78C:
/* 806DD78C  A8 1F 0D 38 */	lha r0, 0xd38(r31)
/* 806DD790  2C 00 00 02 */	cmpwi r0, 2
/* 806DD794  41 80 00 54 */	blt lbl_806DD7E8
/* 806DD798  2C 00 00 0A */	cmpwi r0, 0xa
/* 806DD79C  40 80 00 4C */	bge lbl_806DD7E8
/* 806DD7A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806DD7A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806DD7A8  A0 03 4F A2 */	lhz r0, 0x4fa2(r3)
/* 806DD7AC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806DD7B0  41 82 00 38 */	beq lbl_806DD7E8
/* 806DD7B4  38 00 00 14 */	li r0, 0x14
/* 806DD7B8  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 806DD7BC  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)
/* 806DD7C0  38 00 03 E8 */	li r0, 0x3e8
/* 806DD7C4  B0 1F 0D 38 */	sth r0, 0xd38(r31)
/* 806DD7C8  38 60 00 02 */	li r3, 2
/* 806DD7CC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806DD7D0  38 80 00 00 */	li r4, 0
/* 806DD7D4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806DD7D8  7C 05 07 74 */	extsb r5, r0
/* 806DD7DC  38 C0 00 00 */	li r6, 0
/* 806DD7E0  38 E0 FF FF */	li r7, -1
/* 806DD7E4  4B 94 99 8C */	b dStage_changeScene__FifUlScsi
lbl_806DD7E8:
/* 806DD7E8  39 61 00 D0 */	addi r11, r1, 0xd0
/* 806DD7EC  4B C8 4A 30 */	b _restgpr_26
/* 806DD7F0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 806DD7F4  7C 08 03 A6 */	mtlr r0
/* 806DD7F8  38 21 00 D0 */	addi r1, r1, 0xd0
/* 806DD7FC  4E 80 00 20 */	blr 
