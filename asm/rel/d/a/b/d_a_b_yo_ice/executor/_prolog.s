lbl_8063A060:
/* 8063A060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063A064  7C 08 02 A6 */	mflr r0
/* 8063A068  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063A06C  3C 60 80 64 */	lis r3, data_8063DC70@ha
/* 8063A070  38 63 DC 70 */	addi r3, r3, data_8063DC70@l
/* 8063A074  4B C2 90 D8 */	b ModuleConstructorsX
/* 8063A078  4B C2 90 10 */	b ModuleProlog
/* 8063A07C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A080  7C 08 03 A6 */	mtlr r0
/* 8063A084  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A088  4E 80 00 20 */	blr 
