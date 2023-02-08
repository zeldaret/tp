lbl_80985BEC:
/* 80985BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80985BF0  7C 08 02 A6 */	mflr r0
/* 80985BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80985BF8  4B FF C7 BD */	bl Delete__11daNpcChat_cFv
/* 80985BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80985C00  7C 08 03 A6 */	mtlr r0
/* 80985C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80985C08  4E 80 00 20 */	blr 
