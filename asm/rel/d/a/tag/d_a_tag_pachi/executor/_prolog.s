lbl_80D5D3C0:
/* 80D5D3C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D3C4  7C 08 02 A6 */	mflr r0
/* 80D5D3C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D3CC  3C 60 80 D6 */	lis r3, data_80D5D90C@ha
/* 80D5D3D0  38 63 D9 0C */	addi r3, r3, data_80D5D90C@l
/* 80D5D3D4  4B 50 5D 78 */	b ModuleConstructorsX
/* 80D5D3D8  4B 50 5C B0 */	b ModuleProlog
/* 80D5D3DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D3E0  7C 08 03 A6 */	mtlr r0
/* 80D5D3E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D3E8  4E 80 00 20 */	blr 
