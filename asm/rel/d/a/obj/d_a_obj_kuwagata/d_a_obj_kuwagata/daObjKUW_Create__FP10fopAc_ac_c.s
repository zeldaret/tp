lbl_80C4A6A0:
/* 80C4A6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4A6A4  7C 08 02 A6 */	mflr r0
/* 80C4A6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4A6AC  48 00 24 5D */	bl create__10daObjKUW_cFv
/* 80C4A6B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4A6B4  7C 08 03 A6 */	mtlr r0
/* 80C4A6B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4A6BC  4E 80 00 20 */	blr 
