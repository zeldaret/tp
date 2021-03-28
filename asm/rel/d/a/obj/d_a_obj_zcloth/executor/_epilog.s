lbl_80D3EDCC:
/* 80D3EDCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3EDD0  7C 08 02 A6 */	mflr r0
/* 80D3EDD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3EDD8  4B 52 42 B4 */	b ModuleEpilog
/* 80D3EDDC  3C 60 80 D4 */	lis r3, data_80D3F2D0@ha
/* 80D3EDE0  38 63 F2 D0 */	addi r3, r3, data_80D3F2D0@l
/* 80D3EDE4  4B 52 43 AC */	b ModuleDestructorsX
/* 80D3EDE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3EDEC  7C 08 03 A6 */	mtlr r0
/* 80D3EDF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3EDF4  4E 80 00 20 */	blr 
