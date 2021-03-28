lbl_804D4B94:
/* 804D4B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4B98  7C 08 02 A6 */	mflr r0
/* 804D4B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4BA0  4B FF F3 ED */	bl execute__11daSpinner_cFv
/* 804D4BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4BA8  7C 08 03 A6 */	mtlr r0
/* 804D4BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4BB0  4E 80 00 20 */	blr 
