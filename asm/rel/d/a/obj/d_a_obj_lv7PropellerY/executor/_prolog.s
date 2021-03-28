lbl_80C85380:
/* 80C85380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C85384  7C 08 02 A6 */	mflr r0
/* 80C85388  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8538C  3C 60 80 C8 */	lis r3, data_80C8611C@ha
/* 80C85390  38 63 61 1C */	addi r3, r3, data_80C8611C@l
/* 80C85394  4B 5D DD B8 */	b ModuleConstructorsX
/* 80C85398  4B 5D DC F0 */	b ModuleProlog
/* 80C8539C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C853A0  7C 08 03 A6 */	mtlr r0
/* 80C853A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C853A8  4E 80 00 20 */	blr 
