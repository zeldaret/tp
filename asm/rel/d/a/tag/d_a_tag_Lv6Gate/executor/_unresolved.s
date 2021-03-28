lbl_80D4F878:
/* 80D4F878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F87C  7C 08 02 A6 */	mflr r0
/* 80D4F880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F884  4B 51 38 0C */	b ModuleUnresolved
/* 80D4F888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F88C  7C 08 03 A6 */	mtlr r0
/* 80D4F890  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F894  4E 80 00 20 */	blr 
