lbl_80C83920:
/* 80C83920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C83924  7C 08 02 A6 */	mflr r0
/* 80C83928  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8392C  3C 60 80 C8 */	lis r3, data_80C8469C@ha
/* 80C83930  38 63 46 9C */	addi r3, r3, data_80C8469C@l
/* 80C83934  4B 5D F8 18 */	b ModuleConstructorsX
/* 80C83938  4B 5D F7 50 */	b ModuleProlog
/* 80C8393C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C83940  7C 08 03 A6 */	mtlr r0
/* 80C83944  38 21 00 10 */	addi r1, r1, 0x10
/* 80C83948  4E 80 00 20 */	blr 
