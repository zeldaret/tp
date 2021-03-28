lbl_80D629C0:
/* 80D629C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D629C4  7C 08 02 A6 */	mflr r0
/* 80D629C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D629CC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80D629D0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80D629D4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D629D8  4B 5F F8 00 */	b _savegpr_28
/* 80D629DC  7C 7E 1B 78 */	mr r30, r3
/* 80D629E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D629E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D629E8  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80D629EC  7F E3 FB 78 */	mr r3, r31
/* 80D629F0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80D629F4  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 80D629F8  7D 89 03 A6 */	mtctr r12
/* 80D629FC  4E 80 04 21 */	bctrl 
/* 80D62A00  28 03 00 00 */	cmplwi r3, 0
/* 80D62A04  41 82 00 54 */	beq lbl_80D62A58
/* 80D62A08  88 9E 06 E9 */	lbz r4, 0x6e9(r30)
/* 80D62A0C  28 04 00 FF */	cmplwi r4, 0xff
/* 80D62A10  41 82 00 20 */	beq lbl_80D62A30
/* 80D62A14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D62A18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D62A1C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D62A20  7C 05 07 74 */	extsb r5, r0
/* 80D62A24  4B 2D 29 3C */	b isSwitch__10dSv_info_cCFii
/* 80D62A28  2C 03 00 00 */	cmpwi r3, 0
/* 80D62A2C  41 82 00 2C */	beq lbl_80D62A58
lbl_80D62A30:
/* 80D62A30  88 9E 06 EA */	lbz r4, 0x6ea(r30)
/* 80D62A34  28 04 00 FF */	cmplwi r4, 0xff
/* 80D62A38  41 82 00 28 */	beq lbl_80D62A60
/* 80D62A3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D62A40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D62A44  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D62A48  7C 05 07 74 */	extsb r5, r0
/* 80D62A4C  4B 2D 29 14 */	b isSwitch__10dSv_info_cCFii
/* 80D62A50  2C 03 00 00 */	cmpwi r3, 0
/* 80D62A54  41 82 00 0C */	beq lbl_80D62A60
lbl_80D62A58:
/* 80D62A58  38 60 00 01 */	li r3, 1
/* 80D62A5C  48 00 01 24 */	b lbl_80D62B80
lbl_80D62A60:
/* 80D62A60  83 9E 05 68 */	lwz r28, 0x568(r30)
/* 80D62A64  3C 60 80 45 */	lis r3, __float_max@ha
/* 80D62A68  C3 E3 0A E8 */	lfs f31, __float_max@l(r3)
/* 80D62A6C  48 00 00 64 */	b lbl_80D62AD0
lbl_80D62A70:
/* 80D62A70  7F C3 F3 78 */	mr r3, r30
/* 80D62A74  38 81 00 14 */	addi r4, r1, 0x14
/* 80D62A78  7F 85 E3 78 */	mr r5, r28
/* 80D62A7C  4B FF F5 A9 */	bl getNearPathPos__13daTagSppath_cFP4cXyzP5dPath
/* 80D62A80  7C 7D 1B 78 */	mr r29, r3
/* 80D62A84  38 61 00 14 */	addi r3, r1, 0x14
/* 80D62A88  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D62A8C  4B 5E 49 10 */	b PSVECSquareDistance
/* 80D62A90  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80D62A94  40 80 00 28 */	bge lbl_80D62ABC
/* 80D62A98  FF E0 08 90 */	fmr f31, f1
/* 80D62A9C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D62AA0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80D62AA4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80D62AA8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D62AAC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D62AB0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80D62AB4  93 9E 05 6C */	stw r28, 0x56c(r30)
/* 80D62AB8  B3 BE 06 EC */	sth r29, 0x6ec(r30)
lbl_80D62ABC:
/* 80D62ABC  7F 83 E3 78 */	mr r3, r28
/* 80D62AC0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D62AC4  7C 04 07 74 */	extsb r4, r0
/* 80D62AC8  4B 2E ED D0 */	b dPath_GetNextRoomPath__FPC5dPathi
/* 80D62ACC  7C 7C 1B 78 */	mr r28, r3
lbl_80D62AD0:
/* 80D62AD0  28 1C 00 00 */	cmplwi r28, 0
/* 80D62AD4  40 82 FF 9C */	bne lbl_80D62A70
/* 80D62AD8  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80D62ADC  88 03 00 04 */	lbz r0, 4(r3)
/* 80D62AE0  28 00 00 00 */	cmplwi r0, 0
/* 80D62AE4  40 82 00 44 */	bne lbl_80D62B28
/* 80D62AE8  88 83 00 06 */	lbz r4, 6(r3)
/* 80D62AEC  28 04 00 FF */	cmplwi r4, 0xff
/* 80D62AF0  41 82 00 20 */	beq lbl_80D62B10
/* 80D62AF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D62AF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D62AFC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D62B00  7C 05 07 74 */	extsb r5, r0
/* 80D62B04  4B 2D 28 5C */	b isSwitch__10dSv_info_cCFii
/* 80D62B08  2C 03 00 00 */	cmpwi r3, 0
/* 80D62B0C  40 82 00 10 */	bne lbl_80D62B1C
lbl_80D62B10:
/* 80D62B10  38 00 00 01 */	li r0, 1
/* 80D62B14  98 1E 06 E8 */	stb r0, 0x6e8(r30)
/* 80D62B18  48 00 00 18 */	b lbl_80D62B30
lbl_80D62B1C:
/* 80D62B1C  38 00 00 02 */	li r0, 2
/* 80D62B20  98 1E 06 E8 */	stb r0, 0x6e8(r30)
/* 80D62B24  48 00 00 0C */	b lbl_80D62B30
lbl_80D62B28:
/* 80D62B28  38 00 00 00 */	li r0, 0
/* 80D62B2C  98 1E 06 E8 */	stb r0, 0x6e8(r30)
lbl_80D62B30:
/* 80D62B30  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80D62B34  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D62B38  3C 60 80 D6 */	lis r3, lit_4167@ha
/* 80D62B3C  C0 23 2C 48 */	lfs f1, lit_4167@l(r3)
/* 80D62B40  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80D62B44  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D62B48  EC 22 00 28 */	fsubs f1, f2, f0
/* 80D62B4C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D62B50  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D62B54  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D62B58  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80D62B5C  38 7E 06 94 */	addi r3, r30, 0x694
/* 80D62B60  38 81 00 08 */	addi r4, r1, 8
/* 80D62B64  4B 50 C6 78 */	b SetC__8cM3dGCylFRC4cXyz
/* 80D62B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D62B6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D62B70  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D62B74  38 9E 05 70 */	addi r4, r30, 0x570
/* 80D62B78  4B 50 20 30 */	b Set__4cCcSFP8cCcD_Obj
/* 80D62B7C  38 60 00 01 */	li r3, 1
lbl_80D62B80:
/* 80D62B80  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80D62B84  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80D62B88  39 61 00 30 */	addi r11, r1, 0x30
/* 80D62B8C  4B 5F F6 98 */	b _restgpr_28
/* 80D62B90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D62B94  7C 08 03 A6 */	mtlr r0
/* 80D62B98  38 21 00 40 */	addi r1, r1, 0x40
/* 80D62B9C  4E 80 00 20 */	blr 
