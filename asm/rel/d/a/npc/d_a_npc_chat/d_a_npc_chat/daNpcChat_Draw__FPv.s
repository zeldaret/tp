lbl_80985C2C:
/* 80985C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80985C30  7C 08 02 A6 */	mflr r0
/* 80985C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80985C38  4B FF C8 95 */	bl Draw__11daNpcChat_cFv
/* 80985C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80985C40  7C 08 03 A6 */	mtlr r0
/* 80985C44  38 21 00 10 */	addi r1, r1, 0x10
/* 80985C48  4E 80 00 20 */	blr 
