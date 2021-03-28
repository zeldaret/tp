lbl_80C53480:
/* 80C53480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C53484  7C 08 02 A6 */	mflr r0
/* 80C53488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5348C  3C 60 80 C5 */	lis r3, data_80C53FA8@ha
/* 80C53490  38 63 3F A8 */	addi r3, r3, data_80C53FA8@l
/* 80C53494  4B 60 FC B8 */	b ModuleConstructorsX
/* 80C53498  4B 60 FB F0 */	b ModuleProlog
/* 80C5349C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C534A0  7C 08 03 A6 */	mtlr r0
/* 80C534A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C534A8  4E 80 00 20 */	blr 
