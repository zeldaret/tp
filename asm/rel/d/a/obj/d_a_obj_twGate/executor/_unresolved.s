lbl_80D1FA18:
/* 80D1FA18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1FA1C  7C 08 02 A6 */	mflr r0
/* 80D1FA20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1FA24  4B 54 36 6C */	b ModuleUnresolved
/* 80D1FA28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1FA2C  7C 08 03 A6 */	mtlr r0
/* 80D1FA30  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1FA34  4E 80 00 20 */	blr 
