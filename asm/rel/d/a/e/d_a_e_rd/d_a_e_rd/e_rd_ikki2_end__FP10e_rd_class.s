lbl_8050E430:
/* 8050E430  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050E434  7C 08 02 A6 */	mflr r0
/* 8050E438  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050E43C  39 61 00 20 */	addi r11, r1, 0x20
/* 8050E440  4B E5 3D 9D */	bl _savegpr_29
/* 8050E444  7C 7D 1B 78 */	mr r29, r3
/* 8050E448  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 8050E44C  3B C3 85 84 */	addi r30, r3, lit_4208@l /* 0x80518584@l */
/* 8050E450  80 1D 09 8C */	lwz r0, 0x98c(r29)
/* 8050E454  90 01 00 08 */	stw r0, 8(r1)
/* 8050E458  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8050E45C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8050E460  38 81 00 08 */	addi r4, r1, 8
/* 8050E464  4B B0 B3 95 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8050E468  7C 7F 1B 78 */	mr r31, r3
/* 8050E46C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8050E470  54 00 00 3E */	slwi r0, r0, 0
/* 8050E474  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 8050E478  38 00 00 00 */	li r0, 0
/* 8050E47C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8050E480  38 00 00 0A */	li r0, 0xa
/* 8050E484  B0 1D 09 98 */	sth r0, 0x998(r29)
/* 8050E488  28 1D 00 00 */	cmplwi r29, 0
/* 8050E48C  41 82 00 0C */	beq lbl_8050E498
/* 8050E490  80 1D 00 04 */	lwz r0, 4(r29)
/* 8050E494  48 00 00 08 */	b lbl_8050E49C
lbl_8050E498:
/* 8050E498  38 00 FF FF */	li r0, -1
lbl_8050E49C:
/* 8050E49C  90 1F 14 34 */	stw r0, 0x1434(r31)
/* 8050E4A0  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 8050E4A4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8050E4A8  41 82 00 F4 */	beq lbl_8050E59C
/* 8050E4AC  40 80 00 1C */	bge lbl_8050E4C8
/* 8050E4B0  2C 00 00 01 */	cmpwi r0, 1
/* 8050E4B4  41 82 00 9C */	beq lbl_8050E550
/* 8050E4B8  40 80 01 98 */	bge lbl_8050E650
/* 8050E4BC  2C 00 00 00 */	cmpwi r0, 0
/* 8050E4C0  40 80 00 14 */	bge lbl_8050E4D4
/* 8050E4C4  48 00 01 8C */	b lbl_8050E650
lbl_8050E4C8:
/* 8050E4C8  2C 00 00 0C */	cmpwi r0, 0xc
/* 8050E4CC  40 80 01 84 */	bge lbl_8050E650
/* 8050E4D0  48 00 01 60 */	b lbl_8050E630
lbl_8050E4D4:
/* 8050E4D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050E4D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050E4DC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8050E4E0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8050E4E4  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8050E4E8  7D 89 03 A6 */	mtctr r12
/* 8050E4EC  4E 80 04 21 */	bctrl 
/* 8050E4F0  28 03 00 00 */	cmplwi r3, 0
/* 8050E4F4  41 82 01 5C */	beq lbl_8050E650
/* 8050E4F8  7F A3 EB 78 */	mr r3, r29
/* 8050E4FC  38 80 00 28 */	li r4, 0x28
/* 8050E500  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8050E504  38 A0 00 00 */	li r5, 0
/* 8050E508  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050E50C  4B FF 66 C9 */	bl anm_init__FP10e_rd_classifUcf
/* 8050E510  38 00 00 01 */	li r0, 1
/* 8050E514  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050E518  38 00 00 12 */	li r0, 0x12
/* 8050E51C  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 8050E520  38 00 00 00 */	li r0, 0
/* 8050E524  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 8050E528  38 00 00 5A */	li r0, 0x5a
/* 8050E52C  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 8050E530  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8050E534  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8050E538  80 63 00 00 */	lwz r3, 0(r3)
/* 8050E53C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8050E540  38 80 00 1E */	li r4, 0x1e
/* 8050E544  38 A0 00 00 */	li r5, 0
/* 8050E548  4B DA 0E C1 */	bl bgmStop__8Z2SeqMgrFUll
/* 8050E54C  48 00 01 04 */	b lbl_8050E650
lbl_8050E550:
/* 8050E550  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8050E554  38 80 00 01 */	li r4, 1
/* 8050E558  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050E55C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050E560  40 82 00 18 */	bne lbl_8050E578
/* 8050E564  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8050E568  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050E56C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050E570  41 82 00 08 */	beq lbl_8050E578
/* 8050E574  38 80 00 00 */	li r4, 0
lbl_8050E578:
/* 8050E578  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050E57C  41 82 00 D4 */	beq lbl_8050E650
/* 8050E580  7F A3 EB 78 */	mr r3, r29
/* 8050E584  38 80 00 2A */	li r4, 0x2a
/* 8050E588  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8050E58C  38 A0 00 02 */	li r5, 2
/* 8050E590  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050E594  4B FF 66 41 */	bl anm_init__FP10e_rd_classifUcf
/* 8050E598  48 00 00 B8 */	b lbl_8050E650
lbl_8050E59C:
/* 8050E59C  7F A3 EB 78 */	mr r3, r29
/* 8050E5A0  38 80 00 29 */	li r4, 0x29
/* 8050E5A4  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 8050E5A8  38 A0 00 00 */	li r5, 0
/* 8050E5AC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8050E5B0  4B FF 66 25 */	bl anm_init__FP10e_rd_classifUcf
/* 8050E5B4  38 00 00 0B */	li r0, 0xb
/* 8050E5B8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050E5BC  38 80 00 00 */	li r4, 0
/* 8050E5C0  98 9D 09 BC */	stb r4, 0x9bc(r29)
/* 8050E5C4  28 1F 00 00 */	cmplwi r31, 0
/* 8050E5C8  41 82 00 1C */	beq lbl_8050E5E4
/* 8050E5CC  A0 7F 06 BE */	lhz r3, 0x6be(r31)
/* 8050E5D0  88 1D 09 BE */	lbz r0, 0x9be(r29)
/* 8050E5D4  7C 00 07 74 */	extsb r0, r0
/* 8050E5D8  7C 60 00 78 */	andc r0, r3, r0
/* 8050E5DC  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 8050E5E0  98 9D 09 BE */	stb r4, 0x9be(r29)
lbl_8050E5E4:
/* 8050E5E4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8050E5E8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8050E5EC  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8050E5F0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8050E5F4  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8050E5F8  D0 1D 09 EC */	stfs f0, 0x9ec(r29)
/* 8050E5FC  38 00 40 00 */	li r0, 0x4000
/* 8050E600  B0 1D 0A 0E */	sth r0, 0xa0e(r29)
/* 8050E604  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F7@ha */
/* 8050E608  38 03 00 F7 */	addi r0, r3, 0x00F7 /* 0x000700F7@l */
/* 8050E60C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050E610  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 8050E614  38 81 00 0C */	addi r4, r1, 0xc
/* 8050E618  38 A0 FF FF */	li r5, -1
/* 8050E61C  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 8050E620  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050E624  7D 89 03 A6 */	mtctr r12
/* 8050E628  4E 80 04 21 */	bctrl 
/* 8050E62C  48 00 00 24 */	b lbl_8050E650
lbl_8050E630:
/* 8050E630  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 8050E634  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8050E638  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8050E63C  40 80 00 14 */	bge lbl_8050E650
/* 8050E640  38 7D 09 EC */	addi r3, r29, 0x9ec
/* 8050E644  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 8050E648  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8050E64C  4B D6 13 F1 */	bl cLib_addCalc2__FPffff
lbl_8050E650:
/* 8050E650  39 61 00 20 */	addi r11, r1, 0x20
/* 8050E654  4B E5 3B D5 */	bl _restgpr_29
/* 8050E658  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050E65C  7C 08 03 A6 */	mtlr r0
/* 8050E660  38 21 00 20 */	addi r1, r1, 0x20
/* 8050E664  4E 80 00 20 */	blr 
