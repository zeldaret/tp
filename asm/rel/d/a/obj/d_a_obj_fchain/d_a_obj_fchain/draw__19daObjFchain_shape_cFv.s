lbl_80BE7194:
/* 80BE7194  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BE7198  7C 08 02 A6 */	mflr r0
/* 80BE719C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BE71A0  39 61 00 40 */	addi r11, r1, 0x40
/* 80BE71A4  4B 77 B0 24 */	b _savegpr_24
/* 80BE71A8  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 80BE71AC  3B C5 06 94 */	addi r30, r5, 0x694
/* 80BE71B0  3B A5 08 A4 */	addi r29, r5, 0x8a4
/* 80BE71B4  80 85 05 70 */	lwz r4, 0x570(r5)
/* 80BE71B8  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80BE71BC  83 E3 00 00 */	lwz r31, 0(r3)
/* 80BE71C0  3B 85 01 0C */	addi r28, r5, 0x10c
/* 80BE71C4  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80BE71C8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BE71CC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80BE71D0  90 03 01 0C */	stw r0, 0x10c(r3)
/* 80BE71D4  80 04 00 A4 */	lwz r0, 0xa4(r4)
/* 80BE71D8  90 03 01 10 */	stw r0, 0x110(r3)
/* 80BE71DC  80 04 00 AC */	lwz r0, 0xac(r4)
/* 80BE71E0  90 03 01 14 */	stw r0, 0x114(r3)
/* 80BE71E4  38 00 00 00 */	li r0, 0
/* 80BE71E8  3C 60 80 45 */	lis r3, sOldVcdVatCmd__8J3DShape@ha
/* 80BE71EC  90 03 15 D0 */	stw r0, sOldVcdVatCmd__8J3DShape@l(r3)
/* 80BE71F0  7F E3 FB 78 */	mr r3, r31
/* 80BE71F4  81 9F 00 00 */	lwz r12, 0(r31)
/* 80BE71F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80BE71FC  7D 89 03 A6 */	mtctr r12
/* 80BE7200  4E 80 04 21 */	bctrl 
/* 80BE7204  80 7F 00 08 */	lwz r3, 8(r31)
/* 80BE7208  4B 72 E0 F8 */	b loadPreDrawSetting__8J3DShapeCFv
/* 80BE720C  A8 1C 03 48 */	lha r0, 0x348(r28)
/* 80BE7210  98 01 00 10 */	stb r0, 0x10(r1)
/* 80BE7214  A8 1C 03 4A */	lha r0, 0x34a(r28)
/* 80BE7218  98 01 00 11 */	stb r0, 0x11(r1)
/* 80BE721C  A8 1C 03 4C */	lha r0, 0x34c(r28)
/* 80BE7220  98 01 00 12 */	stb r0, 0x12(r1)
/* 80BE7224  A8 1C 03 4E */	lha r0, 0x34e(r28)
/* 80BE7228  98 01 00 13 */	stb r0, 0x13(r1)
/* 80BE722C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80BE7230  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BE7234  38 60 00 04 */	li r3, 4
/* 80BE7238  38 81 00 0C */	addi r4, r1, 0xc
/* 80BE723C  4B 77 67 24 */	b GXSetChanAmbColor
/* 80BE7240  3C 60 80 45 */	lis r3, g_whiteColor@ha
/* 80BE7244  80 03 06 08 */	lwz r0, g_whiteColor@l(r3)
/* 80BE7248  90 01 00 08 */	stw r0, 8(r1)
/* 80BE724C  38 60 00 04 */	li r3, 4
/* 80BE7250  38 81 00 08 */	addi r4, r1, 8
/* 80BE7254  4B 77 67 F4 */	b GXSetChanMatColor
/* 80BE7258  4B 5C 03 68 */	b dKy_setLight_again__Fv
/* 80BE725C  7F 83 E3 78 */	mr r3, r28
/* 80BE7260  4B 5C 13 F0 */	b dKy_GxFog_tevstr_set__FP12dKy_tevstr_c
/* 80BE7264  38 7C 00 34 */	addi r3, r28, 0x34
/* 80BE7268  38 80 00 01 */	li r4, 1
/* 80BE726C  4B 77 66 78 */	b GXLoadLightObjImm
/* 80BE7270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE7274  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE7278  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80BE727C  38 80 05 10 */	li r4, 0x510
/* 80BE7280  4B 44 D7 3C */	b isEventBit__11dSv_event_cCFUs
/* 80BE7284  2C 03 00 00 */	cmpwi r3, 0
/* 80BE7288  3B 20 00 16 */	li r25, 0x16
/* 80BE728C  41 82 00 08 */	beq lbl_80BE7294
/* 80BE7290  3B 20 00 11 */	li r25, 0x11
lbl_80BE7294:
/* 80BE7294  3B 00 00 00 */	li r24, 0
/* 80BE7298  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BE729C  3B 43 4A C8 */	addi r26, r3, j3dSys@l
/* 80BE72A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BE72A4  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
/* 80BE72A8  7F 7C DB 78 */	mr r28, r27
/* 80BE72AC  48 00 00 58 */	b lbl_80BE7304
lbl_80BE72B0:
/* 80BE72B0  7F 43 D3 78 */	mr r3, r26
/* 80BE72B4  7F 64 DB 78 */	mr r4, r27
/* 80BE72B8  4B 75 F1 F8 */	b PSMTXCopy
/* 80BE72BC  7F C3 F3 78 */	mr r3, r30
/* 80BE72C0  4B 42 5B 14 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80BE72C4  7F A3 EB 78 */	mr r3, r29
/* 80BE72C8  4B 42 5C 7C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BE72CC  7F 63 DB 78 */	mr r3, r27
/* 80BE72D0  38 80 00 00 */	li r4, 0
/* 80BE72D4  4B 77 8F 78 */	b GXLoadPosMtxImm
/* 80BE72D8  7F 83 E3 78 */	mr r3, r28
/* 80BE72DC  38 80 00 00 */	li r4, 0
/* 80BE72E0  4B 77 8F BC */	b GXLoadNrmMtxImm
/* 80BE72E4  80 7F 00 08 */	lwz r3, 8(r31)
/* 80BE72E8  81 83 00 00 */	lwz r12, 0(r3)
/* 80BE72EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BE72F0  7D 89 03 A6 */	mtctr r12
/* 80BE72F4  4E 80 04 21 */	bctrl 
/* 80BE72F8  3B 18 00 01 */	addi r24, r24, 1
/* 80BE72FC  3B DE 00 0C */	addi r30, r30, 0xc
/* 80BE7300  3B BD 00 06 */	addi r29, r29, 6
lbl_80BE7304:
/* 80BE7304  7C 18 C8 00 */	cmpw r24, r25
/* 80BE7308  41 80 FF A8 */	blt lbl_80BE72B0
/* 80BE730C  39 61 00 40 */	addi r11, r1, 0x40
/* 80BE7310  4B 77 AF 04 */	b _restgpr_24
/* 80BE7314  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BE7318  7C 08 03 A6 */	mtlr r0
/* 80BE731C  38 21 00 40 */	addi r1, r1, 0x40
/* 80BE7320  4E 80 00 20 */	blr 
