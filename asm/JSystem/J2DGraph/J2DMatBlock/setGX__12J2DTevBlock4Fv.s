lbl_802EEA2C:
/* 802EEA2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802EEA30  7C 08 02 A6 */	mflr r0
/* 802EEA34  90 01 00 34 */	stw r0, 0x34(r1)
/* 802EEA38  39 61 00 30 */	addi r11, r1, 0x30
/* 802EEA3C  48 07 37 9D */	bl _savegpr_28
/* 802EEA40  7C 7F 1B 78 */	mr r31, r3
/* 802EEA44  3B 80 00 00 */	li r28, 0
lbl_802EEA48:
/* 802EEA48  7F E3 FB 78 */	mr r3, r31
/* 802EEA4C  7F 84 E3 78 */	mr r4, r28
/* 802EEA50  7F 85 E3 78 */	mr r5, r28
/* 802EEA54  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EEA58  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802EEA5C  7D 89 03 A6 */	mtctr r12
/* 802EEA60  4E 80 04 21 */	bctrl 
/* 802EEA64  3B 9C 00 01 */	addi r28, r28, 1
/* 802EEA68  2C 1C 00 04 */	cmpwi r28, 4
/* 802EEA6C  41 80 FF DC */	blt lbl_802EEA48
/* 802EEA70  3B A0 00 00 */	li r29, 0
/* 802EEA74  3B 80 00 00 */	li r28, 0
/* 802EEA78  48 00 00 24 */	b lbl_802EEA9C
lbl_802EEA7C:
/* 802EEA7C  7C DF E2 14 */	add r6, r31, r28
/* 802EEA80  7F A3 EB 78 */	mr r3, r29
/* 802EEA84  88 86 00 0E */	lbz r4, 0xe(r6)
/* 802EEA88  88 A6 00 0F */	lbz r5, 0xf(r6)
/* 802EEA8C  88 C6 00 10 */	lbz r6, 0x10(r6)
/* 802EEA90  48 07 0C 65 */	bl GXSetTevOrder
/* 802EEA94  3B BD 00 01 */	addi r29, r29, 1
/* 802EEA98  3B 9C 00 04 */	addi r28, r28, 4
lbl_802EEA9C:
/* 802EEA9C  88 1F 00 3E */	lbz r0, 0x3e(r31)
/* 802EEAA0  7C 1D 00 00 */	cmpw r29, r0
/* 802EEAA4  41 80 FF D8 */	blt lbl_802EEA7C
/* 802EEAA8  3B C0 00 00 */	li r30, 0
/* 802EEAAC  3B 80 00 00 */	li r28, 0
/* 802EEAB0  3B A1 00 0C */	addi r29, r1, 0xc
lbl_802EEAB4:
/* 802EEAB4  38 1C 00 1E */	addi r0, r28, 0x1e
/* 802EEAB8  7C 9F 02 14 */	add r4, r31, r0
/* 802EEABC  80 64 00 00 */	lwz r3, 0(r4)
/* 802EEAC0  80 04 00 04 */	lwz r0, 4(r4)
/* 802EEAC4  90 61 00 0C */	stw r3, 0xc(r1)
/* 802EEAC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802EEACC  2C 1E 00 03 */	cmpwi r30, 3
/* 802EEAD0  38 60 00 00 */	li r3, 0
/* 802EEAD4  41 82 00 08 */	beq lbl_802EEADC
/* 802EEAD8  38 7E 00 01 */	addi r3, r30, 1
lbl_802EEADC:
/* 802EEADC  7F A4 EB 78 */	mr r4, r29
/* 802EEAE0  48 07 08 FD */	bl GXSetTevColorS10
/* 802EEAE4  3B DE 00 01 */	addi r30, r30, 1
/* 802EEAE8  2C 1E 00 04 */	cmpwi r30, 4
/* 802EEAEC  3B 9C 00 08 */	addi r28, r28, 8
/* 802EEAF0  41 80 FF C4 */	blt lbl_802EEAB4
/* 802EEAF4  88 7F 00 3E */	lbz r3, 0x3e(r31)
/* 802EEAF8  48 07 0D 99 */	bl GXSetNumTevStages
/* 802EEAFC  3B C0 00 00 */	li r30, 0
/* 802EEB00  3B 80 00 00 */	li r28, 0
/* 802EEB04  48 00 01 2C */	b lbl_802EEC30
lbl_802EEB08:
/* 802EEB08  7F BF E2 14 */	add r29, r31, r28
/* 802EEB0C  88 1D 00 42 */	lbz r0, 0x42(r29)
/* 802EEB10  88 BD 00 41 */	lbz r5, 0x41(r29)
/* 802EEB14  7F C3 F3 78 */	mr r3, r30
/* 802EEB18  54 A4 E7 3E */	rlwinm r4, r5, 0x1c, 0x1c, 0x1f
/* 802EEB1C  54 A5 07 3E */	clrlwi r5, r5, 0x1c
/* 802EEB20  54 06 E7 3E */	rlwinm r6, r0, 0x1c, 0x1c, 0x1f
/* 802EEB24  54 07 07 3E */	clrlwi r7, r0, 0x1c
/* 802EEB28  48 07 06 FD */	bl GXSetTevColorIn
/* 802EEB2C  88 FD 00 46 */	lbz r7, 0x46(r29)
/* 802EEB30  88 DD 00 45 */	lbz r6, 0x45(r29)
/* 802EEB34  7F C3 F3 78 */	mr r3, r30
/* 802EEB38  54 C0 06 34 */	rlwinm r0, r6, 0, 0x18, 0x1a
/* 802EEB3C  7C 00 2E 70 */	srawi r0, r0, 5
/* 802EEB40  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802EEB44  54 C5 F7 7E */	rlwinm r5, r6, 0x1e, 0x1d, 0x1f
/* 802EEB48  54 E0 CF FE */	rlwinm r0, r7, 0x19, 0x1f, 0x1f
/* 802EEB4C  50 C0 0F 7C */	rlwimi r0, r6, 1, 0x1d, 0x1e
/* 802EEB50  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802EEB54  54 E7 E7 7E */	rlwinm r7, r7, 0x1c, 0x1d, 0x1f
/* 802EEB58  48 07 07 11 */	bl GXSetTevAlphaIn
/* 802EEB5C  88 9D 00 40 */	lbz r4, 0x40(r29)
/* 802EEB60  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 802EEB64  54 80 06 B6 */	rlwinm r0, r4, 0, 0x1a, 0x1b
/* 802EEB68  7C 00 26 70 */	srawi r0, r0, 4
/* 802EEB6C  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802EEB70  54 87 EF FE */	rlwinm r7, r4, 0x1d, 0x1f, 0x1f
/* 802EEB74  54 88 D7 BE */	rlwinm r8, r4, 0x1a, 0x1e, 0x1f
/* 802EEB78  7F C3 F3 78 */	mr r3, r30
/* 802EEB7C  28 05 00 03 */	cmplwi r5, 3
/* 802EEB80  54 89 F7 FE */	rlwinm r9, r4, 0x1e, 0x1f, 0x1f
/* 802EEB84  54 80 EF 7C */	rlwinm r0, r4, 0x1d, 0x1d, 0x1e
/* 802EEB88  7C 89 02 14 */	add r4, r9, r0
/* 802EEB8C  38 04 00 08 */	addi r0, r4, 8
/* 802EEB90  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802EEB94  41 82 00 08 */	beq lbl_802EEB9C
/* 802EEB98  7D 20 4B 78 */	mr r0, r9
lbl_802EEB9C:
/* 802EEB9C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802EEBA0  48 07 07 0D */	bl GXSetTevColorOp
/* 802EEBA4  88 9D 00 44 */	lbz r4, 0x44(r29)
/* 802EEBA8  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 802EEBAC  54 80 06 B6 */	rlwinm r0, r4, 0, 0x1a, 0x1b
/* 802EEBB0  7C 00 26 70 */	srawi r0, r0, 4
/* 802EEBB4  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802EEBB8  54 87 EF FE */	rlwinm r7, r4, 0x1d, 0x1f, 0x1f
/* 802EEBBC  54 88 D7 BE */	rlwinm r8, r4, 0x1a, 0x1e, 0x1f
/* 802EEBC0  7F C3 F3 78 */	mr r3, r30
/* 802EEBC4  28 05 00 03 */	cmplwi r5, 3
/* 802EEBC8  54 89 F7 FE */	rlwinm r9, r4, 0x1e, 0x1f, 0x1f
/* 802EEBCC  54 80 EF 7C */	rlwinm r0, r4, 0x1d, 0x1d, 0x1e
/* 802EEBD0  7C 89 02 14 */	add r4, r9, r0
/* 802EEBD4  38 04 00 08 */	addi r0, r4, 8
/* 802EEBD8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802EEBDC  41 82 00 08 */	beq lbl_802EEBE4
/* 802EEBE0  7D 20 4B 78 */	mr r0, r9
lbl_802EEBE4:
/* 802EEBE4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802EEBE8  48 07 07 2D */	bl GXSetTevAlphaOp
/* 802EEBEC  7F BF F2 14 */	add r29, r31, r30
/* 802EEBF0  88 1D 00 70 */	lbz r0, 0x70(r29)
/* 802EEBF4  28 00 00 FF */	cmplwi r0, 0xff
/* 802EEBF8  38 80 00 00 */	li r4, 0
/* 802EEBFC  41 82 00 08 */	beq lbl_802EEC04
/* 802EEC00  7C 04 03 78 */	mr r4, r0
lbl_802EEC04:
/* 802EEC04  7F C3 F3 78 */	mr r3, r30
/* 802EEC08  48 07 08 9D */	bl GXSetTevKColorSel
/* 802EEC0C  88 1D 00 74 */	lbz r0, 0x74(r29)
/* 802EEC10  28 00 00 FF */	cmplwi r0, 0xff
/* 802EEC14  38 80 00 00 */	li r4, 0
/* 802EEC18  41 82 00 08 */	beq lbl_802EEC20
/* 802EEC1C  7C 04 03 78 */	mr r4, r0
lbl_802EEC20:
/* 802EEC20  7F C3 F3 78 */	mr r3, r30
/* 802EEC24  48 07 08 DD */	bl GXSetTevKAlphaSel
/* 802EEC28  3B DE 00 01 */	addi r30, r30, 1
/* 802EEC2C  3B 9C 00 08 */	addi r28, r28, 8
lbl_802EEC30:
/* 802EEC30  88 1F 00 3E */	lbz r0, 0x3e(r31)
/* 802EEC34  7C 1E 00 00 */	cmpw r30, r0
/* 802EEC38  41 80 FE D0 */	blt lbl_802EEB08
/* 802EEC3C  3B A0 00 00 */	li r29, 0
/* 802EEC40  3B 80 00 00 */	li r28, 0
lbl_802EEC44:
/* 802EEC44  38 1C 00 60 */	addi r0, r28, 0x60
/* 802EEC48  7C 1F 00 2E */	lwzx r0, r31, r0
/* 802EEC4C  90 01 00 08 */	stw r0, 8(r1)
/* 802EEC50  7F A3 EB 78 */	mr r3, r29
/* 802EEC54  38 81 00 08 */	addi r4, r1, 8
/* 802EEC58  48 07 07 E9 */	bl GXSetTevKColor
/* 802EEC5C  3B BD 00 01 */	addi r29, r29, 1
/* 802EEC60  2C 1D 00 04 */	cmpwi r29, 4
/* 802EEC64  3B 9C 00 04 */	addi r28, r28, 4
/* 802EEC68  41 80 FF DC */	blt lbl_802EEC44
/* 802EEC6C  3B A0 00 00 */	li r29, 0
/* 802EEC70  3B 80 00 00 */	li r28, 0
/* 802EEC74  48 00 00 24 */	b lbl_802EEC98
lbl_802EEC78:
/* 802EEC78  38 1C 00 46 */	addi r0, r28, 0x46
/* 802EEC7C  7C 1F 00 AE */	lbzx r0, r31, r0
/* 802EEC80  7F A3 EB 78 */	mr r3, r29
/* 802EEC84  54 04 07 BE */	clrlwi r4, r0, 0x1e
/* 802EEC88  54 05 F7 BE */	rlwinm r5, r0, 0x1e, 0x1e, 0x1f
/* 802EEC8C  48 07 08 D1 */	bl GXSetTevSwapMode
/* 802EEC90  3B BD 00 01 */	addi r29, r29, 1
/* 802EEC94  3B 9C 00 08 */	addi r28, r28, 8
lbl_802EEC98:
/* 802EEC98  88 1F 00 3E */	lbz r0, 0x3e(r31)
/* 802EEC9C  7C 1D 00 00 */	cmpw r29, r0
/* 802EECA0  41 80 FF D8 */	blt lbl_802EEC78
/* 802EECA4  3B 80 00 00 */	li r28, 0
lbl_802EECA8:
/* 802EECA8  38 1C 00 78 */	addi r0, r28, 0x78
/* 802EECAC  7C 1F 00 AE */	lbzx r0, r31, r0
/* 802EECB0  7F 83 E3 78 */	mr r3, r28
/* 802EECB4  54 04 D7 BE */	rlwinm r4, r0, 0x1a, 0x1e, 0x1f
/* 802EECB8  54 05 E7 BE */	rlwinm r5, r0, 0x1c, 0x1e, 0x1f
/* 802EECBC  54 06 F7 BE */	rlwinm r6, r0, 0x1e, 0x1e, 0x1f
/* 802EECC0  54 07 07 BE */	clrlwi r7, r0, 0x1e
/* 802EECC4  48 07 08 E1 */	bl GXSetTevSwapModeTable
/* 802EECC8  3B 9C 00 01 */	addi r28, r28, 1
/* 802EECCC  2C 1C 00 04 */	cmpwi r28, 4
/* 802EECD0  41 80 FF D8 */	blt lbl_802EECA8
/* 802EECD4  3B 80 00 00 */	li r28, 0
/* 802EECD8  48 00 00 1C */	b lbl_802EECF4
lbl_802EECDC:
/* 802EECDC  57 83 15 BA */	rlwinm r3, r28, 2, 0x16, 0x1d
/* 802EECE0  38 63 00 7C */	addi r3, r3, 0x7c
/* 802EECE4  7C 7F 1A 14 */	add r3, r31, r3
/* 802EECE8  7F 84 E3 78 */	mr r4, r28
/* 802EECEC  4B FF B3 59 */	bl load__14J2DIndTevStageFUc
/* 802EECF0  3B 9C 00 01 */	addi r28, r28, 1
lbl_802EECF4:
/* 802EECF4  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 802EECF8  88 1F 00 3E */	lbz r0, 0x3e(r31)
/* 802EECFC  7C 03 00 40 */	cmplw r3, r0
/* 802EED00  41 80 FF DC */	blt lbl_802EECDC
/* 802EED04  39 61 00 30 */	addi r11, r1, 0x30
/* 802EED08  48 07 35 1D */	bl _restgpr_28
/* 802EED0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802EED10  7C 08 03 A6 */	mtlr r0
/* 802EED14  38 21 00 30 */	addi r1, r1, 0x30
/* 802EED18  4E 80 00 20 */	blr 
