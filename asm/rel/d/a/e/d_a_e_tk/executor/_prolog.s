lbl_807B8100:
/* 807B8100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B8104  7C 08 02 A6 */	mflr r0
/* 807B8108  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B810C  3C 60 80 7C */	lis r3, data_807BA258@ha
/* 807B8110  38 63 A2 58 */	addi r3, r3, data_807BA258@l
/* 807B8114  4B AA B0 38 */	b ModuleConstructorsX
/* 807B8118  4B AA AF 70 */	b ModuleProlog
/* 807B811C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B8120  7C 08 03 A6 */	mtlr r0
/* 807B8124  38 21 00 10 */	addi r1, r1, 0x10
/* 807B8128  4E 80 00 20 */	blr 
