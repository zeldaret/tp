lbl_800F9384:
/* 800F9384  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800F9388  7C 08 02 A6 */	mflr r0
/* 800F938C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800F9390  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800F9394  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800F9398  7C 7E 1B 78 */	mr r30, r3
/* 800F939C  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800F93A0  4B FF F5 59 */	bl decideCrawlDoStatus__9daAlink_cFv
/* 800F93A4  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 800F93A8  C0 5E 34 78 */	lfs f2, 0x3478(r30)
/* 800F93AC  C0 3E 34 7C */	lfs f1, 0x347c(r30)
/* 800F93B0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 800F93B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F93B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F93BC  EC 03 00 28 */	fsubs f0, f3, f0
/* 800F93C0  D0 1E 33 CC */	stfs f0, 0x33cc(r30)
/* 800F93C4  3C 60 80 39 */	lis r3, l_crawlFrontOffset@ha /* 0x8038FA54@ha */
/* 800F93C8  38 63 FA 54 */	addi r3, r3, l_crawlFrontOffset@l /* 0x8038FA54@l */
/* 800F93CC  C0 23 00 08 */	lfs f1, 8(r3)
/* 800F93D0  C0 1E 33 CC */	lfs f0, 0x33cc(r30)
/* 800F93D4  EC 21 00 32 */	fmuls f1, f1, f0
/* 800F93D8  C0 03 00 00 */	lfs f0, 0(r3)
/* 800F93DC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800F93E0  C0 03 00 04 */	lfs f0, 4(r3)
/* 800F93E4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800F93E8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 800F93EC  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800F93F0  38 63 00 24 */	addi r3, r3, 0x24
/* 800F93F4  38 81 00 20 */	addi r4, r1, 0x20
/* 800F93F8  38 A1 00 14 */	addi r5, r1, 0x14
/* 800F93FC  48 24 D9 71 */	bl PSMTXMultVec
/* 800F9400  C0 02 93 B0 */	lfs f0, lit_10039(r2)
/* 800F9404  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800F9408  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800F940C  38 63 00 24 */	addi r3, r3, 0x24
/* 800F9410  38 81 00 20 */	addi r4, r1, 0x20
/* 800F9414  38 A1 00 08 */	addi r5, r1, 8
/* 800F9418  48 24 D9 55 */	bl PSMTXMultVec
/* 800F941C  7F C3 F3 78 */	mr r3, r30
/* 800F9420  38 81 00 14 */	addi r4, r1, 0x14
/* 800F9424  38 A1 00 08 */	addi r5, r1, 8
/* 800F9428  38 C0 00 00 */	li r6, 0
/* 800F942C  4B FF F1 95 */	bl crawlBgCheck__9daAlink_cFP4cXyzP4cXyzi
/* 800F9430  38 00 00 04 */	li r0, 4
/* 800F9434  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800F9438  7F E3 FB 78 */	mr r3, r31
/* 800F943C  48 06 50 91 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F9440  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F9444  41 82 00 14 */	beq lbl_800F9458
/* 800F9448  7F C3 F3 78 */	mr r3, r30
/* 800F944C  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 800F9450  A8 BE 04 E8 */	lha r5, 0x4e8(r30)
/* 800F9454  48 00 00 21 */	bl procCrawlMoveInit__9daAlink_cFss
lbl_800F9458:
/* 800F9458  38 60 00 01 */	li r3, 1
/* 800F945C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800F9460  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800F9464  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800F9468  7C 08 03 A6 */	mtlr r0
/* 800F946C  38 21 00 40 */	addi r1, r1, 0x40
/* 800F9470  4E 80 00 20 */	blr 
