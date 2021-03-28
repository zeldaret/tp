lbl_802DE44C:
/* 802DE44C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE450  7C 08 02 A6 */	mflr r0
/* 802DE454  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE458  28 05 00 00 */	cmplwi r5, 0
/* 802DE45C  41 82 00 0C */	beq lbl_802DE468
/* 802DE460  88 C5 00 0C */	lbz r6, 0xc(r5)
/* 802DE464  48 00 00 08 */	b lbl_802DE46C
lbl_802DE468:
/* 802DE468  38 C0 00 00 */	li r6, 0
lbl_802DE46C:
/* 802DE46C  48 00 00 15 */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette7_GXTlut
/* 802DE470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE474  7C 08 03 A6 */	mtlr r0
/* 802DE478  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE47C  4E 80 00 20 */	blr 
