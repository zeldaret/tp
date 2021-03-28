lbl_80C975EC:
/* 80C975EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C975F0  7C 08 02 A6 */	mflr r0
/* 80C975F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C975F8  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80C975FC  38 04 00 24 */	addi r0, r4, 0x24
/* 80C97600  90 03 05 04 */	stw r0, 0x504(r3)
/* 80C97604  48 00 00 15 */	bl setBaseMtx__18daObjMirrorChain_cFv
/* 80C97608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9760C  7C 08 03 A6 */	mtlr r0
/* 80C97610  38 21 00 10 */	addi r1, r1, 0x10
/* 80C97614  4E 80 00 20 */	blr 
