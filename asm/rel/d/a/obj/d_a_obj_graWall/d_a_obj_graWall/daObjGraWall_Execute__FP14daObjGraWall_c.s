lbl_80C10F40:
/* 80C10F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C10F44  7C 08 02 A6 */	mflr r0
/* 80C10F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C10F4C  4B FF FE 8D */	bl Execute__14daObjGraWall_cFv
/* 80C10F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C10F54  7C 08 03 A6 */	mtlr r0
/* 80C10F58  38 21 00 10 */	addi r1, r1, 0x10
/* 80C10F5C  4E 80 00 20 */	blr 
