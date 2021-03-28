lbl_804D5B94:
/* 804D5B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5B98  7C 08 02 A6 */	mflr r0
/* 804D5B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5BA0  4B FF FF 71 */	bl execute__10daAlldie_cFv
/* 804D5BA4  38 60 00 01 */	li r3, 1
/* 804D5BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5BAC  7C 08 03 A6 */	mtlr r0
/* 804D5BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5BB4  4E 80 00 20 */	blr 
