lbl_804681D8:
/* 804681D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804681DC  7C 08 02 A6 */	mflr r0
/* 804681E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804681E4  4B DF AE AC */	b ModuleUnresolved
/* 804681E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804681EC  7C 08 03 A6 */	mtlr r0
/* 804681F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804681F4  4E 80 00 20 */	blr 
