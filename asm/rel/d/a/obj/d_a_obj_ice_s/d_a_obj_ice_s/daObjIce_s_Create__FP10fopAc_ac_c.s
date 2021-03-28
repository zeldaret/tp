lbl_80C212AC:
/* 80C212AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C212B0  7C 08 02 A6 */	mflr r0
/* 80C212B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C212B8  48 00 00 15 */	bl create__12daObjIce_s_cFv
/* 80C212BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C212C0  7C 08 03 A6 */	mtlr r0
/* 80C212C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C212C8  4E 80 00 20 */	blr 
