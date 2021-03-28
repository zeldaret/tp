lbl_80D12B4C:
/* 80D12B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D12B50  7C 08 02 A6 */	mflr r0
/* 80D12B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12B58  4B 55 05 34 */	b ModuleEpilog
/* 80D12B5C  3C 60 80 D1 */	lis r3, data_80D12F94@ha
/* 80D12B60  38 63 2F 94 */	addi r3, r3, data_80D12F94@l
/* 80D12B64  4B 55 06 2C */	b ModuleDestructorsX
/* 80D12B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D12B6C  7C 08 03 A6 */	mtlr r0
/* 80D12B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D12B74  4E 80 00 20 */	blr 
