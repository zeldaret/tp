lbl_80764FE0:
/* 80764FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80764FE4  7C 08 02 A6 */	mflr r0
/* 80764FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80764FEC  3C 60 80 77 */	lis r3, data_8076B448@ha
/* 80764FF0  38 63 B4 48 */	addi r3, r3, data_8076B448@l
/* 80764FF4  4B AF E1 58 */	b ModuleConstructorsX
/* 80764FF8  4B AF E0 90 */	b ModuleProlog
/* 80764FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80765000  7C 08 03 A6 */	mtlr r0
/* 80765004  38 21 00 10 */	addi r1, r1, 0x10
/* 80765008  4E 80 00 20 */	blr 
