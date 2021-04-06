lbl_80632598:
/* 80632598  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8063259C  7C 08 02 A6 */	mflr r0
/* 806325A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806325A4  39 61 00 30 */	addi r11, r1, 0x30
/* 806325A8  4B D2 FC 35 */	bl _savegpr_29
/* 806325AC  7C 7D 1B 78 */	mr r29, r3
/* 806325B0  3C 60 80 64 */	lis r3, lit_3788@ha /* 0x806397F4@ha */
/* 806325B4  3B C3 97 F4 */	addi r30, r3, lit_3788@l /* 0x806397F4@l */
/* 806325B8  4B C3 52 B5 */	bl cM_rnd__Fv
/* 806325BC  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 806325C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806325C4  40 80 00 10 */	bge lbl_806325D4
/* 806325C8  38 00 02 00 */	li r0, 0x200
/* 806325CC  B0 1D 0F 82 */	sth r0, 0xf82(r29)
/* 806325D0  48 00 00 0C */	b lbl_806325DC
lbl_806325D4:
/* 806325D4  38 00 FE 00 */	li r0, -512
/* 806325D8  B0 1D 0F 82 */	sth r0, 0xf82(r29)
lbl_806325DC:
/* 806325DC  38 00 00 01 */	li r0, 1
/* 806325E0  98 1D 0F AF */	stb r0, 0xfaf(r29)
/* 806325E4  7F A3 EB 78 */	mr r3, r29
/* 806325E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806325EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806325F0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806325F4  4B 9E 81 1D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806325F8  7C 7F 1B 78 */	mr r31, r3
/* 806325FC  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 80632600  4B C3 53 8D */	bl cM_rndFX__Ff
/* 80632604  7F E0 07 34 */	extsh r0, r31
/* 80632608  C8 5E 00 50 */	lfd f2, 0x50(r30)
/* 8063260C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80632610  90 01 00 0C */	stw r0, 0xc(r1)
/* 80632614  3C 00 43 30 */	lis r0, 0x4330
/* 80632618  90 01 00 08 */	stw r0, 8(r1)
/* 8063261C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80632620  EC 00 10 28 */	fsubs f0, f0, f2
/* 80632624  EC 20 08 2A */	fadds f1, f0, f1
/* 80632628  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 8063262C  EC 00 08 2A */	fadds f0, f0, f1
/* 80632630  FC 00 00 1E */	fctiwz f0, f0
/* 80632634  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80632638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063263C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80632640  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 80632644  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80632648  39 61 00 30 */	addi r11, r1, 0x30
/* 8063264C  4B D2 FB DD */	bl _restgpr_29
/* 80632650  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80632654  7C 08 03 A6 */	mtlr r0
/* 80632658  38 21 00 30 */	addi r1, r1, 0x30
/* 8063265C  4E 80 00 20 */	blr 
