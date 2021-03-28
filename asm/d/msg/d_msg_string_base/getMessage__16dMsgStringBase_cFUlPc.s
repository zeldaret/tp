lbl_80249BF8:
/* 80249BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80249BFC  7C 08 02 A6 */	mflr r0
/* 80249C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80249C04  4B FF FE 6D */	bl getMessageLocal__16dMsgStringBase_cFUlPc
/* 80249C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80249C0C  7C 08 03 A6 */	mtlr r0
/* 80249C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80249C14  4E 80 00 20 */	blr 
