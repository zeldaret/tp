lbl_80A6AAC0:
/* 80A6AAC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6AAC4  7C 08 02 A6 */	mflr r0
/* 80A6AAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6AACC  3C 60 80 A7 */	lis r3, data_80A6FD68@ha
/* 80A6AAD0  38 63 FD 68 */	addi r3, r3, data_80A6FD68@l
/* 80A6AAD4  4B 7F 86 78 */	b ModuleConstructorsX
/* 80A6AAD8  4B 7F 85 B0 */	b ModuleProlog
/* 80A6AADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6AAE0  7C 08 03 A6 */	mtlr r0
/* 80A6AAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6AAE8  4E 80 00 20 */	blr 
