lbl_8099A060:
/* 8099A060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099A064  7C 08 02 A6 */	mflr r0
/* 8099A068  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099A06C  3C 60 80 9A */	lis r3, data_8099D230@ha
/* 8099A070  38 63 D2 30 */	addi r3, r3, data_8099D230@l
/* 8099A074  4B 8C 90 D8 */	b ModuleConstructorsX
/* 8099A078  4B 8C 90 10 */	b ModuleProlog
/* 8099A07C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099A080  7C 08 03 A6 */	mtlr r0
/* 8099A084  38 21 00 10 */	addi r1, r1, 0x10
/* 8099A088  4E 80 00 20 */	blr 
