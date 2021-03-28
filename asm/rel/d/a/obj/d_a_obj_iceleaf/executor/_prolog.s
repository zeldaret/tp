lbl_80C246A0:
/* 80C246A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C246A4  7C 08 02 A6 */	mflr r0
/* 80C246A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C246AC  3C 60 80 C2 */	lis r3, data_80C25D5C@ha
/* 80C246B0  38 63 5D 5C */	addi r3, r3, data_80C25D5C@l
/* 80C246B4  4B 63 EA 98 */	b ModuleConstructorsX
/* 80C246B8  4B 63 E9 D0 */	b ModuleProlog
/* 80C246BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C246C0  7C 08 03 A6 */	mtlr r0
/* 80C246C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C246C8  4E 80 00 20 */	blr 
