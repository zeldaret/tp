lbl_804FB058:
/* 804FB058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FB05C  7C 08 02 A6 */	mflr r0
/* 804FB060  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FB064  4B D6 80 2C */	b ModuleUnresolved
/* 804FB068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FB06C  7C 08 03 A6 */	mtlr r0
/* 804FB070  38 21 00 10 */	addi r1, r1, 0x10
/* 804FB074  4E 80 00 20 */	blr 
