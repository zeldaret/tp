lbl_80C506DC:
/* 80C506DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C506E0  7C 08 02 A6 */	mflr r0
/* 80C506E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C506E8  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80C506EC  38 04 00 24 */	addi r0, r4, 0x24
/* 80C506F0  90 03 05 04 */	stw r0, 0x504(r3)
/* 80C506F4  48 00 00 15 */	bl setBaseMtx__14daObjKznkarm_cFv
/* 80C506F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C506FC  7C 08 03 A6 */	mtlr r0
/* 80C50700  38 21 00 10 */	addi r1, r1, 0x10
/* 80C50704  4E 80 00 20 */	blr 
