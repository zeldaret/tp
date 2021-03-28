lbl_80A60038:
/* 80A60038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6003C  7C 08 02 A6 */	mflr r0
/* 80A60040  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A60044  4B 80 30 4C */	b ModuleUnresolved
/* 80A60048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6004C  7C 08 03 A6 */	mtlr r0
/* 80A60050  38 21 00 10 */	addi r1, r1, 0x10
/* 80A60054  4E 80 00 20 */	blr 
