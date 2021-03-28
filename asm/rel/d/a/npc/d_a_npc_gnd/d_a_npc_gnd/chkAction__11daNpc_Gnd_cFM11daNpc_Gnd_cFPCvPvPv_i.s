lbl_809BCD30:
/* 809BCD30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BCD34  7C 08 02 A6 */	mflr r0
/* 809BCD38  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BCD3C  38 63 0F 90 */	addi r3, r3, 0xf90
/* 809BCD40  4B 9A 53 08 */	b __ptmf_cmpr
/* 809BCD44  7C 60 00 34 */	cntlzw r0, r3
/* 809BCD48  54 03 D9 7E */	srwi r3, r0, 5
/* 809BCD4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BCD50  7C 08 03 A6 */	mtlr r0
/* 809BCD54  38 21 00 10 */	addi r1, r1, 0x10
/* 809BCD58  4E 80 00 20 */	blr 
