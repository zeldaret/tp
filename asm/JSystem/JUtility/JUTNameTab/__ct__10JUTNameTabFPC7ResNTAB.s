lbl_802DE9E0:
/* 802DE9E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE9E4  7C 08 02 A6 */	mflr r0
/* 802DE9E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE9EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DE9F0  7C 7F 1B 78 */	mr r31, r3
/* 802DE9F4  3C A0 80 3C */	lis r5, __vt__10JUTNameTab@ha
/* 802DE9F8  38 05 B3 DC */	addi r0, r5, __vt__10JUTNameTab@l
/* 802DE9FC  90 03 00 00 */	stw r0, 0(r3)
/* 802DEA00  48 00 00 1D */	bl setResource__10JUTNameTabFPC7ResNTAB
/* 802DEA04  7F E3 FB 78 */	mr r3, r31
/* 802DEA08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DEA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DEA10  7C 08 03 A6 */	mtlr r0
/* 802DEA14  38 21 00 10 */	addi r1, r1, 0x10
/* 802DEA18  4E 80 00 20 */	blr 
