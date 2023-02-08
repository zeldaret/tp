lbl_804DAE88:
/* 804DAE88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAE8C  7C 08 02 A6 */	mflr r0
/* 804DAE90  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAE94  4B FF F8 AD */	bl create__9daCanoe_cFv
/* 804DAE98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAE9C  7C 08 03 A6 */	mtlr r0
/* 804DAEA0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAEA4  4E 80 00 20 */	blr 
