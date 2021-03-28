lbl_80C96DE8:
/* 80C96DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C96DEC  7C 08 02 A6 */	mflr r0
/* 80C96DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C96DF4  3C 60 80 CA */	lis r3, l_scissor@ha
/* 80C96DF8  38 C3 81 38 */	addi r6, r3, l_scissor@l
/* 80C96DFC  80 66 00 00 */	lwz r3, 0(r6)
/* 80C96E00  80 86 00 04 */	lwz r4, 4(r6)
/* 80C96E04  80 A6 00 08 */	lwz r5, 8(r6)
/* 80C96E08  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 80C96E0C  4B 6C 96 C4 */	b GXSetScissor
/* 80C96E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C96E14  7C 08 03 A6 */	mtlr r0
/* 80C96E18  38 21 00 10 */	addi r1, r1, 0x10
/* 80C96E1C  4E 80 00 20 */	blr 
