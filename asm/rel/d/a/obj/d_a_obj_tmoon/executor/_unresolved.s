lbl_80D12B78:
/* 80D12B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D12B7C  7C 08 02 A6 */	mflr r0
/* 80D12B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12B84  4B 55 05 0C */	b ModuleUnresolved
/* 80D12B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D12B8C  7C 08 03 A6 */	mtlr r0
/* 80D12B90  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12B94  4E 80 00 20 */	blr 
