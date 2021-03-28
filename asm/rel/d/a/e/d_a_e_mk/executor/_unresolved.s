lbl_80714098:
/* 80714098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071409C  7C 08 02 A6 */	mflr r0
/* 807140A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807140A4  4B B4 EF EC */	b ModuleUnresolved
/* 807140A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807140AC  7C 08 03 A6 */	mtlr r0
/* 807140B0  38 21 00 10 */	addi r1, r1, 0x10
/* 807140B4  4E 80 00 20 */	blr 
