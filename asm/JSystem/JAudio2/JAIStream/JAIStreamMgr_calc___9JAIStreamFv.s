lbl_802A388C:
/* 802A388C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A3890  7C 08 02 A6 */	mflr r0
/* 802A3894  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A3898  39 61 00 20 */	addi r11, r1, 0x20
/* 802A389C  48 0B E9 41 */	bl _savegpr_29
/* 802A38A0  7C 7D 1B 78 */	mr r29, r3
/* 802A38A4  88 03 02 C6 */	lbz r0, 0x2c6(r3)
/* 802A38A8  28 00 00 00 */	cmplwi r0, 0
/* 802A38AC  41 82 00 28 */	beq lbl_802A38D4
/* 802A38B0  38 60 00 00 */	li r3, 0
/* 802A38B4  90 7D 02 90 */	stw r3, 0x290(r29)
/* 802A38B8  88 1D 00 1F */	lbz r0, 0x1f(r29)
/* 802A38BC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802A38C0  98 1D 00 1F */	stb r0, 0x1f(r29)
/* 802A38C4  38 60 00 01 */	li r3, 1
/* 802A38C8  88 1D 00 1F */	lbz r0, 0x1f(r29)
/* 802A38CC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802A38D0  98 1D 00 1F */	stb r0, 0x1f(r29)
lbl_802A38D4:
/* 802A38D4  7F A3 EB 78 */	mr r3, r29
/* 802A38D8  4B FF ED E1 */	bl calc_JAISound___8JAISoundFv
/* 802A38DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A38E0  41 82 00 50 */	beq lbl_802A3930
/* 802A38E4  3B C0 00 00 */	li r30, 0
/* 802A38E8  3B E0 00 00 */	li r31, 0
lbl_802A38EC:
/* 802A38EC  38 1F 02 A0 */	addi r0, r31, 0x2a0
/* 802A38F0  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802A38F4  28 03 00 00 */	cmplwi r3, 0
/* 802A38F8  41 82 00 08 */	beq lbl_802A3900
/* 802A38FC  4B FF F2 81 */	bl calc__13JAISoundChildFv
lbl_802A3900:
/* 802A3900  3B DE 00 01 */	addi r30, r30, 1
/* 802A3904  2C 1E 00 06 */	cmpwi r30, 6
/* 802A3908  3B FF 00 04 */	addi r31, r31, 4
/* 802A390C  41 80 FF E0 */	blt lbl_802A38EC
/* 802A3910  80 7D 02 BC */	lwz r3, 0x2bc(r29)
/* 802A3914  28 03 00 00 */	cmplwi r3, 0
/* 802A3918  41 82 00 18 */	beq lbl_802A3930
/* 802A391C  7F A4 EB 78 */	mr r4, r29
/* 802A3920  81 83 00 00 */	lwz r12, 0(r3)
/* 802A3924  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A3928  7D 89 03 A6 */	mtctr r12
/* 802A392C  4E 80 04 21 */	bctrl 
lbl_802A3930:
/* 802A3930  39 61 00 20 */	addi r11, r1, 0x20
/* 802A3934  48 0B E8 F5 */	bl _restgpr_29
/* 802A3938  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A393C  7C 08 03 A6 */	mtlr r0
/* 802A3940  38 21 00 20 */	addi r1, r1, 0x20
/* 802A3944  4E 80 00 20 */	blr 
