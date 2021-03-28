lbl_8097B194:
/* 8097B194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8097B198  7C 08 02 A6 */	mflr r0
/* 8097B19C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8097B1A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8097B1A4  4B 9E 70 34 */	b _savegpr_28
/* 8097B1A8  7C 7E 1B 78 */	mr r30, r3
/* 8097B1AC  7C 9F 23 78 */	mr r31, r4
/* 8097B1B0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8097B1B4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8097B1B8  80 84 00 B0 */	lwz r4, 0xb0(r4)
/* 8097B1BC  54 80 06 BE */	clrlwi r0, r4, 0x1a
/* 8097B1C0  7C 03 00 00 */	cmpw r3, r0
/* 8097B1C4  40 82 00 A8 */	bne lbl_8097B26C
/* 8097B1C8  54 85 A6 3E */	rlwinm r5, r4, 0x14, 0x18, 0x1f
/* 8097B1CC  38 80 00 0A */	li r4, 0xa
/* 8097B1D0  7C 05 23 D6 */	divw r0, r5, r4
/* 8097B1D4  1C 60 00 3C */	mulli r3, r0, 0x3c
/* 8097B1D8  7C 00 21 D6 */	mullw r0, r0, r4
/* 8097B1DC  7C 00 28 50 */	subf r0, r0, r5
/* 8097B1E0  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8097B1E4  7C 03 02 14 */	add r0, r3, r0
/* 8097B1E8  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 8097B1EC  88 1E 0A C6 */	lbz r0, 0xac6(r30)
/* 8097B1F0  28 00 00 00 */	cmplwi r0, 0
/* 8097B1F4  41 82 00 10 */	beq lbl_8097B204
/* 8097B1F8  4B 82 49 38 */	b dKy_getDarktime_minute__Fv
/* 8097B1FC  7C 7D 1B 78 */	mr r29, r3
/* 8097B200  48 00 00 0C */	b lbl_8097B20C
lbl_8097B204:
/* 8097B204  4B 82 48 38 */	b dKy_getdaytime_minute__Fv
/* 8097B208  7C 7D 1B 78 */	mr r29, r3
lbl_8097B20C:
/* 8097B20C  88 1E 0A C6 */	lbz r0, 0xac6(r30)
/* 8097B210  28 00 00 00 */	cmplwi r0, 0
/* 8097B214  41 82 00 0C */	beq lbl_8097B220
/* 8097B218  4B 82 48 DC */	b dKy_getDarktime_hour__Fv
/* 8097B21C  48 00 00 08 */	b lbl_8097B224
lbl_8097B220:
/* 8097B220  4B 82 47 F0 */	b dKy_getdaytime_hour__Fv
lbl_8097B224:
/* 8097B224  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 8097B228  7C 7D 02 14 */	add r3, r29, r0
/* 8097B22C  80 9E 0B 84 */	lwz r4, 0xb84(r30)
/* 8097B230  28 04 00 00 */	cmplwi r4, 0
/* 8097B234  40 82 00 0C */	bne lbl_8097B240
/* 8097B238  93 FE 0B 84 */	stw r31, 0xb84(r30)
/* 8097B23C  48 00 00 30 */	b lbl_8097B26C
lbl_8097B240:
/* 8097B240  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 8097B244  54 00 A6 3E */	rlwinm r0, r0, 0x14, 0x18, 0x1f
/* 8097B248  7C 1C 18 00 */	cmpw r28, r3
/* 8097B24C  40 81 00 14 */	ble lbl_8097B260
/* 8097B250  7C 1C 00 00 */	cmpw r28, r0
/* 8097B254  40 80 00 18 */	bge lbl_8097B26C
/* 8097B258  93 FE 0B 84 */	stw r31, 0xb84(r30)
/* 8097B25C  48 00 00 10 */	b lbl_8097B26C
lbl_8097B260:
/* 8097B260  7C 1C 00 00 */	cmpw r28, r0
/* 8097B264  40 81 00 08 */	ble lbl_8097B26C
/* 8097B268  93 FE 0B 84 */	stw r31, 0xb84(r30)
lbl_8097B26C:
/* 8097B26C  38 60 00 00 */	li r3, 0
/* 8097B270  39 61 00 20 */	addi r11, r1, 0x20
/* 8097B274  4B 9E 6F B0 */	b _restgpr_28
/* 8097B278  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8097B27C  7C 08 03 A6 */	mtlr r0
/* 8097B280  38 21 00 20 */	addi r1, r1, 0x20
/* 8097B284  4E 80 00 20 */	blr 
