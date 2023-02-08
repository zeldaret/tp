lbl_80C04A88:
/* 80C04A88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04A8C  7C 08 02 A6 */	mflr r0
/* 80C04A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04A94  4B FF B9 39 */	bl create__11daObj_GrA_cFv
/* 80C04A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04A9C  7C 08 03 A6 */	mtlr r0
/* 80C04AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04AA4  4E 80 00 20 */	blr 
