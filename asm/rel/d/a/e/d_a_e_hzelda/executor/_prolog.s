lbl_806F0C60:
/* 806F0C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F0C64  7C 08 02 A6 */	mflr r0
/* 806F0C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F0C6C  3C 60 80 6F */	lis r3, data_806F5500@ha
/* 806F0C70  38 63 55 00 */	addi r3, r3, data_806F5500@l
/* 806F0C74  4B B7 24 D8 */	b ModuleConstructorsX
/* 806F0C78  4B B7 24 10 */	b ModuleProlog
/* 806F0C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F0C80  7C 08 03 A6 */	mtlr r0
/* 806F0C84  38 21 00 10 */	addi r1, r1, 0x10
/* 806F0C88  4E 80 00 20 */	blr 
