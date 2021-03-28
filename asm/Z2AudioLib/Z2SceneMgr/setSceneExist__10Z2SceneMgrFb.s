lbl_802B68E0:
/* 802B68E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B68E4  7C 08 02 A6 */	mflr r0
/* 802B68E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B68EC  98 83 00 1D */	stb r4, 0x1d(r3)
/* 802B68F0  38 00 00 00 */	li r0, 0
/* 802B68F4  90 03 00 08 */	stw r0, 8(r3)
/* 802B68F8  80 AD 85 E0 */	lwz r5, data_80450B60(r13)
/* 802B68FC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802B6900  41 82 00 5C */	beq lbl_802B695C
/* 802B6904  38 00 00 01 */	li r0, 1
/* 802B6908  98 03 00 1C */	stb r0, 0x1c(r3)
/* 802B690C  88 03 00 15 */	lbz r0, 0x15(r3)
/* 802B6910  28 00 00 85 */	cmplwi r0, 0x85
/* 802B6914  40 82 00 18 */	bne lbl_802B692C
/* 802B6918  38 65 03 EC */	addi r3, r5, 0x3ec
/* 802B691C  C0 22 C0 38 */	lfs f1, lit_3511(r2)
/* 802B6920  38 80 00 00 */	li r4, 0
/* 802B6924  4B FE C4 91 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802B6928  48 00 00 44 */	b lbl_802B696C
lbl_802B692C:
/* 802B692C  28 00 00 7F */	cmplwi r0, 0x7f
/* 802B6930  40 82 00 18 */	bne lbl_802B6948
/* 802B6934  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802B6938  C0 22 C0 38 */	lfs f1, lit_3511(r2)
/* 802B693C  38 80 00 00 */	li r4, 0
/* 802B6940  4B FF 70 B5 */	bl seMoveVolumeAll__7Z2SeMgrFfUl
/* 802B6944  48 00 00 28 */	b lbl_802B696C
lbl_802B6948:
/* 802B6948  38 65 03 EC */	addi r3, r5, 0x3ec
/* 802B694C  C0 22 C0 3C */	lfs f1, lit_3512(r2)
/* 802B6950  38 80 00 21 */	li r4, 0x21
/* 802B6954  4B FE C4 61 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802B6958  48 00 00 14 */	b lbl_802B696C
lbl_802B695C:
/* 802B695C  38 65 03 EC */	addi r3, r5, 0x3ec
/* 802B6960  C0 22 C0 38 */	lfs f1, lit_3511(r2)
/* 802B6964  38 80 00 B4 */	li r4, 0xb4
/* 802B6968  4B FE C4 4D */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802B696C:
/* 802B696C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B6970  7C 08 03 A6 */	mtlr r0
/* 802B6974  38 21 00 10 */	addi r1, r1, 0x10
/* 802B6978  4E 80 00 20 */	blr 
