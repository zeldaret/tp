lbl_80C3C860:
/* 80C3C860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3C864  7C 08 02 A6 */	mflr r0
/* 80C3C868  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3C86C  3C 60 80 C4 */	lis r3, data_80C3D3D4@ha
/* 80C3C870  38 63 D3 D4 */	addi r3, r3, data_80C3D3D4@l
/* 80C3C874  4B 62 68 D8 */	b ModuleConstructorsX
/* 80C3C878  4B 62 68 10 */	b ModuleProlog
/* 80C3C87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3C880  7C 08 03 A6 */	mtlr r0
/* 80C3C884  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3C888  4E 80 00 20 */	blr 
