lbl_802DE9A0:
/* 802DE9A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE9A4  7C 08 02 A6 */	mflr r0
/* 802DE9A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE9AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DE9B0  7C 7F 1B 78 */	mr r31, r3
/* 802DE9B4  3C 80 80 3C */	lis r4, __vt__10JUTNameTab@ha /* 0x803BB3DC@ha */
/* 802DE9B8  38 04 B3 DC */	addi r0, r4, __vt__10JUTNameTab@l /* 0x803BB3DC@l */
/* 802DE9BC  90 03 00 00 */	stw r0, 0(r3)
/* 802DE9C0  38 80 00 00 */	li r4, 0
/* 802DE9C4  48 00 00 59 */	bl setResource__10JUTNameTabFPC7ResNTAB
/* 802DE9C8  7F E3 FB 78 */	mr r3, r31
/* 802DE9CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DE9D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE9D4  7C 08 03 A6 */	mtlr r0
/* 802DE9D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE9DC  4E 80 00 20 */	blr 
