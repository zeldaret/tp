lbl_80C39EC8:
/* 80C39EC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C39ECC  7C 08 02 A6 */	mflr r0
/* 80C39ED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C39ED4  48 00 1D 85 */	bl create__10daObjKAT_cFv
/* 80C39ED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C39EDC  7C 08 03 A6 */	mtlr r0
/* 80C39EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C39EE4  4E 80 00 20 */	blr 
