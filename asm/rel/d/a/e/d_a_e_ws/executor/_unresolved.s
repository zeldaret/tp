lbl_807E3978:
/* 807E3978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E397C  7C 08 02 A6 */	mflr r0
/* 807E3980  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E3984  4B A7 F7 0C */	b ModuleUnresolved
/* 807E3988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E398C  7C 08 03 A6 */	mtlr r0
/* 807E3990  38 21 00 10 */	addi r1, r1, 0x10
/* 807E3994  4E 80 00 20 */	blr 
