lbl_802DE480:
/* 802DE480  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE484  7C 08 02 A6 */	mflr r0
/* 802DE488  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE48C  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE490  48 08 3D 4D */	bl _savegpr_29
/* 802DE494  7C 7D 1B 78 */	mr r29, r3
/* 802DE498  7C BE 2B 78 */	mr r30, r5
/* 802DE49C  7C DF 33 78 */	mr r31, r6
/* 802DE4A0  28 04 00 00 */	cmplwi r4, 0
/* 802DE4A4  41 82 00 F4 */	beq lbl_802DE598
/* 802DE4A8  90 9D 00 20 */	stw r4, 0x20(r29)
/* 802DE4AC  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE4B0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802DE4B4  7C 03 02 14 */	add r0, r3, r0
/* 802DE4B8  90 1D 00 24 */	stw r0, 0x24(r29)
/* 802DE4BC  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE4C0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802DE4C4  28 00 00 00 */	cmplwi r0, 0
/* 802DE4C8  40 82 00 0C */	bne lbl_802DE4D4
/* 802DE4CC  38 03 00 20 */	addi r0, r3, 0x20
/* 802DE4D0  90 1D 00 24 */	stw r0, 0x24(r29)
lbl_802DE4D4:
/* 802DE4D4  88 1D 00 3B */	lbz r0, 0x3b(r29)
/* 802DE4D8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802DE4DC  41 82 00 0C */	beq lbl_802DE4E8
/* 802DE4E0  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 802DE4E4  4B FF 08 59 */	bl __dl__FPv
lbl_802DE4E8:
/* 802DE4E8  93 DD 00 28 */	stw r30, 0x28(r29)
/* 802DE4EC  88 1D 00 3B */	lbz r0, 0x3b(r29)
/* 802DE4F0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 802DE4F4  98 1D 00 3B */	stb r0, 0x3b(r29)
/* 802DE4F8  38 00 00 00 */	li r0, 0
/* 802DE4FC  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 802DE500  28 1E 00 00 */	cmplwi r30, 0
/* 802DE504  41 82 00 30 */	beq lbl_802DE534
/* 802DE508  9B FD 00 3A */	stb r31, 0x3a(r29)
/* 802DE50C  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 802DE510  7C 1F 00 00 */	cmpw r31, r0
/* 802DE514  41 82 00 20 */	beq lbl_802DE534
/* 802DE518  88 BE 00 0D */	lbz r5, 0xd(r30)
/* 802DE51C  88 DE 00 16 */	lbz r6, 0x16(r30)
/* 802DE520  A0 FE 00 14 */	lhz r7, 0x14(r30)
/* 802DE524  81 1E 00 10 */	lwz r8, 0x10(r30)
/* 802DE528  7F C3 F3 78 */	mr r3, r30
/* 802DE52C  7F E4 FB 78 */	mr r4, r31
/* 802DE530  48 00 03 ED */	bl storeTLUT__10JUTPaletteF7_GXTlut10_GXTlutFmt15JUTTransparencyUsPv
lbl_802DE534:
/* 802DE534  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE538  88 03 00 06 */	lbz r0, 6(r3)
/* 802DE53C  98 1D 00 30 */	stb r0, 0x30(r29)
/* 802DE540  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE544  88 03 00 07 */	lbz r0, 7(r3)
/* 802DE548  98 1D 00 31 */	stb r0, 0x31(r29)
/* 802DE54C  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE550  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802DE554  98 1D 00 32 */	stb r0, 0x32(r29)
/* 802DE558  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE55C  88 03 00 15 */	lbz r0, 0x15(r3)
/* 802DE560  98 1D 00 33 */	stb r0, 0x33(r29)
/* 802DE564  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE568  88 03 00 16 */	lbz r0, 0x16(r3)
/* 802DE56C  7C 00 07 74 */	extsb r0, r0
/* 802DE570  B0 1D 00 34 */	sth r0, 0x34(r29)
/* 802DE574  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE578  88 03 00 17 */	lbz r0, 0x17(r3)
/* 802DE57C  7C 00 07 74 */	extsb r0, r0
/* 802DE580  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 802DE584  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802DE588  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 802DE58C  B0 1D 00 38 */	sth r0, 0x38(r29)
/* 802DE590  7F A3 EB 78 */	mr r3, r29
/* 802DE594  48 00 00 75 */	bl init__10JUTTextureFv
lbl_802DE598:
/* 802DE598  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE59C  48 08 3C 8D */	bl _restgpr_29
/* 802DE5A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE5A4  7C 08 03 A6 */	mtlr r0
/* 802DE5A8  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE5AC  4E 80 00 20 */	blr 
