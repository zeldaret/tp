lbl_80CB0C60:
/* 80CB0C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB0C64  7C 08 02 A6 */	mflr r0
/* 80CB0C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB0C6C  3C 60 80 CB */	lis r3, data_80CB1850@ha
/* 80CB0C70  38 63 18 50 */	addi r3, r3, data_80CB1850@l
/* 80CB0C74  4B 5B 24 D8 */	b ModuleConstructorsX
/* 80CB0C78  4B 5B 24 10 */	b ModuleProlog
/* 80CB0C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB0C80  7C 08 03 A6 */	mtlr r0
/* 80CB0C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB0C88  4E 80 00 20 */	blr 
