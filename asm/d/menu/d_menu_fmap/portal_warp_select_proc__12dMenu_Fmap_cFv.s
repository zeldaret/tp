lbl_801C90A8:
/* 801C90A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C90AC  7C 08 02 A6 */	mflr r0
/* 801C90B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C90B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C90B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C90BC  7C 7F 1B 78 */	mr r31, r3
/* 801C90C0  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801C90C4  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C90C8  48 07 47 11 */	bl move__17dMsgScrnExplain_cFv
/* 801C90CC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801C90D0  80 83 00 6C */	lwz r4, 0x6c(r3)
/* 801C90D4  88 04 00 60 */	lbz r0, 0x60(r4)
/* 801C90D8  28 00 00 00 */	cmplwi r0, 0
/* 801C90DC  40 82 00 D0 */	bne lbl_801C91AC
/* 801C90E0  48 00 E5 E1 */	bl deleteExplain__17dMenu_Fmap2DTop_cFv
/* 801C90E4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C90E8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C90EC  88 03 00 C0 */	lbz r0, 0xc0(r3)
/* 801C90F0  28 00 00 03 */	cmplwi r0, 3
/* 801C90F4  40 82 00 90 */	bne lbl_801C9184
/* 801C90F8  80 9F 00 90 */	lwz r4, 0x90(r31)
/* 801C90FC  3B C4 00 0C */	addi r30, r4, 0xc
/* 801C9100  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 801C9104  88 04 12 27 */	lbz r0, 0x1227(r4)
/* 801C9108  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801C910C  7C 84 02 14 */	add r4, r4, r0
/* 801C9110  C0 24 10 24 */	lfs f1, 0x1024(r4)
/* 801C9114  88 1F 03 08 */	lbz r0, 0x308(r31)
/* 801C9118  1C A0 00 1C */	mulli r5, r0, 0x1c
/* 801C911C  7D 3E 2A 14 */	add r9, r30, r5
/* 801C9120  C0 09 00 18 */	lfs f0, 0x18(r9)
/* 801C9124  EC 40 08 2A */	fadds f2, f0, f1
/* 801C9128  C0 29 00 14 */	lfs f1, 0x14(r9)
/* 801C912C  C0 64 10 04 */	lfs f3, 0x1004(r4)
/* 801C9130  C0 09 00 10 */	lfs f0, 0x10(r9)
/* 801C9134  EC 00 18 2A */	fadds f0, f0, f3
/* 801C9138  D0 01 00 08 */	stfs f0, 8(r1)
/* 801C913C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801C9140  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801C9144  38 85 00 02 */	addi r4, r5, 2
/* 801C9148  7C 9E 22 14 */	add r4, r30, r4
/* 801C914C  38 A1 00 08 */	addi r5, r1, 8
/* 801C9150  38 C0 00 00 */	li r6, 0
/* 801C9154  88 E9 00 0A */	lbz r7, 0xa(r9)
/* 801C9158  39 00 00 00 */	li r8, 0
/* 801C915C  89 29 00 0B */	lbz r9, 0xb(r9)
/* 801C9160  48 05 3A AD */	bl setWarpInfo__13dMeter2Info_cFPCcRC4cXyzsUcUcUc
/* 801C9164  88 1F 03 08 */	lbz r0, 0x308(r31)
/* 801C9168  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 801C916C  7C 7E 00 AE */	lbzx r3, r30, r0
/* 801C9170  4B E6 69 3D */	bl dComIfGp_SelectWarpPt_set__FUc
/* 801C9174  7F E3 FB 78 */	mr r3, r31
/* 801C9178  38 80 00 08 */	li r4, 8
/* 801C917C  48 00 25 55 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C9180  48 00 00 2C */	b lbl_801C91AC
lbl_801C9184:
/* 801C9184  88 1F 03 01 */	lbz r0, 0x301(r31)
/* 801C9188  28 00 00 10 */	cmplwi r0, 0x10
/* 801C918C  40 82 00 14 */	bne lbl_801C91A0
/* 801C9190  7F E3 FB 78 */	mr r3, r31
/* 801C9194  38 80 00 10 */	li r4, 0x10
/* 801C9198  48 00 25 39 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C919C  48 00 00 10 */	b lbl_801C91AC
lbl_801C91A0:
/* 801C91A0  7F E3 FB 78 */	mr r3, r31
/* 801C91A4  38 80 00 08 */	li r4, 8
/* 801C91A8  48 00 25 29 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801C91AC:
/* 801C91AC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C91B0  88 83 12 29 */	lbz r4, 0x1229(r3)
/* 801C91B4  7F E3 FB 78 */	mr r3, r31
/* 801C91B8  38 A0 00 00 */	li r5, 0
/* 801C91BC  48 00 25 25 */	bl setFlash__12dMenu_Fmap_cFUcb
/* 801C91C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C91C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C91C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C91CC  7C 08 03 A6 */	mtlr r0
/* 801C91D0  38 21 00 20 */	addi r1, r1, 0x20
/* 801C91D4  4E 80 00 20 */	blr 
