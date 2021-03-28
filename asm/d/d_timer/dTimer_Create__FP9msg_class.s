lbl_80260F6C:
/* 80260F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80260F70  7C 08 02 A6 */	mflr r0
/* 80260F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80260F78  4B FF BA 95 */	bl _create__8dTimer_cFv
/* 80260F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80260F80  7C 08 03 A6 */	mtlr r0
/* 80260F84  38 21 00 10 */	addi r1, r1, 0x10
/* 80260F88  4E 80 00 20 */	blr 
