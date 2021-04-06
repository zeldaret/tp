lbl_809C28BC:
/* 809C28BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C28C0  7C 08 02 A6 */	mflr r0
/* 809C28C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C28C8  38 63 14 10 */	addi r3, r3, 0x1410
/* 809C28CC  4B 99 F7 7D */	bl __ptmf_cmpr
/* 809C28D0  7C 60 00 34 */	cntlzw r0, r3
/* 809C28D4  54 03 D9 7E */	srwi r3, r0, 5
/* 809C28D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C28DC  7C 08 03 A6 */	mtlr r0
/* 809C28E0  38 21 00 10 */	addi r1, r1, 0x10
/* 809C28E4  4E 80 00 20 */	blr 
