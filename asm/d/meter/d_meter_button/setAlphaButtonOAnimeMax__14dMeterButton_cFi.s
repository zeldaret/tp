lbl_802092C0:
/* 802092C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802092C4  7C 08 02 A6 */	mflr r0
/* 802092C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802092CC  39 61 00 20 */	addi r11, r1, 0x20
/* 802092D0  48 15 8F 0D */	bl _savegpr_29
/* 802092D4  7C 7D 1B 78 */	mr r29, r3
/* 802092D8  7C 9E 23 78 */	mr r30, r4
/* 802092DC  54 80 10 3A */	slwi r0, r4, 2
/* 802092E0  7F FD 02 14 */	add r31, r29, r0
/* 802092E4  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 802092E8  48 04 C5 41 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802092EC  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 802092F0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802092F4  41 82 00 5C */	beq lbl_80209350
/* 802092F8  7F A3 EB 78 */	mr r3, r29
/* 802092FC  7F C4 F3 78 */	mr r4, r30
/* 80209300  4B FF DA 71 */	bl isFastSet__14dMeterButton_cFi
/* 80209304  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80209308  41 82 00 20 */	beq lbl_80209328
/* 8020930C  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80209310  C0 22 AD 4C */	lfs f1, lit_4147(r2)
/* 80209314  48 04 C4 BD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80209318  38 00 00 05 */	li r0, 5
/* 8020931C  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80209320  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80209324  48 00 00 2C */	b lbl_80209350
lbl_80209328:
/* 80209328  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 8020932C  C0 22 AD 4C */	lfs f1, lit_4147(r2)
/* 80209330  48 04 C4 A1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80209334  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80209338  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020933C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80209340  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80209344  80 9F 00 78 */	lwz r4, 0x78(r31)
/* 80209348  38 A0 00 05 */	li r5, 5
/* 8020934C  48 01 17 59 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80209350:
/* 80209350  39 61 00 20 */	addi r11, r1, 0x20
/* 80209354  48 15 8E D5 */	bl _restgpr_29
/* 80209358  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020935C  7C 08 03 A6 */	mtlr r0
/* 80209360  38 21 00 20 */	addi r1, r1, 0x20
/* 80209364  4E 80 00 20 */	blr 
