lbl_802A0574:
/* 802A0574  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A0578  7C 08 02 A6 */	mflr r0
/* 802A057C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0580  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0584  48 0C 1C 59 */	bl _savegpr_29
/* 802A0588  7C 7F 1B 78 */	mr r31, r3
/* 802A058C  C0 23 06 D4 */	lfs f1, 0x6d4(r3)
/* 802A0590  80 63 06 F0 */	lwz r3, 0x6f0(r3)
/* 802A0594  28 03 00 01 */	cmplwi r3, 1
/* 802A0598  40 81 00 18 */	ble lbl_802A05B0
/* 802A059C  38 03 FF FF */	addi r0, r3, -1
/* 802A05A0  90 1F 06 F0 */	stw r0, 0x6f0(r31)
/* 802A05A4  C0 1F 06 E8 */	lfs f0, 0x6e8(r31)
/* 802A05A8  EC 21 00 2A */	fadds f1, f1, f0
/* 802A05AC  48 00 00 14 */	b lbl_802A05C0
lbl_802A05B0:
/* 802A05B0  40 82 00 10 */	bne lbl_802A05C0
/* 802A05B4  38 00 00 00 */	li r0, 0
/* 802A05B8  90 1F 06 F0 */	stw r0, 0x6f0(r31)
/* 802A05BC  C0 3F 06 EC */	lfs f1, 0x6ec(r31)
lbl_802A05C0:
/* 802A05C0  D0 3F 06 D4 */	stfs f1, 0x6d4(r31)
/* 802A05C4  C0 3F 06 DC */	lfs f1, 0x6dc(r31)
/* 802A05C8  80 7F 06 FC */	lwz r3, 0x6fc(r31)
/* 802A05CC  28 03 00 01 */	cmplwi r3, 1
/* 802A05D0  40 81 00 18 */	ble lbl_802A05E8
/* 802A05D4  38 03 FF FF */	addi r0, r3, -1
/* 802A05D8  90 1F 06 FC */	stw r0, 0x6fc(r31)
/* 802A05DC  C0 1F 06 F4 */	lfs f0, 0x6f4(r31)
/* 802A05E0  EC 21 00 2A */	fadds f1, f1, f0
/* 802A05E4  48 00 00 14 */	b lbl_802A05F8
lbl_802A05E8:
/* 802A05E8  40 82 00 10 */	bne lbl_802A05F8
/* 802A05EC  38 00 00 00 */	li r0, 0
/* 802A05F0  90 1F 06 FC */	stw r0, 0x6fc(r31)
/* 802A05F4  C0 3F 06 F8 */	lfs f1, 0x6f8(r31)
lbl_802A05F8:
/* 802A05F8  D0 3F 06 DC */	stfs f1, 0x6dc(r31)
/* 802A05FC  C0 3F 06 D8 */	lfs f1, 0x6d8(r31)
/* 802A0600  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 802A0604  28 03 00 01 */	cmplwi r3, 1
/* 802A0608  40 81 00 18 */	ble lbl_802A0620
/* 802A060C  38 03 FF FF */	addi r0, r3, -1
/* 802A0610  90 1F 07 08 */	stw r0, 0x708(r31)
/* 802A0614  C0 1F 07 00 */	lfs f0, 0x700(r31)
/* 802A0618  EC 21 00 2A */	fadds f1, f1, f0
/* 802A061C  48 00 00 14 */	b lbl_802A0630
lbl_802A0620:
/* 802A0620  40 82 00 10 */	bne lbl_802A0630
/* 802A0624  38 00 00 00 */	li r0, 0
/* 802A0628  90 1F 07 08 */	stw r0, 0x708(r31)
/* 802A062C  C0 3F 07 04 */	lfs f1, 0x704(r31)
lbl_802A0630:
/* 802A0630  D0 3F 06 D8 */	stfs f1, 0x6d8(r31)
/* 802A0634  C0 3F 06 E4 */	lfs f1, 0x6e4(r31)
/* 802A0638  80 7F 07 20 */	lwz r3, 0x720(r31)
/* 802A063C  28 03 00 01 */	cmplwi r3, 1
/* 802A0640  40 81 00 18 */	ble lbl_802A0658
/* 802A0644  38 03 FF FF */	addi r0, r3, -1
/* 802A0648  90 1F 07 20 */	stw r0, 0x720(r31)
/* 802A064C  C0 1F 07 18 */	lfs f0, 0x718(r31)
/* 802A0650  EC 21 00 2A */	fadds f1, f1, f0
/* 802A0654  48 00 00 14 */	b lbl_802A0668
lbl_802A0658:
/* 802A0658  40 82 00 10 */	bne lbl_802A0668
/* 802A065C  38 00 00 00 */	li r0, 0
/* 802A0660  90 1F 07 20 */	stw r0, 0x720(r31)
/* 802A0664  C0 3F 07 1C */	lfs f1, 0x71c(r31)
lbl_802A0668:
/* 802A0668  D0 3F 06 E4 */	stfs f1, 0x6e4(r31)
/* 802A066C  C0 3F 06 E0 */	lfs f1, 0x6e0(r31)
/* 802A0670  80 7F 07 14 */	lwz r3, 0x714(r31)
/* 802A0674  28 03 00 01 */	cmplwi r3, 1
/* 802A0678  40 81 00 18 */	ble lbl_802A0690
/* 802A067C  38 03 FF FF */	addi r0, r3, -1
/* 802A0680  90 1F 07 14 */	stw r0, 0x714(r31)
/* 802A0684  C0 1F 07 0C */	lfs f0, 0x70c(r31)
/* 802A0688  EC 21 00 2A */	fadds f1, f1, f0
/* 802A068C  48 00 00 14 */	b lbl_802A06A0
lbl_802A0690:
/* 802A0690  40 82 00 10 */	bne lbl_802A06A0
/* 802A0694  38 00 00 00 */	li r0, 0
/* 802A0698  90 1F 07 14 */	stw r0, 0x714(r31)
/* 802A069C  C0 3F 07 10 */	lfs f1, 0x710(r31)
lbl_802A06A0:
/* 802A06A0  D0 3F 06 E0 */	stfs f1, 0x6e0(r31)
/* 802A06A4  3B A0 00 00 */	li r29, 0
/* 802A06A8  3B C0 00 00 */	li r30, 0
lbl_802A06AC:
/* 802A06AC  38 7E 00 14 */	addi r3, r30, 0x14
/* 802A06B0  7C 7F 1A 14 */	add r3, r31, r3
/* 802A06B4  4B FF F3 11 */	bl JAISeMgr_calc___16JAISeCategoryMgrFv
/* 802A06B8  3B BD 00 01 */	addi r29, r29, 1
/* 802A06BC  2C 1D 00 10 */	cmpwi r29, 0x10
/* 802A06C0  3B DE 00 6C */	addi r30, r30, 0x6c
/* 802A06C4  41 80 FF E8 */	blt lbl_802A06AC
/* 802A06C8  3B A0 00 00 */	li r29, 0
/* 802A06CC  3B C0 00 00 */	li r30, 0
lbl_802A06D0:
/* 802A06D0  38 7E 00 14 */	addi r3, r30, 0x14
/* 802A06D4  7C 7F 1A 14 */	add r3, r31, r3
/* 802A06D8  4B FF F4 59 */	bl JAISeMgr_freeDeadSe___16JAISeCategoryMgrFv
/* 802A06DC  3B BD 00 01 */	addi r29, r29, 1
/* 802A06E0  2C 1D 00 10 */	cmpwi r29, 0x10
/* 802A06E4  3B DE 00 6C */	addi r30, r30, 0x6c
/* 802A06E8  41 80 FF E8 */	blt lbl_802A06D0
/* 802A06EC  39 61 00 20 */	addi r11, r1, 0x20
/* 802A06F0  48 0C 1B 39 */	bl _restgpr_29
/* 802A06F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A06F8  7C 08 03 A6 */	mtlr r0
/* 802A06FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0700  4E 80 00 20 */	blr 
