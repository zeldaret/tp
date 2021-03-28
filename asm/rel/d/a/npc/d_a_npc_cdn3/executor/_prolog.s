lbl_80978C60:
/* 80978C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80978C64  7C 08 02 A6 */	mflr r0
/* 80978C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80978C6C  3C 60 80 98 */	lis r3, data_8097F534@ha
/* 80978C70  38 63 F5 34 */	addi r3, r3, data_8097F534@l
/* 80978C74  4B 8E A4 D8 */	b ModuleConstructorsX
/* 80978C78  4B 8E A4 10 */	b ModuleProlog
/* 80978C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80978C80  7C 08 03 A6 */	mtlr r0
/* 80978C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80978C88  4E 80 00 20 */	blr 
