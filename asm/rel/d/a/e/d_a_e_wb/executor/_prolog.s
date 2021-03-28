lbl_807D23A0:
/* 807D23A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807D23A4  7C 08 02 A6 */	mflr r0
/* 807D23A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D23AC  3C 60 80 7E */	lis r3, data_807E2978@ha
/* 807D23B0  38 63 29 78 */	addi r3, r3, data_807E2978@l
/* 807D23B4  4B A9 0D 98 */	b ModuleConstructorsX
/* 807D23B8  4B A9 0C D0 */	b ModuleProlog
/* 807D23BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D23C0  7C 08 03 A6 */	mtlr r0
/* 807D23C4  38 21 00 10 */	addi r1, r1, 0x10
/* 807D23C8  4E 80 00 20 */	blr 
