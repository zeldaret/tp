lbl_80C3C88C:
/* 80C3C88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3C890  7C 08 02 A6 */	mflr r0
/* 80C3C894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3C898  4B 62 67 F4 */	b ModuleEpilog
/* 80C3C89C  3C 60 80 C4 */	lis r3, data_80C3D3D8@ha
/* 80C3C8A0  38 63 D3 D8 */	addi r3, r3, data_80C3D3D8@l
/* 80C3C8A4  4B 62 68 EC */	b ModuleDestructorsX
/* 80C3C8A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3C8AC  7C 08 03 A6 */	mtlr r0
/* 80C3C8B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3C8B4  4E 80 00 20 */	blr 
