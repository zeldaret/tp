lbl_80207654:
/* 80207654  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80207658  7C 08 02 A6 */	mflr r0
/* 8020765C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80207660  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80207664  7C 7F 1B 78 */	mr r31, r3
/* 80207668  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8020766C  48 04 E1 BD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207670  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80207674  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80207678  41 82 00 B4 */	beq lbl_8020772C
/* 8020767C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80207680  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80207684  88 03 5E 4B */	lbz r0, 0x5e4b(r3)
/* 80207688  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8020768C  41 82 00 20 */	beq lbl_802076AC
/* 80207690  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80207694  FC 20 00 90 */	fmr f1, f0
/* 80207698  48 04 E1 39 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020769C  38 00 00 05 */	li r0, 5
/* 802076A0  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 802076A4  B0 03 00 16 */	sth r0, 0x16(r3)
/* 802076A8  48 00 00 2C */	b lbl_802076D4
lbl_802076AC:
/* 802076AC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 802076B0  FC 20 00 90 */	fmr f1, f0
/* 802076B4  48 04 E1 1D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802076B8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 802076BC  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 802076C0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802076C4  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 802076C8  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 802076CC  38 A0 00 05 */	li r5, 5
/* 802076D0  48 01 33 D5 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_802076D4:
/* 802076D4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 802076D8  48 04 E1 51 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802076DC  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 802076E0  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 802076E4  40 82 00 48 */	bne lbl_8020772C
/* 802076E8  88 1F 04 C4 */	lbz r0, 0x4c4(r31)
/* 802076EC  28 00 00 00 */	cmplwi r0, 0
/* 802076F0  40 82 00 3C */	bne lbl_8020772C
/* 802076F4  38 00 00 56 */	li r0, 0x56
/* 802076F8  90 01 00 08 */	stw r0, 8(r1)
/* 802076FC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80207700  38 81 00 08 */	addi r4, r1, 8
/* 80207704  38 A0 00 00 */	li r5, 0
/* 80207708  38 C0 00 00 */	li r6, 0
/* 8020770C  38 E0 00 00 */	li r7, 0
/* 80207710  FC 20 10 90 */	fmr f1, f2
/* 80207714  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 80207718  FC 80 18 90 */	fmr f4, f3
/* 8020771C  39 00 00 00 */	li r8, 0
/* 80207720  48 0A 42 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80207724  38 00 00 01 */	li r0, 1
/* 80207728  98 1F 04 C4 */	stb r0, 0x4c4(r31)
lbl_8020772C:
/* 8020772C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80207730  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80207734  7C 08 03 A6 */	mtlr r0
/* 80207738  38 21 00 20 */	addi r1, r1, 0x20
/* 8020773C  4E 80 00 20 */	blr 
