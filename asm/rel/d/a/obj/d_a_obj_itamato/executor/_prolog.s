lbl_80C29400:
/* 80C29400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C29404  7C 08 02 A6 */	mflr r0
/* 80C29408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2940C  3C 60 80 C3 */	lis r3, data_80C2AB5C@ha
/* 80C29410  38 63 AB 5C */	addi r3, r3, data_80C2AB5C@l
/* 80C29414  4B 63 9D 38 */	b ModuleConstructorsX
/* 80C29418  4B 63 9C 70 */	b ModuleProlog
/* 80C2941C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C29420  7C 08 03 A6 */	mtlr r0
/* 80C29424  38 21 00 10 */	addi r1, r1, 0x10
/* 80C29428  4E 80 00 20 */	blr 
