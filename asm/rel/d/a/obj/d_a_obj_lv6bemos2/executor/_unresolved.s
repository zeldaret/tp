lbl_80C7E198:
/* 80C7E198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7E19C  7C 08 02 A6 */	mflr r0
/* 80C7E1A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7E1A4  4B 5E 4E EC */	b ModuleUnresolved
/* 80C7E1A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7E1AC  7C 08 03 A6 */	mtlr r0
/* 80C7E1B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7E1B4  4E 80 00 20 */	blr 
