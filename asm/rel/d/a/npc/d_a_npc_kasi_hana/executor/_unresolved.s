lbl_80A1AF18:
/* 80A1AF18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1AF1C  7C 08 02 A6 */	mflr r0
/* 80A1AF20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1AF24  4B 84 81 6C */	b ModuleUnresolved
/* 80A1AF28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1AF2C  7C 08 03 A6 */	mtlr r0
/* 80A1AF30  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1AF34  4E 80 00 20 */	blr 
