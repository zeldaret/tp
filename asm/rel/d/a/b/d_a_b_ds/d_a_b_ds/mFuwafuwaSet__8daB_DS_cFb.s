lbl_805D39A4:
/* 805D39A4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 805D39A8  7C 08 02 A6 */	mflr r0
/* 805D39AC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 805D39B0  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 805D39B4  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 805D39B8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805D39BC  4B D8 E8 1C */	b _savegpr_28
/* 805D39C0  7C 7D 1B 78 */	mr r29, r3
/* 805D39C4  7C 9E 23 78 */	mr r30, r4
/* 805D39C8  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805D39CC  3B E3 CA 54 */	addi r31, r3, lit_3932@l
/* 805D39D0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805D39D4  C0 1D 07 34 */	lfs f0, 0x734(r29)
/* 805D39D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D39DC  FC 00 02 10 */	fabs f0, f0
/* 805D39E0  FC 20 00 18 */	frsp f1, f0
/* 805D39E4  C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 805D39E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D39EC  40 80 01 60 */	bge lbl_805D3B4C
/* 805D39F0  80 1D 08 2C */	lwz r0, 0x82c(r29)
/* 805D39F4  C8 5F 00 98 */	lfd f2, 0x98(r31)
/* 805D39F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D39FC  90 01 00 64 */	stw r0, 0x64(r1)
/* 805D3A00  3C 60 43 30 */	lis r3, 0x4330
/* 805D3A04  90 61 00 60 */	stw r3, 0x60(r1)
/* 805D3A08  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 805D3A0C  EC 20 10 28 */	fsubs f1, f0, f2
/* 805D3A10  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 805D3A14  EC 01 00 2A */	fadds f0, f1, f0
/* 805D3A18  FC 00 00 1E */	fctiwz f0, f0
/* 805D3A1C  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 805D3A20  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 805D3A24  90 1D 08 2C */	stw r0, 0x82c(r29)
/* 805D3A28  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805D3A2C  80 1D 08 2C */	lwz r0, 0x82c(r29)
/* 805D3A30  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D3A34  90 01 00 74 */	stw r0, 0x74(r1)
/* 805D3A38  90 61 00 70 */	stw r3, 0x70(r1)
/* 805D3A3C  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 805D3A40  EC 00 10 28 */	fsubs f0, f0, f2
/* 805D3A44  EC 01 00 32 */	fmuls f0, f1, f0
/* 805D3A48  FC 00 00 1E */	fctiwz f0, f0
/* 805D3A4C  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 805D3A50  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 805D3A54  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805D3A58  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805D3A5C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805D3A60  7C 23 04 2E */	lfsx f1, r3, r0
/* 805D3A64  38 7D 07 94 */	addi r3, r29, 0x794
/* 805D3A68  C0 1F 02 F0 */	lfs f0, 0x2f0(r31)
/* 805D3A6C  EC 20 00 72 */	fmuls f1, f0, f1
/* 805D3A70  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 805D3A74  C0 7F 01 90 */	lfs f3, 0x190(r31)
/* 805D3A78  4B C9 BF C4 */	b cLib_addCalc2__FPffff
/* 805D3A7C  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 805D3A80  80 1D 08 2C */	lwz r0, 0x82c(r29)
/* 805D3A84  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 805D3A88  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D3A8C  90 01 00 84 */	stw r0, 0x84(r1)
/* 805D3A90  3C 00 43 30 */	lis r0, 0x4330
/* 805D3A94  90 01 00 80 */	stw r0, 0x80(r1)
/* 805D3A98  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 805D3A9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D3AA0  EC 02 00 32 */	fmuls f0, f2, f0
/* 805D3AA4  FC 00 00 1E */	fctiwz f0, f0
/* 805D3AA8  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 805D3AAC  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 805D3AB0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805D3AB4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805D3AB8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805D3ABC  7C 23 04 2E */	lfsx f1, r3, r0
/* 805D3AC0  38 7D 07 90 */	addi r3, r29, 0x790
/* 805D3AC4  C0 1F 02 F0 */	lfs f0, 0x2f0(r31)
/* 805D3AC8  EC 20 00 72 */	fmuls f1, f0, f1
/* 805D3ACC  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 805D3AD0  C0 7D 08 04 */	lfs f3, 0x804(r29)
/* 805D3AD4  4B C9 BF 68 */	b cLib_addCalc2__FPffff
/* 805D3AD8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805D3ADC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805D3AE0  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 805D3AE4  80 1D 08 2C */	lwz r0, 0x82c(r29)
/* 805D3AE8  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 805D3AEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D3AF0  90 01 00 94 */	stw r0, 0x94(r1)
/* 805D3AF4  3C 00 43 30 */	lis r0, 0x4330
/* 805D3AF8  90 01 00 90 */	stw r0, 0x90(r1)
/* 805D3AFC  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 805D3B00  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D3B04  EC 02 00 32 */	fmuls f0, f2, f0
/* 805D3B08  FC 00 00 1E */	fctiwz f0, f0
/* 805D3B0C  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 805D3B10  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 805D3B14  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805D3B18  7C 63 02 14 */	add r3, r3, r0
/* 805D3B1C  C0 23 00 04 */	lfs f1, 4(r3)
/* 805D3B20  38 7D 07 98 */	addi r3, r29, 0x798
/* 805D3B24  C0 1F 02 F0 */	lfs f0, 0x2f0(r31)
/* 805D3B28  EC 20 00 72 */	fmuls f1, f0, f1
/* 805D3B2C  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 805D3B30  C0 7D 08 04 */	lfs f3, 0x804(r29)
/* 805D3B34  4B C9 BF 08 */	b cLib_addCalc2__FPffff
/* 805D3B38  38 7D 08 04 */	addi r3, r29, 0x804
/* 805D3B3C  C0 3F 02 B0 */	lfs f1, 0x2b0(r31)
/* 805D3B40  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 805D3B44  C0 7F 02 8C */	lfs f3, 0x28c(r31)
/* 805D3B48  4B C9 BE F4 */	b cLib_addCalc2__FPffff
lbl_805D3B4C:
/* 805D3B4C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805D3B50  D0 1D 06 C4 */	stfs f0, 0x6c4(r29)
/* 805D3B54  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805D3B58  D0 1D 06 C8 */	stfs f0, 0x6c8(r29)
/* 805D3B5C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805D3B60  D0 1D 06 CC */	stfs f0, 0x6cc(r29)
/* 805D3B64  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704D4@ha */
/* 805D3B68  38 03 04 D4 */	addi r0, r3, 0x04D4 /* 0x000704D4@l */
/* 805D3B6C  90 01 00 08 */	stw r0, 8(r1)
/* 805D3B70  38 7D 05 DC */	addi r3, r29, 0x5dc
/* 805D3B74  38 81 00 08 */	addi r4, r1, 8
/* 805D3B78  38 A0 00 00 */	li r5, 0
/* 805D3B7C  38 C0 FF FF */	li r6, -1
/* 805D3B80  81 9D 05 DC */	lwz r12, 0x5dc(r29)
/* 805D3B84  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805D3B88  7D 89 03 A6 */	mtctr r12
/* 805D3B8C  4E 80 04 21 */	bctrl 
/* 805D3B90  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 805D3B94  41 82 01 60 */	beq lbl_805D3CF4
/* 805D3B98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D3B9C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 805D3BA0  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 805D3BA4  38 61 00 0C */	addi r3, r1, 0xc
/* 805D3BA8  4B AA 39 D4 */	b __ct__11dBgS_GndChkFv
/* 805D3BAC  C3 FF 00 50 */	lfs f31, 0x50(r31)
/* 805D3BB0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805D3BB4  D0 1D 07 34 */	stfs f0, 0x734(r29)
/* 805D3BB8  A8 1D 07 CE */	lha r0, 0x7ce(r29)
/* 805D3BBC  2C 00 28 00 */	cmpwi r0, 0x2800
/* 805D3BC0  40 81 00 0C */	ble lbl_805D3BCC
/* 805D3BC4  38 00 28 00 */	li r0, 0x2800
/* 805D3BC8  B0 1D 07 CE */	sth r0, 0x7ce(r29)
lbl_805D3BCC:
/* 805D3BCC  80 1D 06 80 */	lwz r0, 0x680(r29)
/* 805D3BD0  2C 00 00 03 */	cmpwi r0, 3
/* 805D3BD4  41 82 00 F0 */	beq lbl_805D3CC4
/* 805D3BD8  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805D3BDC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D3BE0  81 8C 01 F0 */	lwz r12, 0x1f0(r12)
/* 805D3BE4  7D 89 03 A6 */	mtctr r12
/* 805D3BE8  4E 80 04 21 */	bctrl 
/* 805D3BEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D3BF0  40 82 00 40 */	bne lbl_805D3C30
/* 805D3BF4  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805D3BF8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D3BFC  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 805D3C00  7D 89 03 A6 */	mtctr r12
/* 805D3C04  4E 80 04 21 */	bctrl 
/* 805D3C08  28 03 00 00 */	cmplwi r3, 0
/* 805D3C0C  41 82 00 BC */	beq lbl_805D3CC8
/* 805D3C10  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805D3C14  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D3C18  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 805D3C1C  7D 89 03 A6 */	mtctr r12
/* 805D3C20  4E 80 04 21 */	bctrl 
/* 805D3C24  80 03 06 78 */	lwz r0, 0x678(r3)
/* 805D3C28  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805D3C2C  40 82 00 9C */	bne lbl_805D3CC8
lbl_805D3C30:
/* 805D3C30  38 7D 08 34 */	addi r3, r29, 0x834
/* 805D3C34  48 00 8C B1 */	bl func_805DC8E4
/* 805D3C38  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 805D3C3C  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805D3C40  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805D3C44  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 805D3C48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D3C4C  40 80 00 64 */	bge lbl_805D3CB0
/* 805D3C50  80 1D 08 34 */	lwz r0, 0x834(r29)
/* 805D3C54  2C 00 00 00 */	cmpwi r0, 0
/* 805D3C58  41 82 00 58 */	beq lbl_805D3CB0
/* 805D3C5C  38 00 48 00 */	li r0, 0x4800
/* 805D3C60  B0 1D 07 CC */	sth r0, 0x7cc(r29)
/* 805D3C64  B0 1D 07 CE */	sth r0, 0x7ce(r29)
/* 805D3C68  38 00 00 00 */	li r0, 0
/* 805D3C6C  98 1D 08 5A */	stb r0, 0x85a(r29)
/* 805D3C70  80 9D 2E 18 */	lwz r4, 0x2e18(r29)
/* 805D3C74  28 04 00 00 */	cmplwi r4, 0
/* 805D3C78  41 82 00 44 */	beq lbl_805D3CBC
/* 805D3C7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D3C80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D3C84  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805D3C88  38 63 02 10 */	addi r3, r3, 0x210
/* 805D3C8C  4B A7 7C 8C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 805D3C90  28 03 00 00 */	cmplwi r3, 0
/* 805D3C94  41 82 00 28 */	beq lbl_805D3CBC
/* 805D3C98  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 805D3C9C  60 00 00 04 */	ori r0, r0, 4
/* 805D3CA0  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 805D3CA4  38 00 00 00 */	li r0, 0
/* 805D3CA8  90 1D 2E 18 */	stw r0, 0x2e18(r29)
/* 805D3CAC  48 00 00 10 */	b lbl_805D3CBC
lbl_805D3CB0:
/* 805D3CB0  38 00 00 00 */	li r0, 0
/* 805D3CB4  90 1D 08 34 */	stw r0, 0x834(r29)
/* 805D3CB8  90 1D 06 90 */	stw r0, 0x690(r29)
lbl_805D3CBC:
/* 805D3CBC  C3 FF 02 EC */	lfs f31, 0x2ec(r31)
/* 805D3CC0  48 00 00 08 */	b lbl_805D3CC8
lbl_805D3CC4:
/* 805D3CC4  C3 FF 02 EC */	lfs f31, 0x2ec(r31)
lbl_805D3CC8:
/* 805D3CC8  38 7D 07 CC */	addi r3, r29, 0x7cc
/* 805D3CCC  A8 9D 07 CE */	lha r4, 0x7ce(r29)
/* 805D3CD0  38 A0 00 14 */	li r5, 0x14
/* 805D3CD4  38 C0 02 00 */	li r6, 0x200
/* 805D3CD8  4B C9 C9 30 */	b cLib_addCalcAngleS2__FPssss
/* 805D3CDC  7F A3 EB 78 */	mr r3, r29
/* 805D3CE0  FC 20 F8 90 */	fmr f1, f31
/* 805D3CE4  4B FF FC 1D */	bl mFlyBMove__8daB_DS_cFf
/* 805D3CE8  38 61 00 0C */	addi r3, r1, 0xc
/* 805D3CEC  38 80 FF FF */	li r4, -1
/* 805D3CF0  4B AA 39 00 */	b __dt__11dBgS_GndChkFv
lbl_805D3CF4:
/* 805D3CF4  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 805D3CF8  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 805D3CFC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805D3D00  4B D8 E5 24 */	b _restgpr_28
/* 805D3D04  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 805D3D08  7C 08 03 A6 */	mtlr r0
/* 805D3D0C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 805D3D10  4E 80 00 20 */	blr 
