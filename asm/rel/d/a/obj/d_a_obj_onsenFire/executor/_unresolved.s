lbl_80CA8258:
/* 80CA8258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA825C  7C 08 02 A6 */	mflr r0
/* 80CA8260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8264  4B 5B AE 2C */	b ModuleUnresolved
/* 80CA8268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA826C  7C 08 03 A6 */	mtlr r0
/* 80CA8270  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8274  4E 80 00 20 */	blr 
