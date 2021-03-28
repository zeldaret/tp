lbl_80D616AC:
/* 80D616AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D616B0  7C 08 02 A6 */	mflr r0
/* 80D616B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D616B8  4B 50 19 D4 */	b ModuleEpilog
/* 80D616BC  3C 60 80 D6 */	lis r3, data_80D61B20@ha
/* 80D616C0  38 63 1B 20 */	addi r3, r3, data_80D61B20@l
/* 80D616C4  4B 50 1A CC */	b ModuleDestructorsX
/* 80D616C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D616CC  7C 08 03 A6 */	mtlr r0
/* 80D616D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D616D4  4E 80 00 20 */	blr 
