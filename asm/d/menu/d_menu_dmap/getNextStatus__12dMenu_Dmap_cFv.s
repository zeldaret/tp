lbl_801BF334:
/* 801BF334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BF338  7C 08 02 A6 */	mflr r0
/* 801BF33C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BF340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BF344  7C 7F 1B 78 */	mr r31, r3
/* 801BF348  48 03 AC 65 */	bl dMw_LEFT_TRIGGER__Fv
/* 801BF34C  2C 03 00 00 */	cmpwi r3, 0
/* 801BF350  40 82 00 34 */	bne lbl_801BF384
/* 801BF354  48 03 AC FD */	bl dMw_B_TRIGGER__Fv
/* 801BF358  2C 03 00 00 */	cmpwi r3, 0
/* 801BF35C  41 82 00 40 */	beq lbl_801BF39C
/* 801BF360  88 1F 01 7F */	lbz r0, 0x17f(r31)
/* 801BF364  28 00 00 00 */	cmplwi r0, 0
/* 801BF368  41 82 00 1C */	beq lbl_801BF384
/* 801BF36C  88 1F 01 7B */	lbz r0, 0x17b(r31)
/* 801BF370  28 00 00 00 */	cmplwi r0, 0
/* 801BF374  40 82 00 28 */	bne lbl_801BF39C
/* 801BF378  88 1F 01 7C */	lbz r0, 0x17c(r31)
/* 801BF37C  28 00 00 00 */	cmplwi r0, 0
/* 801BF380  40 82 00 1C */	bne lbl_801BF39C
lbl_801BF384:
/* 801BF384  7F E3 FB 78 */	mr r3, r31
/* 801BF388  48 00 00 DD */	bl isKeyCheck__12dMenu_Dmap_cFv
/* 801BF38C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BF390  40 82 00 0C */	bne lbl_801BF39C
/* 801BF394  38 60 00 01 */	li r3, 1
/* 801BF398  48 00 00 64 */	b lbl_801BF3FC
lbl_801BF39C:
/* 801BF39C  48 03 AC 59 */	bl dMw_RIGHT_TRIGGER__Fv
/* 801BF3A0  2C 03 00 00 */	cmpwi r3, 0
/* 801BF3A4  41 82 00 1C */	beq lbl_801BF3C0
/* 801BF3A8  7F E3 FB 78 */	mr r3, r31
/* 801BF3AC  48 00 00 B9 */	bl isKeyCheck__12dMenu_Dmap_cFv
/* 801BF3B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BF3B4  40 82 00 0C */	bne lbl_801BF3C0
/* 801BF3B8  38 60 00 02 */	li r3, 2
/* 801BF3BC  48 00 00 40 */	b lbl_801BF3FC
lbl_801BF3C0:
/* 801BF3C0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801BF3C4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801BF3C8  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801BF3CC  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 801BF3D0  41 82 00 28 */	beq lbl_801BF3F8
/* 801BF3D4  88 03 00 BF */	lbz r0, 0xbf(r3)
/* 801BF3D8  28 00 00 06 */	cmplwi r0, 6
/* 801BF3DC  41 82 00 1C */	beq lbl_801BF3F8
/* 801BF3E0  7F E3 FB 78 */	mr r3, r31
/* 801BF3E4  48 00 00 81 */	bl isKeyCheck__12dMenu_Dmap_cFv
/* 801BF3E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BF3EC  40 82 00 0C */	bne lbl_801BF3F8
/* 801BF3F0  38 60 00 03 */	li r3, 3
/* 801BF3F4  48 00 00 08 */	b lbl_801BF3FC
lbl_801BF3F8:
/* 801BF3F8  38 60 00 00 */	li r3, 0
lbl_801BF3FC:
/* 801BF3FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BF400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BF404  7C 08 03 A6 */	mtlr r0
/* 801BF408  38 21 00 10 */	addi r1, r1, 0x10
/* 801BF40C  4E 80 00 20 */	blr 
