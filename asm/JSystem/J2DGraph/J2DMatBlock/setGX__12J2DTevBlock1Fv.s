lbl_802EC328:
/* 802EC328  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802EC32C  7C 08 02 A6 */	mflr r0
/* 802EC330  90 01 00 34 */	stw r0, 0x34(r1)
/* 802EC334  39 61 00 30 */	addi r11, r1, 0x30
/* 802EC338  48 07 5E A1 */	bl _savegpr_28
/* 802EC33C  7C 7F 1B 78 */	mr r31, r3
/* 802EC340  38 80 00 00 */	li r4, 0
/* 802EC344  38 A0 00 00 */	li r5, 0
/* 802EC348  81 83 00 00 */	lwz r12, 0(r3)
/* 802EC34C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802EC350  7D 89 03 A6 */	mtctr r12
/* 802EC354  4E 80 04 21 */	bctrl 
/* 802EC358  38 60 00 00 */	li r3, 0
/* 802EC35C  88 9F 00 08 */	lbz r4, 8(r31)
/* 802EC360  88 BF 00 09 */	lbz r5, 9(r31)
/* 802EC364  88 DF 00 0A */	lbz r6, 0xa(r31)
/* 802EC368  48 07 33 8D */	bl GXSetTevOrder
/* 802EC36C  3B 80 00 00 */	li r28, 0
/* 802EC370  3B C0 00 00 */	li r30, 0
/* 802EC374  3B A1 00 0C */	addi r29, r1, 0xc
lbl_802EC378:
/* 802EC378  38 1E 00 0C */	addi r0, r30, 0xc
/* 802EC37C  7C 9F 02 14 */	add r4, r31, r0
/* 802EC380  80 64 00 00 */	lwz r3, 0(r4)
/* 802EC384  80 04 00 04 */	lwz r0, 4(r4)
/* 802EC388  90 61 00 0C */	stw r3, 0xc(r1)
/* 802EC38C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802EC390  2C 1C 00 03 */	cmpwi r28, 3
/* 802EC394  38 60 00 00 */	li r3, 0
/* 802EC398  41 82 00 08 */	beq lbl_802EC3A0
/* 802EC39C  38 7C 00 01 */	addi r3, r28, 1
lbl_802EC3A0:
/* 802EC3A0  7F A4 EB 78 */	mr r4, r29
/* 802EC3A4  48 07 30 39 */	bl GXSetTevColorS10
/* 802EC3A8  3B 9C 00 01 */	addi r28, r28, 1
/* 802EC3AC  2C 1C 00 04 */	cmpwi r28, 4
/* 802EC3B0  3B DE 00 08 */	addi r30, r30, 8
/* 802EC3B4  41 80 FF C4 */	blt lbl_802EC378
/* 802EC3B8  38 60 00 01 */	li r3, 1
/* 802EC3BC  48 07 34 D5 */	bl GXSetNumTevStages
/* 802EC3C0  88 1F 00 2F */	lbz r0, 0x2f(r31)
/* 802EC3C4  88 BF 00 2E */	lbz r5, 0x2e(r31)
/* 802EC3C8  38 60 00 00 */	li r3, 0
/* 802EC3CC  54 A4 E7 3E */	rlwinm r4, r5, 0x1c, 0x1c, 0x1f
/* 802EC3D0  54 A5 07 3E */	clrlwi r5, r5, 0x1c
/* 802EC3D4  54 06 E7 3E */	rlwinm r6, r0, 0x1c, 0x1c, 0x1f
/* 802EC3D8  54 07 07 3E */	clrlwi r7, r0, 0x1c
/* 802EC3DC  48 07 2E 49 */	bl GXSetTevColorIn
/* 802EC3E0  88 FF 00 33 */	lbz r7, 0x33(r31)
/* 802EC3E4  88 DF 00 32 */	lbz r6, 0x32(r31)
/* 802EC3E8  38 60 00 00 */	li r3, 0
/* 802EC3EC  54 C0 06 34 */	rlwinm r0, r6, 0, 0x18, 0x1a
/* 802EC3F0  7C 00 2E 70 */	srawi r0, r0, 5
/* 802EC3F4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802EC3F8  54 C5 F7 7E */	rlwinm r5, r6, 0x1e, 0x1d, 0x1f
/* 802EC3FC  54 E0 CF FE */	rlwinm r0, r7, 0x19, 0x1f, 0x1f
/* 802EC400  50 C0 0F 7C */	rlwimi r0, r6, 1, 0x1d, 0x1e
/* 802EC404  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802EC408  54 E7 E7 7E */	rlwinm r7, r7, 0x1c, 0x1d, 0x1f
/* 802EC40C  48 07 2E 5D */	bl GXSetTevAlphaIn
/* 802EC410  88 9F 00 2D */	lbz r4, 0x2d(r31)
/* 802EC414  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 802EC418  54 80 06 B6 */	rlwinm r0, r4, 0, 0x1a, 0x1b
/* 802EC41C  7C 00 26 70 */	srawi r0, r0, 4
/* 802EC420  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802EC424  54 87 EF FE */	rlwinm r7, r4, 0x1d, 0x1f, 0x1f
/* 802EC428  54 88 D7 BE */	rlwinm r8, r4, 0x1a, 0x1e, 0x1f
/* 802EC42C  38 60 00 00 */	li r3, 0
/* 802EC430  28 05 00 03 */	cmplwi r5, 3
/* 802EC434  54 89 F7 FE */	rlwinm r9, r4, 0x1e, 0x1f, 0x1f
/* 802EC438  54 80 EF 7C */	rlwinm r0, r4, 0x1d, 0x1d, 0x1e
/* 802EC43C  7C 89 02 14 */	add r4, r9, r0
/* 802EC440  38 04 00 08 */	addi r0, r4, 8
/* 802EC444  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802EC448  41 82 00 08 */	beq lbl_802EC450
/* 802EC44C  7D 20 4B 78 */	mr r0, r9
lbl_802EC450:
/* 802EC450  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802EC454  48 07 2E 59 */	bl GXSetTevColorOp
/* 802EC458  88 9F 00 31 */	lbz r4, 0x31(r31)
/* 802EC45C  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 802EC460  54 80 06 B6 */	rlwinm r0, r4, 0, 0x1a, 0x1b
/* 802EC464  7C 00 26 70 */	srawi r0, r0, 4
/* 802EC468  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802EC46C  54 87 EF FE */	rlwinm r7, r4, 0x1d, 0x1f, 0x1f
/* 802EC470  54 88 D7 BE */	rlwinm r8, r4, 0x1a, 0x1e, 0x1f
/* 802EC474  38 60 00 00 */	li r3, 0
/* 802EC478  28 05 00 03 */	cmplwi r5, 3
/* 802EC47C  54 89 F7 FE */	rlwinm r9, r4, 0x1e, 0x1f, 0x1f
/* 802EC480  54 80 EF 7C */	rlwinm r0, r4, 0x1d, 0x1d, 0x1e
/* 802EC484  7C 89 02 14 */	add r4, r9, r0
/* 802EC488  38 04 00 08 */	addi r0, r4, 8
/* 802EC48C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802EC490  41 82 00 08 */	beq lbl_802EC498
/* 802EC494  7D 20 4B 78 */	mr r0, r9
lbl_802EC498:
/* 802EC498  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802EC49C  48 07 2E 79 */	bl GXSetTevAlphaOp
/* 802EC4A0  88 1F 00 44 */	lbz r0, 0x44(r31)
/* 802EC4A4  28 00 00 FF */	cmplwi r0, 0xff
/* 802EC4A8  38 80 00 00 */	li r4, 0
/* 802EC4AC  41 82 00 08 */	beq lbl_802EC4B4
/* 802EC4B0  7C 04 03 78 */	mr r4, r0
lbl_802EC4B4:
/* 802EC4B4  38 60 00 00 */	li r3, 0
/* 802EC4B8  48 07 2F ED */	bl GXSetTevKColorSel
/* 802EC4BC  88 1F 00 45 */	lbz r0, 0x45(r31)
/* 802EC4C0  28 00 00 FF */	cmplwi r0, 0xff
/* 802EC4C4  38 80 00 00 */	li r4, 0
/* 802EC4C8  41 82 00 08 */	beq lbl_802EC4D0
/* 802EC4CC  7C 04 03 78 */	mr r4, r0
lbl_802EC4D0:
/* 802EC4D0  38 60 00 00 */	li r3, 0
/* 802EC4D4  48 07 30 2D */	bl GXSetTevKAlphaSel
/* 802EC4D8  3B 80 00 00 */	li r28, 0
/* 802EC4DC  3B C0 00 00 */	li r30, 0
lbl_802EC4E0:
/* 802EC4E0  38 1E 00 34 */	addi r0, r30, 0x34
/* 802EC4E4  7C 1F 00 2E */	lwzx r0, r31, r0
/* 802EC4E8  90 01 00 08 */	stw r0, 8(r1)
/* 802EC4EC  7F 83 E3 78 */	mr r3, r28
/* 802EC4F0  38 81 00 08 */	addi r4, r1, 8
/* 802EC4F4  48 07 2F 4D */	bl GXSetTevKColor
/* 802EC4F8  3B 9C 00 01 */	addi r28, r28, 1
/* 802EC4FC  2C 1C 00 04 */	cmpwi r28, 4
/* 802EC500  3B DE 00 04 */	addi r30, r30, 4
/* 802EC504  41 80 FF DC */	blt lbl_802EC4E0
/* 802EC508  88 1F 00 33 */	lbz r0, 0x33(r31)
/* 802EC50C  38 60 00 00 */	li r3, 0
/* 802EC510  54 04 07 BE */	clrlwi r4, r0, 0x1e
/* 802EC514  54 05 F7 BE */	rlwinm r5, r0, 0x1e, 0x1e, 0x1f
/* 802EC518  48 07 30 45 */	bl GXSetTevSwapMode
/* 802EC51C  3B 80 00 00 */	li r28, 0
lbl_802EC520:
/* 802EC520  38 1C 00 46 */	addi r0, r28, 0x46
/* 802EC524  7C 1F 00 AE */	lbzx r0, r31, r0
/* 802EC528  7F 83 E3 78 */	mr r3, r28
/* 802EC52C  54 04 D7 BE */	rlwinm r4, r0, 0x1a, 0x1e, 0x1f
/* 802EC530  54 05 E7 BE */	rlwinm r5, r0, 0x1c, 0x1e, 0x1f
/* 802EC534  54 06 F7 BE */	rlwinm r6, r0, 0x1e, 0x1e, 0x1f
/* 802EC538  54 07 07 BE */	clrlwi r7, r0, 0x1e
/* 802EC53C  48 07 30 69 */	bl GXSetTevSwapModeTable
/* 802EC540  3B 9C 00 01 */	addi r28, r28, 1
/* 802EC544  2C 1C 00 04 */	cmpwi r28, 4
/* 802EC548  41 80 FF D8 */	blt lbl_802EC520
/* 802EC54C  38 7F 00 4C */	addi r3, r31, 0x4c
/* 802EC550  38 80 00 00 */	li r4, 0
/* 802EC554  4B FF DA F1 */	bl load__14J2DIndTevStageFUc
/* 802EC558  39 61 00 30 */	addi r11, r1, 0x30
/* 802EC55C  48 07 5C C9 */	bl _restgpr_28
/* 802EC560  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802EC564  7C 08 03 A6 */	mtlr r0
/* 802EC568  38 21 00 30 */	addi r1, r1, 0x30
/* 802EC56C  4E 80 00 20 */	blr 
