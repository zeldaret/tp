lbl_80D3A268:
/* 80D3A268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3A26C  7C 08 02 A6 */	mflr r0
/* 80D3A270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3A274  80 83 05 74 */	lwz r4, 0x574(r3)
/* 80D3A278  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D3A27C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80D3A280  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80D3A284  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80D3A288  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D3A28C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80D3A290  48 00 00 15 */	bl setBaseMtx__14daObjWStatue_cFv
/* 80D3A294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3A298  7C 08 03 A6 */	mtlr r0
/* 80D3A29C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3A2A0  4E 80 00 20 */	blr 
