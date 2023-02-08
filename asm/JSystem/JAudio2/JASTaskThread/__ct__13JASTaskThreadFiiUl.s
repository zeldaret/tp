lbl_8028F6C4:
/* 8028F6C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028F6C8  7C 08 02 A6 */	mflr r0
/* 8028F6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028F6D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028F6D4  7C 7F 1B 78 */	mr r31, r3
/* 8028F6D8  7C 87 23 78 */	mr r7, r4
/* 8028F6DC  7C A0 2B 78 */	mr r0, r5
/* 8028F6E0  80 8D 8C 90 */	lwz r4, JASDram(r13)
/* 8028F6E4  7C C5 33 78 */	mr r5, r6
/* 8028F6E8  7C 06 03 78 */	mr r6, r0
/* 8028F6EC  48 04 1F 25 */	bl __ct__9JKRThreadFP7JKRHeapUlii
/* 8028F6F0  3C 60 80 3C */	lis r3, __vt__13JASTaskThread@ha /* 0x803C5B58@ha */
/* 8028F6F4  38 03 5B 58 */	addi r0, r3, __vt__13JASTaskThread@l /* 0x803C5B58@l */
/* 8028F6F8  90 1F 00 00 */	stw r0, 0(r31)
/* 8028F6FC  38 00 00 00 */	li r0, 0
/* 8028F700  98 1F 00 84 */	stb r0, 0x84(r31)
/* 8028F704  38 7F 00 7C */	addi r3, r31, 0x7c
/* 8028F708  48 0B 15 6D */	bl OSInitThreadQueue
/* 8028F70C  7F E3 FB 78 */	mr r3, r31
/* 8028F710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028F714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028F718  7C 08 03 A6 */	mtlr r0
/* 8028F71C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028F720  4E 80 00 20 */	blr 
