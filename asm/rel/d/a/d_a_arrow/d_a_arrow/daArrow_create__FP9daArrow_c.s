lbl_8049D96C:
/* 8049D96C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049D970  7C 08 02 A6 */	mflr r0
/* 8049D974  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049D978  4B FF FA C9 */	bl create__9daArrow_cFv
/* 8049D97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049D980  7C 08 03 A6 */	mtlr r0
/* 8049D984  38 21 00 10 */	addi r1, r1, 0x10
/* 8049D988  4E 80 00 20 */	blr 
