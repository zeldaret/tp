lbl_8073EA50:
/* 8073EA50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073EA54  7C 08 02 A6 */	mflr r0
/* 8073EA58  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073EA5C  39 61 00 30 */	addi r11, r1, 0x30
/* 8073EA60  4B C2 37 7C */	b _savegpr_29
/* 8073EA64  7C 7F 1B 78 */	mr r31, r3
/* 8073EA68  3C 60 80 74 */	lis r3, lit_3767@ha
/* 8073EA6C  3B C3 1B F4 */	addi r30, r3, lit_3767@l
/* 8073EA70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8073EA74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8073EA78  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8073EA7C  A8 7F 06 66 */	lha r3, 0x666(r31)
/* 8073EA80  38 03 10 00 */	addi r0, r3, 0x1000
/* 8073EA84  B0 1F 06 66 */	sth r0, 0x666(r31)
/* 8073EA88  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070462@ha */
/* 8073EA8C  38 03 04 62 */	addi r0, r3, 0x0462 /* 0x00070462@l */
/* 8073EA90  90 01 00 08 */	stw r0, 8(r1)
/* 8073EA94  A8 1F 06 12 */	lha r0, 0x612(r31)
/* 8073EA98  C8 3E 00 80 */	lfd f1, 0x80(r30)
/* 8073EA9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073EAA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073EAA4  3C 00 43 30 */	lis r0, 0x4330
/* 8073EAA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8073EAAC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8073EAB0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8073EAB4  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 8073EAB8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8073EABC  4B C2 35 F0 */	b __cvt_fp2unsigned
/* 8073EAC0  7C 65 1B 78 */	mr r5, r3
/* 8073EAC4  38 7F 06 74 */	addi r3, r31, 0x674
/* 8073EAC8  38 81 00 08 */	addi r4, r1, 8
/* 8073EACC  38 C0 FF FF */	li r6, -1
/* 8073EAD0  81 9F 06 74 */	lwz r12, 0x674(r31)
/* 8073EAD4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8073EAD8  7D 89 03 A6 */	mtctr r12
/* 8073EADC  4E 80 04 21 */	bctrl 
/* 8073EAE0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8073EAE4  D0 1F 06 34 */	stfs f0, 0x634(r31)
/* 8073EAE8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8073EAEC  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 8073EAF0  EC 01 00 2A */	fadds f0, f1, f0
/* 8073EAF4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8073EAF8  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 8073EAFC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8073EB00  41 82 00 28 */	beq lbl_8073EB28
/* 8073EB04  80 1F 06 28 */	lwz r0, 0x628(r31)
/* 8073EB08  2C 00 00 0C */	cmpwi r0, 0xc
/* 8073EB0C  40 82 00 1C */	bne lbl_8073EB28
/* 8073EB10  88 7F 05 B0 */	lbz r3, 0x5b0(r31)
/* 8073EB14  38 03 FF FF */	addi r0, r3, -1
/* 8073EB18  98 1F 05 B0 */	stb r0, 0x5b0(r31)
/* 8073EB1C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 8073EB20  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 8073EB24  D0 1F 06 20 */	stfs f0, 0x620(r31)
lbl_8073EB28:
/* 8073EB28  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 8073EB2C  80 7F 07 1C */	lwz r3, 0x71c(r31)
/* 8073EB30  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8073EB34  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8073EB38  C0 1F 06 40 */	lfs f0, 0x640(r31)
/* 8073EB3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073EB40  40 81 00 0C */	ble lbl_8073EB4C
/* 8073EB44  38 00 00 00 */	li r0, 0
/* 8073EB48  98 1F 05 B0 */	stb r0, 0x5b0(r31)
lbl_8073EB4C:
/* 8073EB4C  39 61 00 30 */	addi r11, r1, 0x30
/* 8073EB50  4B C2 36 D8 */	b _restgpr_29
/* 8073EB54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073EB58  7C 08 03 A6 */	mtlr r0
/* 8073EB5C  38 21 00 30 */	addi r1, r1, 0x30
/* 8073EB60  4E 80 00 20 */	blr 
