lbl_80C998A0:
/* 80C998A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C998A4  7C 08 02 A6 */	mflr r0
/* 80C998A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C998AC  3C 60 80 CA */	lis r3, data_80C9B23C@ha
/* 80C998B0  38 63 B2 3C */	addi r3, r3, data_80C9B23C@l
/* 80C998B4  4B 5C 98 98 */	b ModuleConstructorsX
/* 80C998B8  4B 5C 97 D0 */	b ModuleProlog
/* 80C998BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C998C0  7C 08 03 A6 */	mtlr r0
/* 80C998C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C998C8  4E 80 00 20 */	blr 
