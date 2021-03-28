lbl_8024005C:
/* 8024005C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80240060  7C 08 02 A6 */	mflr r0
/* 80240064  90 01 00 14 */	stw r0, 0x14(r1)
/* 80240068  80 63 00 F0 */	lwz r3, 0xf0(r3)
/* 8024006C  4B FF A3 2D */	bl selAnimeMove__17dMsgScrn3Select_cFUcUcb
/* 80240070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80240074  7C 08 03 A6 */	mtlr r0
/* 80240078  38 21 00 10 */	addi r1, r1, 0x10
/* 8024007C  4E 80 00 20 */	blr 
