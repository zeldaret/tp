lbl_8066F3A0:
/* 8066F3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066F3A4  7C 08 02 A6 */	mflr r0
/* 8066F3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066F3AC  3C 60 80 67 */	lis r3, data_8067090C@ha
/* 8066F3B0  38 63 09 0C */	addi r3, r3, data_8067090C@l
/* 8066F3B4  4B BF 3D 98 */	b ModuleConstructorsX
/* 8066F3B8  4B BF 3C D0 */	b ModuleProlog
/* 8066F3BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066F3C0  7C 08 03 A6 */	mtlr r0
/* 8066F3C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8066F3C8  4E 80 00 20 */	blr 
