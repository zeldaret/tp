lbl_8029A13C:
/* 8029A13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A140  7C 08 02 A6 */	mflr r0
/* 8029A144  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029A14C  7C 7F 1B 78 */	mr r31, r3
/* 8029A150  3C 60 80 3C */	lis r3, __vt__11JASDisposer@ha /* 0x803C7838@ha */
/* 8029A154  38 03 78 38 */	addi r0, r3, __vt__11JASDisposer@l /* 0x803C7838@l */
/* 8029A158  90 1F 00 00 */	stw r0, 0(r31)
/* 8029A15C  3C 60 80 3C */	lis r3, __vt__10JASWaveArc@ha /* 0x803C7820@ha */
/* 8029A160  38 03 78 20 */	addi r0, r3, __vt__10JASWaveArc@l /* 0x803C7820@l */
/* 8029A164  90 1F 00 00 */	stw r0, 0(r31)
/* 8029A168  7F E4 FB 78 */	mr r4, r31
/* 8029A16C  38 64 00 04 */	addi r3, r4, 4
/* 8029A170  4B FF 5F D1 */	bl __ct__7JASHeapFP11JASDisposer
/* 8029A174  38 60 00 00 */	li r3, 0
/* 8029A178  90 7F 00 48 */	stw r3, 0x48(r31)
/* 8029A17C  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 8029A180  38 00 FF FF */	li r0, -1
/* 8029A184  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8029A188  90 7F 00 54 */	stw r3, 0x54(r31)
/* 8029A18C  B0 7F 00 58 */	sth r3, 0x58(r31)
/* 8029A190  B0 7F 00 5A */	sth r3, 0x5a(r31)
/* 8029A194  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8029A198  48 0A 4E 71 */	bl OSInitMutex
/* 8029A19C  7F E3 FB 78 */	mr r3, r31
/* 8029A1A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029A1A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A1A8  7C 08 03 A6 */	mtlr r0
/* 8029A1AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A1B0  4E 80 00 20 */	blr 
