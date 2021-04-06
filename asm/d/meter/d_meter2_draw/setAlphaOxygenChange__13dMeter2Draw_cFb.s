lbl_802158F0:
/* 802158F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802158F4  7C 08 02 A6 */	mflr r0
/* 802158F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802158FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80215900  48 14 C8 D5 */	bl _savegpr_27
/* 80215904  7C 7B 1B 78 */	mr r27, r3
/* 80215908  7C 9C 23 78 */	mr r28, r4
/* 8021590C  3B E0 00 00 */	li r31, 0
/* 80215910  3B C0 00 00 */	li r30, 0
/* 80215914  3B A0 00 00 */	li r29, 0
/* 80215918  80 63 01 CC */	lwz r3, 0x1cc(r3)
/* 8021591C  48 03 FF 0D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80215920  C0 1B 07 BC */	lfs f0, 0x7bc(r27)
/* 80215924  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80215928  40 82 00 0C */	bne lbl_80215934
/* 8021592C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80215930  41 82 00 14 */	beq lbl_80215944
lbl_80215934:
/* 80215934  80 7B 01 CC */	lwz r3, 0x1cc(r27)
/* 80215938  48 03 FE F1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8021593C  D0 3B 07 BC */	stfs f1, 0x7bc(r27)
/* 80215940  3B E0 00 01 */	li r31, 1
lbl_80215944:
/* 80215944  C0 1B 07 C0 */	lfs f0, 0x7c0(r27)
/* 80215948  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021594C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80215950  C0 23 00 6C */	lfs f1, 0x6c(r3)
/* 80215954  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80215958  40 82 00 0C */	bne lbl_80215964
/* 8021595C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80215960  41 82 00 0C */	beq lbl_8021596C
lbl_80215964:
/* 80215964  D0 3B 07 C0 */	stfs f1, 0x7c0(r27)
/* 80215968  3B C0 00 01 */	li r30, 1
lbl_8021596C:
/* 8021596C  C0 1B 07 C4 */	lfs f0, 0x7c4(r27)
/* 80215970  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80215974  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80215978  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 8021597C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80215980  40 82 00 0C */	bne lbl_8021598C
/* 80215984  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80215988  41 82 00 0C */	beq lbl_80215994
lbl_8021598C:
/* 8021598C  D0 3B 07 C4 */	stfs f1, 0x7c4(r27)
/* 80215990  3B A0 00 01 */	li r29, 1
lbl_80215994:
/* 80215994  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80215998  40 82 00 14 */	bne lbl_802159AC
/* 8021599C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802159A0  40 82 00 0C */	bne lbl_802159AC
/* 802159A4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 802159A8  41 82 00 18 */	beq lbl_802159C0
lbl_802159AC:
/* 802159AC  80 7B 01 D8 */	lwz r3, 0x1d8(r27)
/* 802159B0  C0 3B 07 C0 */	lfs f1, 0x7c0(r27)
/* 802159B4  C0 1B 07 BC */	lfs f0, 0x7bc(r27)
/* 802159B8  EC 21 00 32 */	fmuls f1, f1, f0
/* 802159BC  48 03 FE 15 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_802159C0:
/* 802159C0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802159C4  40 82 00 14 */	bne lbl_802159D8
/* 802159C8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802159CC  40 82 00 0C */	bne lbl_802159D8
/* 802159D0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 802159D4  41 82 00 2C */	beq lbl_80215A00
lbl_802159D8:
/* 802159D8  80 7B 01 D4 */	lwz r3, 0x1d4(r27)
/* 802159DC  C0 3B 07 C4 */	lfs f1, 0x7c4(r27)
/* 802159E0  C0 1B 07 BC */	lfs f0, 0x7bc(r27)
/* 802159E4  EC 21 00 32 */	fmuls f1, f1, f0
/* 802159E8  48 03 FD E9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802159EC  80 7B 01 DC */	lwz r3, 0x1dc(r27)
/* 802159F0  C0 3B 07 C4 */	lfs f1, 0x7c4(r27)
/* 802159F4  C0 1B 07 BC */	lfs f0, 0x7bc(r27)
/* 802159F8  EC 21 00 32 */	fmuls f1, f1, f0
/* 802159FC  48 03 FD D5 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80215A00:
/* 80215A00  39 61 00 20 */	addi r11, r1, 0x20
/* 80215A04  48 14 C8 1D */	bl _restgpr_27
/* 80215A08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80215A0C  7C 08 03 A6 */	mtlr r0
/* 80215A10  38 21 00 20 */	addi r1, r1, 0x20
/* 80215A14  4E 80 00 20 */	blr 
