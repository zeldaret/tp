lbl_804DD938:
/* 804DD938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DD93C  7C 08 02 A6 */	mflr r0
/* 804DD940  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DD944  4B D8 57 4C */	b ModuleUnresolved
/* 804DD948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DD94C  7C 08 03 A6 */	mtlr r0
/* 804DD950  38 21 00 10 */	addi r1, r1, 0x10
/* 804DD954  4E 80 00 20 */	blr 
