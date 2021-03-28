lbl_80D3DFA0:
/* 80D3DFA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3DFA4  7C 08 02 A6 */	mflr r0
/* 80D3DFA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3DFAC  3C 60 80 D4 */	lis r3, data_80D3EC04@ha
/* 80D3DFB0  38 63 EC 04 */	addi r3, r3, data_80D3EC04@l
/* 80D3DFB4  4B 52 51 98 */	b ModuleConstructorsX
/* 80D3DFB8  4B 52 50 D0 */	b ModuleProlog
/* 80D3DFBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3DFC0  7C 08 03 A6 */	mtlr r0
/* 80D3DFC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3DFC8  4E 80 00 20 */	blr 
