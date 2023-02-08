lbl_80CC47F8:
/* 80CC47F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC47FC  7C 08 02 A6 */	mflr r0
/* 80CC4800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4804  48 00 00 15 */	bl setBaseMtx__14daObjSakuita_cFv
/* 80CC4808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC480C  7C 08 03 A6 */	mtlr r0
/* 80CC4810  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC4814  4E 80 00 20 */	blr 
