lbl_80BA6ED8:
/* 80BA6ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA6EDC  7C 08 02 A6 */	mflr r0
/* 80BA6EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA6EE4  80 83 05 A8 */	lwz r4, 0x5a8(r3)
/* 80BA6EE8  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80BA6EEC  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 80BA6EF0  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80BA6EF4  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80BA6EF8  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80BA6EFC  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 80BA6F00  48 00 00 15 */	bl setBaseMtx__16daObjAvalanche_cFv
/* 80BA6F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA6F08  7C 08 03 A6 */	mtlr r0
/* 80BA6F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA6F10  4E 80 00 20 */	blr 
