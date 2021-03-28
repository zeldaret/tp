lbl_80536D60:
/* 80536D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80536D64  7C 08 02 A6 */	mflr r0
/* 80536D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80536D6C  3C 60 80 54 */	lis r3, data_8053E740@ha
/* 80536D70  38 63 E7 40 */	addi r3, r3, data_8053E740@l
/* 80536D74  4B D2 C3 D8 */	b ModuleConstructorsX
/* 80536D78  4B D2 C3 10 */	b ModuleProlog
/* 80536D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80536D80  7C 08 03 A6 */	mtlr r0
/* 80536D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80536D88  4E 80 00 20 */	blr 
