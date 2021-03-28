lbl_80BC8E80:
/* 80BC8E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC8E84  7C 08 02 A6 */	mflr r0
/* 80BC8E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC8E8C  3C 60 80 BD */	lis r3, data_80BC9FF4@ha
/* 80BC8E90  38 63 9F F4 */	addi r3, r3, data_80BC9FF4@l
/* 80BC8E94  4B 69 A2 B8 */	b ModuleConstructorsX
/* 80BC8E98  4B 69 A1 F0 */	b ModuleProlog
/* 80BC8E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC8EA0  7C 08 03 A6 */	mtlr r0
/* 80BC8EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC8EA8  4E 80 00 20 */	blr 
