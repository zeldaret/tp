lbl_80D3DFCC:
/* 80D3DFCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3DFD0  7C 08 02 A6 */	mflr r0
/* 80D3DFD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3DFD8  4B 52 50 B4 */	b ModuleEpilog
/* 80D3DFDC  3C 60 80 D4 */	lis r3, data_80D3EC08@ha
/* 80D3DFE0  38 63 EC 08 */	addi r3, r3, data_80D3EC08@l
/* 80D3DFE4  4B 52 51 AC */	b ModuleDestructorsX
/* 80D3DFE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3DFEC  7C 08 03 A6 */	mtlr r0
/* 80D3DFF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3DFF4  4E 80 00 20 */	blr 
