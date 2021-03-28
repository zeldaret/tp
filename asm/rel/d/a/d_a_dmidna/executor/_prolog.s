lbl_8045CE60:
/* 8045CE60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045CE64  7C 08 02 A6 */	mflr r0
/* 8045CE68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045CE6C  3C 60 80 46 */	lis r3, data_8045D288@ha
/* 8045CE70  38 63 D2 88 */	addi r3, r3, data_8045D288@l
/* 8045CE74  4B E0 62 D8 */	b ModuleConstructorsX
/* 8045CE78  4B E0 62 10 */	b ModuleProlog
/* 8045CE7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045CE80  7C 08 03 A6 */	mtlr r0
/* 8045CE84  38 21 00 10 */	addi r1, r1, 0x10
/* 8045CE88  4E 80 00 20 */	blr 
