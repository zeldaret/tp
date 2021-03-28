lbl_801CD3F0:
/* 801CD3F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CD3F4  7C 08 02 A6 */	mflr r0
/* 801CD3F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CD3FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CD400  93 C1 00 08 */	stw r30, 8(r1)
/* 801CD404  7C 7E 1B 78 */	mr r30, r3
/* 801CD408  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801CD40C  28 00 00 00 */	cmplwi r0, 0
/* 801CD410  41 82 00 24 */	beq lbl_801CD434
/* 801CD414  83 FE 02 0C */	lwz r31, 0x20c(r30)
/* 801CD418  4B FF FF 39 */	bl getNowFmapRegionData__12dMenu_Fmap_cFv
/* 801CD41C  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 801CD420  80 1E 00 B8 */	lwz r0, 0xb8(r30)
/* 801CD424  90 04 12 3C */	stw r0, 0x123c(r4)
/* 801CD428  90 64 12 40 */	stw r3, 0x1240(r4)
/* 801CD42C  93 E4 12 44 */	stw r31, 0x1244(r4)
/* 801CD430  48 00 00 18 */	b lbl_801CD448
lbl_801CD434:
/* 801CD434  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801CD438  38 00 00 00 */	li r0, 0
/* 801CD43C  90 03 12 3C */	stw r0, 0x123c(r3)
/* 801CD440  90 03 12 40 */	stw r0, 0x1240(r3)
/* 801CD444  90 03 12 44 */	stw r0, 0x1244(r3)
lbl_801CD448:
/* 801CD448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CD44C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801CD450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CD454  7C 08 03 A6 */	mtlr r0
/* 801CD458  38 21 00 10 */	addi r1, r1, 0x10
/* 801CD45C  4E 80 00 20 */	blr 
