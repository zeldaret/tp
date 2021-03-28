lbl_80C166EC:
/* 80C166EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C166F0  7C 08 02 A6 */	mflr r0
/* 80C166F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C166F8  4B 64 C9 94 */	b ModuleEpilog
/* 80C166FC  3C 60 80 C1 */	lis r3, data_80C172F8@ha
/* 80C16700  38 63 72 F8 */	addi r3, r3, data_80C172F8@l
/* 80C16704  4B 64 CA 8C */	b ModuleDestructorsX
/* 80C16708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1670C  7C 08 03 A6 */	mtlr r0
/* 80C16710  38 21 00 10 */	addi r1, r1, 0x10
/* 80C16714  4E 80 00 20 */	blr 
