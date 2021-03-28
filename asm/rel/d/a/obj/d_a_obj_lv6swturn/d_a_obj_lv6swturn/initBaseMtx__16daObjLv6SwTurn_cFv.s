lbl_80C83A98:
/* 80C83A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C83A9C  7C 08 02 A6 */	mflr r0
/* 80C83AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C83AA4  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80C83AA8  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80C83AAC  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80C83AB0  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80C83AB4  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C83AB8  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80C83ABC  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80C83AC0  48 00 00 15 */	bl setBaseMtx__16daObjLv6SwTurn_cFv
/* 80C83AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C83AC8  7C 08 03 A6 */	mtlr r0
/* 80C83ACC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C83AD0  4E 80 00 20 */	blr 
