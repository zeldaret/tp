lbl_805DB244:
/* 805DB244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DB248  7C 08 02 A6 */	mflr r0
/* 805DB24C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DB250  4B FF FF 5D */	bl _delete__8daB_DS_cFv
/* 805DB254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DB258  7C 08 03 A6 */	mtlr r0
/* 805DB25C  38 21 00 10 */	addi r1, r1, 0x10
/* 805DB260  4E 80 00 20 */	blr 
