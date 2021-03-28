lbl_802080C0:
/* 802080C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802080C4  7C 08 02 A6 */	mflr r0
/* 802080C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802080CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802080D0  7C 7F 1B 78 */	mr r31, r3
/* 802080D4  80 63 00 44 */	lwz r3, 0x44(r3)
/* 802080D8  28 03 00 00 */	cmplwi r3, 0
/* 802080DC  41 82 00 C4 */	beq lbl_802081A0
/* 802080E0  48 04 D7 49 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802080E4  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 802080E8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802080EC  41 82 00 B4 */	beq lbl_802081A0
/* 802080F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802080F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802080F8  88 03 5E 47 */	lbz r0, 0x5e47(r3)
/* 802080FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80208100  41 82 00 20 */	beq lbl_80208120
/* 80208104  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80208108  FC 20 00 90 */	fmr f1, f0
/* 8020810C  48 04 D6 C5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208110  38 00 00 05 */	li r0, 5
/* 80208114  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80208118  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8020811C  48 00 00 2C */	b lbl_80208148
lbl_80208120:
/* 80208120  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80208124  FC 20 00 90 */	fmr f1, f0
/* 80208128  48 04 D6 A9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020812C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80208130  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80208134  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80208138  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 8020813C  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 80208140  38 A0 00 05 */	li r5, 5
/* 80208144  48 01 29 61 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80208148:
/* 80208148  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 8020814C  48 04 D6 DD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208150  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 80208154  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80208158  40 82 00 48 */	bne lbl_802081A0
/* 8020815C  88 1F 04 CA */	lbz r0, 0x4ca(r31)
/* 80208160  28 00 00 00 */	cmplwi r0, 0
/* 80208164  40 82 00 3C */	bne lbl_802081A0
/* 80208168  38 00 00 56 */	li r0, 0x56
/* 8020816C  90 01 00 08 */	stw r0, 8(r1)
/* 80208170  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80208174  38 81 00 08 */	addi r4, r1, 8
/* 80208178  38 A0 00 00 */	li r5, 0
/* 8020817C  38 C0 00 00 */	li r6, 0
/* 80208180  38 E0 00 00 */	li r7, 0
/* 80208184  FC 20 10 90 */	fmr f1, f2
/* 80208188  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 8020818C  FC 80 18 90 */	fmr f4, f3
/* 80208190  39 00 00 00 */	li r8, 0
/* 80208194  48 0A 37 F1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80208198  38 00 00 01 */	li r0, 1
/* 8020819C  98 1F 04 CA */	stb r0, 0x4ca(r31)
lbl_802081A0:
/* 802081A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802081A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802081A8  7C 08 03 A6 */	mtlr r0
/* 802081AC  38 21 00 20 */	addi r1, r1, 0x20
/* 802081B0  4E 80 00 20 */	blr 
