lbl_800AF61C:
/* 800AF61C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AF620  7C 08 02 A6 */	mflr r0
/* 800AF624  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AF628  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800AF62C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800AF630  7C 7F 1B 78 */	mr r31, r3
/* 800AF634  B0 81 00 08 */	sth r4, 8(r1)
/* 800AF638  7C BE 2B 78 */	mr r30, r5
/* 800AF63C  B0 C1 00 0A */	sth r6, 0xa(r1)
/* 800AF640  38 81 00 0A */	addi r4, r1, 0xa
/* 800AF644  38 A1 00 08 */	addi r5, r1, 8
/* 800AF648  4B FF 46 9D */	bl setIdxMask__9daAlink_cFPUsPUs
/* 800AF64C  A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 800AF650  28 05 FF FF */	cmplwi r5, 0xffff
/* 800AF654  41 82 00 14 */	beq lbl_800AF668
/* 800AF658  38 7F 21 18 */	addi r3, r31, 0x2118
/* 800AF65C  A0 81 00 08 */	lhz r4, 8(r1)
/* 800AF660  48 0A FA B9 */	bl loadDataDemoRID__14daPy_anmHeap_cFUsUs
/* 800AF664  48 00 00 28 */	b lbl_800AF68C
lbl_800AF668:
/* 800AF668  2C 1E 00 00 */	cmpwi r30, 0
/* 800AF66C  41 82 00 14 */	beq lbl_800AF680
/* 800AF670  38 7F 21 18 */	addi r3, r31, 0x2118
/* 800AF674  A0 81 00 08 */	lhz r4, 8(r1)
/* 800AF678  48 0A FA 59 */	bl loadDataPriIdx__14daPy_anmHeap_cFUs
/* 800AF67C  48 00 00 10 */	b lbl_800AF68C
lbl_800AF680:
/* 800AF680  38 7F 21 18 */	addi r3, r31, 0x2118
/* 800AF684  A0 81 00 08 */	lhz r4, 8(r1)
/* 800AF688  48 0A F9 E1 */	bl loadDataIdx__14daPy_anmHeap_cFUs
lbl_800AF68C:
/* 800AF68C  28 03 00 00 */	cmplwi r3, 0
/* 800AF690  41 82 00 E8 */	beq lbl_800AF778
/* 800AF694  90 7F 21 54 */	stw r3, 0x2154(r31)
/* 800AF698  80 7F 21 54 */	lwz r3, 0x2154(r31)
/* 800AF69C  80 9F 06 C0 */	lwz r4, 0x6c0(r31)
/* 800AF6A0  48 27 B9 FD */	bl searchUpdateMaterialID__16J3DAnmTexPatternFP12J3DModelData
/* 800AF6A4  80 7F 06 C0 */	lwz r3, 0x6c0(r31)
/* 800AF6A8  38 63 00 58 */	addi r3, r3, 0x58
/* 800AF6AC  80 9F 21 54 */	lwz r4, 0x2154(r31)
/* 800AF6B0  48 28 05 19 */	bl entryTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
/* 800AF6B4  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 800AF6B8  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AF6BC  40 82 00 98 */	bne lbl_800AF754
/* 800AF6C0  A0 01 00 08 */	lhz r0, 8(r1)
/* 800AF6C4  28 00 03 E1 */	cmplwi r0, 0x3e1
/* 800AF6C8  41 82 00 20 */	beq lbl_800AF6E8
/* 800AF6CC  28 00 04 17 */	cmplwi r0, 0x417
/* 800AF6D0  40 82 00 30 */	bne lbl_800AF700
/* 800AF6D4  7F E3 FB 78 */	mr r3, r31
/* 800AF6D8  38 80 00 71 */	li r4, 0x71
/* 800AF6DC  48 07 91 31 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 800AF6E0  2C 03 00 00 */	cmpwi r3, 0
/* 800AF6E4  41 82 00 1C */	beq lbl_800AF700
lbl_800AF6E8:
/* 800AF6E8  C0 02 94 44 */	lfs f0, lit_14760(r2)
/* 800AF6EC  D0 1F 34 40 */	stfs f0, 0x3440(r31)
/* 800AF6F0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800AF6F4  60 00 20 00 */	ori r0, r0, 0x2000
/* 800AF6F8  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800AF6FC  48 00 00 64 */	b lbl_800AF760
lbl_800AF700:
/* 800AF700  A0 61 00 08 */	lhz r3, 8(r1)
/* 800AF704  38 03 FB E9 */	addi r0, r3, -1047
/* 800AF708  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800AF70C  28 00 00 01 */	cmplwi r0, 1
/* 800AF710  40 81 00 1C */	ble lbl_800AF72C
/* 800AF714  28 03 03 E2 */	cmplwi r3, 0x3e2
/* 800AF718  41 82 00 14 */	beq lbl_800AF72C
/* 800AF71C  28 03 03 DF */	cmplwi r3, 0x3df
/* 800AF720  41 82 00 0C */	beq lbl_800AF72C
/* 800AF724  28 03 03 E0 */	cmplwi r3, 0x3e0
/* 800AF728  40 82 00 1C */	bne lbl_800AF744
lbl_800AF72C:
/* 800AF72C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800AF730  60 00 20 00 */	ori r0, r0, 0x2000
/* 800AF734  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800AF738  C0 02 98 8C */	lfs f0, lit_63482(r2)
/* 800AF73C  D0 1F 34 40 */	stfs f0, 0x3440(r31)
/* 800AF740  48 00 00 20 */	b lbl_800AF760
lbl_800AF744:
/* 800AF744  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800AF748  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800AF74C  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800AF750  48 00 00 10 */	b lbl_800AF760
lbl_800AF754:
/* 800AF754  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800AF758  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800AF75C  90 1F 05 74 */	stw r0, 0x574(r31)
lbl_800AF760:
/* 800AF760  38 00 00 00 */	li r0, 0
/* 800AF764  B0 1F 2F EA */	sth r0, 0x2fea(r31)
/* 800AF768  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AF76C  80 7F 21 54 */	lwz r3, 0x2154(r31)
/* 800AF770  D0 03 00 08 */	stfs f0, 8(r3)
/* 800AF774  48 00 00 44 */	b lbl_800AF7B8
lbl_800AF778:
/* 800AF778  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 800AF77C  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AF780  40 82 00 38 */	bne lbl_800AF7B8
/* 800AF784  A0 01 00 08 */	lhz r0, 8(r1)
/* 800AF788  28 00 04 17 */	cmplwi r0, 0x417
/* 800AF78C  40 82 00 2C */	bne lbl_800AF7B8
/* 800AF790  7F E3 FB 78 */	mr r3, r31
/* 800AF794  38 80 00 71 */	li r4, 0x71
/* 800AF798  48 07 90 75 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 800AF79C  2C 03 00 00 */	cmpwi r3, 0
/* 800AF7A0  41 82 00 10 */	beq lbl_800AF7B0
/* 800AF7A4  C0 02 94 44 */	lfs f0, lit_14760(r2)
/* 800AF7A8  D0 1F 34 40 */	stfs f0, 0x3440(r31)
/* 800AF7AC  48 00 00 0C */	b lbl_800AF7B8
lbl_800AF7B0:
/* 800AF7B0  C0 02 98 8C */	lfs f0, lit_63482(r2)
/* 800AF7B4  D0 1F 34 40 */	stfs f0, 0x3440(r31)
lbl_800AF7B8:
/* 800AF7B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800AF7BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800AF7C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AF7C4  7C 08 03 A6 */	mtlr r0
/* 800AF7C8  38 21 00 20 */	addi r1, r1, 0x20
/* 800AF7CC  4E 80 00 20 */	blr 
