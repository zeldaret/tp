lbl_80D369E4:
/* 80D369E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D369E8  7C 08 02 A6 */	mflr r0
/* 80D369EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D369F0  4B FF FA 15 */	bl create__13daObjWCover_cFv
/* 80D369F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D369F8  7C 08 03 A6 */	mtlr r0
/* 80D369FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D36A00  4E 80 00 20 */	blr 
