lbl_80985C0C:
/* 80985C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80985C10  7C 08 02 A6 */	mflr r0
/* 80985C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80985C18  4B FF C7 D1 */	bl Execute__11daNpcChat_cFv
/* 80985C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80985C20  7C 08 03 A6 */	mtlr r0
/* 80985C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80985C28  4E 80 00 20 */	blr 
