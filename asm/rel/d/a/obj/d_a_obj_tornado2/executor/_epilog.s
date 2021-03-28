lbl_80D1C48C:
/* 80D1C48C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1C490  7C 08 02 A6 */	mflr r0
/* 80D1C494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1C498  4B 54 6B F4 */	b ModuleEpilog
/* 80D1C49C  3C 60 80 D2 */	lis r3, data_80D1D3D0@ha
/* 80D1C4A0  38 63 D3 D0 */	addi r3, r3, data_80D1D3D0@l
/* 80D1C4A4  4B 54 6C EC */	b ModuleDestructorsX
/* 80D1C4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1C4AC  7C 08 03 A6 */	mtlr r0
/* 80D1C4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1C4B4  4E 80 00 20 */	blr 
