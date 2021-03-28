lbl_80C3A4D8:
/* 80C3A4D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C3A4DC  7C 08 02 A6 */	mflr r0
/* 80C3A4E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C3A4E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C3A4E8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C3A4EC  7C 7E 1B 78 */	mr r30, r3
/* 80C3A4F0  3C 80 80 C4 */	lis r4, lit_3775@ha
/* 80C3A4F4  3B E4 C6 74 */	addi r31, r4, lit_3775@l
/* 80C3A4F8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C3A4FC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C3A500  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80C3A504  4B 3E 02 DC */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C3A508  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80C3A50C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3A510  40 80 01 00 */	bge lbl_80C3A610
/* 80C3A514  A8 1E 07 D4 */	lha r0, 0x7d4(r30)
/* 80C3A518  2C 00 00 00 */	cmpwi r0, 0
/* 80C3A51C  40 82 00 80 */	bne lbl_80C3A59C
/* 80C3A520  38 61 00 08 */	addi r3, r1, 8
/* 80C3A524  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80C3A528  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C3A52C  4B 62 C6 08 */	b __mi__4cXyzCFRC3Vec
/* 80C3A530  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C3A534  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C3A538  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C3A53C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C3A540  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C3A544  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C3A548  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80C3A54C  4B 62 D4 40 */	b cM_rndFX__Ff
/* 80C3A550  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C3A554  EC 00 08 2A */	fadds f0, f0, f1
/* 80C3A558  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C3A55C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80C3A560  4B 62 D4 2C */	b cM_rndFX__Ff
/* 80C3A564  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C3A568  EC 40 08 2A */	fadds f2, f0, f1
/* 80C3A56C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80C3A570  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80C3A574  4B 62 D1 00 */	b cM_atan2s__Fff
/* 80C3A578  B0 7E 07 E0 */	sth r3, 0x7e0(r30)
/* 80C3A57C  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80C3A580  4B 62 D3 D4 */	b cM_rndF__Ff
/* 80C3A584  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80C3A588  EC 00 08 2A */	fadds f0, f0, f1
/* 80C3A58C  FC 00 00 1E */	fctiwz f0, f0
/* 80C3A590  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C3A594  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C3A598  B0 1E 07 D4 */	sth r0, 0x7d4(r30)
lbl_80C3A59C:
/* 80C3A59C  80 7E 0A 64 */	lwz r3, 0xa64(r30)
/* 80C3A5A0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80C3A5A4  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80C3A5A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3A5AC  40 81 00 50 */	ble lbl_80C3A5FC
/* 80C3A5B0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80C3A5B4  D0 1E 07 D8 */	stfs f0, 0x7d8(r30)
/* 80C3A5B8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C3A5BC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80C3A5C0  A8 9E 07 E0 */	lha r4, 0x7e0(r30)
/* 80C3A5C4  38 A0 00 15 */	li r5, 0x15
/* 80C3A5C8  38 C0 00 50 */	li r6, 0x50
/* 80C3A5CC  4B 63 60 3C */	b cLib_addCalcAngleS2__FPssss
/* 80C3A5D0  38 7E 07 F2 */	addi r3, r30, 0x7f2
/* 80C3A5D4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C3A5D8  A8 1E 07 E0 */	lha r0, 0x7e0(r30)
/* 80C3A5DC  7C 04 00 50 */	subf r0, r4, r0
/* 80C3A5E0  7C 04 07 34 */	extsh r4, r0
/* 80C3A5E4  38 A0 00 08 */	li r5, 8
/* 80C3A5E8  38 C0 01 00 */	li r6, 0x100
/* 80C3A5EC  4B 63 60 1C */	b cLib_addCalcAngleS2__FPssss
/* 80C3A5F0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C3A5F4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C3A5F8  48 00 00 10 */	b lbl_80C3A608
lbl_80C3A5FC:
/* 80C3A5FC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C3A600  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C3A604  D0 1E 07 D8 */	stfs f0, 0x7d8(r30)
lbl_80C3A608:
/* 80C3A608  7F C3 F3 78 */	mr r3, r30
/* 80C3A60C  4B FF F9 01 */	bl WallWalk__10daObjKAT_cFv
lbl_80C3A610:
/* 80C3A610  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C3A614  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C3A618  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C3A61C  7C 08 03 A6 */	mtlr r0
/* 80C3A620  38 21 00 30 */	addi r1, r1, 0x30
/* 80C3A624  4E 80 00 20 */	blr 
