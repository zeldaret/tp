lbl_804C7E94:
/* 804C7E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C7E98  7C 08 02 A6 */	mflr r0
/* 804C7E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C7EA0  4B FF F4 85 */	bl create__9daNbomb_cFv
/* 804C7EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C7EA8  7C 08 03 A6 */	mtlr r0
/* 804C7EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 804C7EB0  4E 80 00 20 */	blr 
