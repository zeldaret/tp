lbl_8072D1DC:
/* 8072D1DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072D1E0  7C 08 02 A6 */	mflr r0
/* 8072D1E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072D1E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072D1EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8072D1F0  7C 7E 1B 78 */	mr r30, r3
/* 8072D1F4  80 03 06 B4 */	lwz r0, 0x6b4(r3)
/* 8072D1F8  2C 00 00 02 */	cmpwi r0, 2
/* 8072D1FC  40 82 00 24 */	bne lbl_8072D220
/* 8072D200  80 7E 06 78 */	lwz r3, 0x678(r30)
/* 8072D204  28 03 00 00 */	cmplwi r3, 0
/* 8072D208  41 82 00 18 */	beq lbl_8072D220
/* 8072D20C  88 03 05 AF */	lbz r0, 0x5af(r3)
/* 8072D210  28 00 00 00 */	cmplwi r0, 0
/* 8072D214  41 82 00 0C */	beq lbl_8072D220
/* 8072D218  38 60 00 00 */	li r3, 0
/* 8072D21C  48 00 00 B4 */	b lbl_8072D2D0
lbl_8072D220:
/* 8072D220  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072D224  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072D228  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8072D22C  88 04 05 68 */	lbz r0, 0x568(r4)
/* 8072D230  28 00 00 00 */	cmplwi r0, 0
/* 8072D234  41 82 00 4C */	beq lbl_8072D280
/* 8072D238  7F C3 F3 78 */	mr r3, r30
/* 8072D23C  4B 8E D5 A5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072D240  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 8072D244  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072D248  40 80 00 38 */	bge lbl_8072D280
/* 8072D24C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8072D250  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8072D254  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8072D258  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8072D25C  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 8072D260  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8072D264  D0 1E 06 84 */	stfs f0, 0x684(r30)
/* 8072D268  7F C3 F3 78 */	mr r3, r30
/* 8072D26C  38 80 00 08 */	li r4, 8
/* 8072D270  38 A0 00 00 */	li r5, 0
/* 8072D274  48 00 0A 49 */	bl setActionMode__8daE_OC_cFii
/* 8072D278  38 60 00 01 */	li r3, 1
/* 8072D27C  48 00 00 54 */	b lbl_8072D2D0
lbl_8072D280:
/* 8072D280  7F C3 F3 78 */	mr r3, r30
/* 8072D284  3C 80 80 73 */	lis r4, lit_4030@ha /* 0x80735BC0@ha */
/* 8072D288  C0 24 5B C0 */	lfs f1, lit_4030@l(r4)  /* 0x80735BC0@l */
/* 8072D28C  4B 8E F9 D1 */	bl fopAcM_otoCheck__FPC10fopAc_ac_cf
/* 8072D290  2C 03 00 00 */	cmpwi r3, 0
/* 8072D294  41 82 00 38 */	beq lbl_8072D2CC
/* 8072D298  4B A7 B1 DD */	bl dKy_Sound_get__Fv
/* 8072D29C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8072D2A0  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8072D2A4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8072D2A8  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 8072D2AC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8072D2B0  D0 1E 06 84 */	stfs f0, 0x684(r30)
/* 8072D2B4  7F C3 F3 78 */	mr r3, r30
/* 8072D2B8  38 80 00 08 */	li r4, 8
/* 8072D2BC  38 A0 00 00 */	li r5, 0
/* 8072D2C0  48 00 09 FD */	bl setActionMode__8daE_OC_cFii
/* 8072D2C4  38 60 00 01 */	li r3, 1
/* 8072D2C8  48 00 00 08 */	b lbl_8072D2D0
lbl_8072D2CC:
/* 8072D2CC  38 60 00 00 */	li r3, 0
lbl_8072D2D0:
/* 8072D2D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072D2D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8072D2D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072D2DC  7C 08 03 A6 */	mtlr r0
/* 8072D2E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8072D2E4  4E 80 00 20 */	blr 
