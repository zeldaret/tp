lbl_80C10F68:
/* 80C10F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C10F6C  7C 08 02 A6 */	mflr r0
/* 80C10F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C10F74  4B FF FF 05 */	bl Delete__14daObjGraWall_cFv
/* 80C10F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C10F7C  7C 08 03 A6 */	mtlr r0
/* 80C10F80  38 21 00 10 */	addi r1, r1, 0x10
/* 80C10F84  4E 80 00 20 */	blr 
