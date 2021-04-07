lbl_809DCDA4:
/* 809DCDA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DCDA8  7C 08 02 A6 */	mflr r0
/* 809DCDAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DCDB0  38 63 0D E0 */	addi r3, r3, 0xde0
/* 809DCDB4  4B 98 52 95 */	bl __ptmf_cmpr
/* 809DCDB8  7C 60 00 34 */	cntlzw r0, r3
/* 809DCDBC  54 03 D9 7E */	srwi r3, r0, 5
/* 809DCDC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DCDC4  7C 08 03 A6 */	mtlr r0
/* 809DCDC8  38 21 00 10 */	addi r1, r1, 0x10
/* 809DCDCC  4E 80 00 20 */	blr 
