lbl_80837AA0:
/* 80837AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80837AA4  7C 08 02 A6 */	mflr r0
/* 80837AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80837AAC  3C 60 80 83 */	lis r3, data_80837DDC@ha
/* 80837AB0  38 63 7D DC */	addi r3, r3, data_80837DDC@l
/* 80837AB4  4B A2 B6 98 */	b ModuleConstructorsX
/* 80837AB8  4B A2 B5 D0 */	b ModuleProlog
/* 80837ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80837AC0  7C 08 03 A6 */	mtlr r0
/* 80837AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80837AC8  4E 80 00 20 */	blr 
