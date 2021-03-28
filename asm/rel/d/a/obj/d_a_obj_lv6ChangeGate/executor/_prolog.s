lbl_80C70B60:
/* 80C70B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C70B64  7C 08 02 A6 */	mflr r0
/* 80C70B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C70B6C  3C 60 80 C7 */	lis r3, data_80C72138@ha
/* 80C70B70  38 63 21 38 */	addi r3, r3, data_80C72138@l
/* 80C70B74  4B 5F 25 D8 */	b ModuleConstructorsX
/* 80C70B78  4B 5F 25 10 */	b ModuleProlog
/* 80C70B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C70B80  7C 08 03 A6 */	mtlr r0
/* 80C70B84  38 21 00 10 */	addi r1, r1, 0x10
/* 80C70B88  4E 80 00 20 */	blr 
