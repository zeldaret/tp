lbl_8096CEA0:
/* 8096CEA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096CEA4  7C 08 02 A6 */	mflr r0
/* 8096CEA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096CEAC  3C 60 80 97 */	lis r3, data_8097284C@ha
/* 8096CEB0  38 63 28 4C */	addi r3, r3, data_8097284C@l
/* 8096CEB4  4B 8F 62 98 */	b ModuleConstructorsX
/* 8096CEB8  4B 8F 61 D0 */	b ModuleProlog
/* 8096CEBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096CEC0  7C 08 03 A6 */	mtlr r0
/* 8096CEC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8096CEC8  4E 80 00 20 */	blr 
