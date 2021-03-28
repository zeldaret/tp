lbl_801DD36C:
/* 801DD36C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DD370  7C 08 02 A6 */	mflr r0
/* 801DD374  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DD378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DD37C  7C 7F 1B 78 */	mr r31, r3
/* 801DD380  38 60 00 B8 */	li r3, 0xb8
/* 801DD384  48 0F 18 C9 */	bl __nw__FUl
/* 801DD388  7C 60 1B 79 */	or. r0, r3, r3
/* 801DD38C  41 82 00 18 */	beq lbl_801DD3A4
/* 801DD390  38 80 00 02 */	li r4, 2
/* 801DD394  C0 22 A8 E4 */	lfs f1, lit_3828(r2)
/* 801DD398  38 A0 00 00 */	li r5, 0
/* 801DD39C  4B FB 6E 85 */	bl __ct__16dSelect_cursor_cFUcfP10JKRArchive
/* 801DD3A0  7C 60 1B 78 */	mr r0, r3
lbl_801DD3A4:
/* 801DD3A4  90 1F 03 0C */	stw r0, 0x30c(r31)
/* 801DD3A8  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801DD3AC  C0 22 A8 E8 */	lfs f1, lit_3964(r2)
/* 801DD3B0  C0 42 A8 EC */	lfs f2, lit_3965(r2)
/* 801DD3B4  C0 62 A8 F0 */	lfs f3, lit_3966(r2)
/* 801DD3B8  C0 82 A8 F4 */	lfs f4, lit_3967(r2)
/* 801DD3BC  FC A0 20 90 */	fmr f5, f4
/* 801DD3C0  4B FB 7D F1 */	bl setParam__16dSelect_cursor_cFfffff
/* 801DD3C4  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801DD3C8  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DD3CC  4B FB 7E D5 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801DD3D0  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801DD3D4  C0 22 A8 E0 */	lfs f1, lit_3827(r2)
/* 801DD3D8  4B FB 7D F1 */	bl setScale__16dSelect_cursor_cFf
/* 801DD3DC  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801DD3E0  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 801DD3E4  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 801DD3E8  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801DD3EC  38 60 00 2C */	li r3, 0x2c
/* 801DD3F0  48 0F 18 5D */	bl __nw__FUl
/* 801DD3F4  7C 60 1B 79 */	or. r0, r3, r3
/* 801DD3F8  41 82 00 0C */	beq lbl_801DD404
/* 801DD3FC  48 06 C8 25 */	bl __ct__12dMsgString_cFv
/* 801DD400  7C 60 1B 78 */	mr r0, r3
lbl_801DD404:
/* 801DD404  90 1F 03 10 */	stw r0, 0x310(r31)
/* 801DD408  38 60 00 24 */	li r3, 0x24
/* 801DD40C  48 0F 18 41 */	bl __nw__FUl
/* 801DD410  7C 60 1B 79 */	or. r0, r3, r3
/* 801DD414  41 82 00 0C */	beq lbl_801DD420
/* 801DD418  48 05 E5 9D */	bl __ct__15dMsgScrnArrow_cFv
/* 801DD41C  7C 60 1B 78 */	mr r0, r3
lbl_801DD420:
/* 801DD420  90 1F 03 14 */	stw r0, 0x314(r31)
/* 801DD424  7F E3 FB 78 */	mr r3, r31
/* 801DD428  48 00 1B E9 */	bl screenSetMenu__14dMenu_Letter_cFv
/* 801DD42C  7F E3 FB 78 */	mr r3, r31
/* 801DD430  48 00 26 29 */	bl screenSetBase__14dMenu_Letter_cFv
/* 801DD434  7F E3 FB 78 */	mr r3, r31
/* 801DD438  48 00 2E F9 */	bl screenSetShadow__14dMenu_Letter_cFv
/* 801DD43C  7F E3 FB 78 */	mr r3, r31
/* 801DD440  48 00 2F 99 */	bl screenSetLetter__14dMenu_Letter_cFv
/* 801DD444  7F E3 FB 78 */	mr r3, r31
/* 801DD448  48 00 35 61 */	bl screenSetDoIcon__14dMenu_Letter_cFv
/* 801DD44C  7F E3 FB 78 */	mr r3, r31
/* 801DD450  38 80 00 01 */	li r4, 1
/* 801DD454  48 00 42 F5 */	bl setHIO__14dMenu_Letter_cFb
/* 801DD458  7F E3 FB 78 */	mr r3, r31
/* 801DD45C  48 00 05 C5 */	bl init__14dMenu_Letter_cFv
/* 801DD460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DD464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DD468  7C 08 03 A6 */	mtlr r0
/* 801DD46C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DD470  4E 80 00 20 */	blr 
