lbl_805E608C:
/* 805E608C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E6090  7C 08 02 A6 */	mflr r0
/* 805E6094  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E6098  39 61 00 20 */	addi r11, r1, 0x20
/* 805E609C  4B D7 C1 40 */	b _savegpr_29
/* 805E60A0  7C 7D 1B 78 */	mr r29, r3
/* 805E60A4  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805E60A8  3B E3 D0 60 */	addi r31, r3, lit_3911@l
/* 805E60AC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805E60B0  4B C8 18 A4 */	b cM_rndF__Ff
/* 805E60B4  FC 00 08 1E */	fctiwz f0, f1
/* 805E60B8  D8 01 00 08 */	stfd f0, 8(r1)
/* 805E60BC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805E60C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E60C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E60C8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805E60CC  8B C3 05 68 */	lbz r30, 0x568(r3)
/* 805E60D0  3C 60 80 5F */	lis r3, data_805ED728@ha
/* 805E60D4  C0 23 D7 28 */	lfs f1, data_805ED728@l(r3)
/* 805E60D8  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 805E60DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E60E0  40 80 00 7C */	bge lbl_805E615C
/* 805E60E4  88 1D 05 C7 */	lbz r0, 0x5c7(r29)
/* 805E60E8  28 00 00 04 */	cmplwi r0, 4
/* 805E60EC  41 82 00 70 */	beq lbl_805E615C
/* 805E60F0  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 805E60F4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 805E60F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E60FC  3C 00 43 30 */	lis r0, 0x4330
/* 805E6100  90 01 00 08 */	stw r0, 8(r1)
/* 805E6104  C8 01 00 08 */	lfd f0, 8(r1)
/* 805E6108  EC 20 08 28 */	fsubs f1, f0, f1
/* 805E610C  C0 1F 02 94 */	lfs f0, 0x294(r31)
/* 805E6110  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E6114  40 80 00 48 */	bge lbl_805E615C
/* 805E6118  28 1E 00 00 */	cmplwi r30, 0
/* 805E611C  41 82 00 40 */	beq lbl_805E615C
/* 805E6120  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 805E6124  4B A9 E3 3C */	b ChkTgHit__12dCcD_GObjInfFv
/* 805E6128  28 03 00 00 */	cmplwi r3, 0
/* 805E612C  40 82 00 30 */	bne lbl_805E615C
/* 805E6130  38 7D 0C F8 */	addi r3, r29, 0xcf8
/* 805E6134  4B A9 E3 2C */	b ChkTgHit__12dCcD_GObjInfFv
/* 805E6138  28 03 00 00 */	cmplwi r3, 0
/* 805E613C  40 82 00 20 */	bne lbl_805E615C
/* 805E6140  28 1E 00 29 */	cmplwi r30, 0x29
/* 805E6144  41 82 00 18 */	beq lbl_805E615C
/* 805E6148  7F A3 EB 78 */	mr r3, r29
/* 805E614C  38 80 00 01 */	li r4, 1
/* 805E6150  38 A0 00 01 */	li r5, 1
/* 805E6154  38 C0 00 00 */	li r6, 0
/* 805E6158  4B FF 99 0D */	bl SetAction__8daB_GG_cFUcUcUc
lbl_805E615C:
/* 805E615C  39 61 00 20 */	addi r11, r1, 0x20
/* 805E6160  4B D7 C0 C8 */	b _restgpr_29
/* 805E6164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E6168  7C 08 03 A6 */	mtlr r0
/* 805E616C  38 21 00 20 */	addi r1, r1, 0x20
/* 805E6170  4E 80 00 20 */	blr 
