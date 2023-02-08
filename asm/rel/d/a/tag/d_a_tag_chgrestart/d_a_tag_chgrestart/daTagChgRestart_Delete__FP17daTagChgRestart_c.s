lbl_80D56AAC:
/* 80D56AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D56AB0  7C 08 02 A6 */	mflr r0
/* 80D56AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D56AB8  4B FF FF CD */	bl _delete__17daTagChgRestart_cFv
/* 80D56ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D56AC0  7C 08 03 A6 */	mtlr r0
/* 80D56AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D56AC8  4E 80 00 20 */	blr 
