lbl_80C200AC:
/* 80C200AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C200B0  7C 08 02 A6 */	mflr r0
/* 80C200B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C200B8  48 00 00 15 */	bl create__12daObjIce_l_cFv
/* 80C200BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C200C0  7C 08 03 A6 */	mtlr r0
/* 80C200C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C200C8  4E 80 00 20 */	blr 
