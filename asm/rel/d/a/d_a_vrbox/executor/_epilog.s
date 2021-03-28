lbl_804984CC:
/* 804984CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804984D0  7C 08 02 A6 */	mflr r0
/* 804984D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804984D8  4B DC AB B4 */	b ModuleEpilog
/* 804984DC  3C 60 80 4A */	lis r3, data_8049898C@ha
/* 804984E0  38 63 89 8C */	addi r3, r3, data_8049898C@l
/* 804984E4  4B DC AC AC */	b ModuleDestructorsX
/* 804984E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804984EC  7C 08 03 A6 */	mtlr r0
/* 804984F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804984F4  4E 80 00 20 */	blr 
