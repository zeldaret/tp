lbl_802DDD98:
/* 802DDD98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DDD9C  7C 08 02 A6 */	mflr r0
/* 802DDDA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DDDA4  39 61 00 30 */	addi r11, r1, 0x30
/* 802DDDA8  48 08 44 2D */	bl _savegpr_27
/* 802DDDAC  7C 7D 1B 78 */	mr r29, r3
/* 802DDDB0  7C 9E 23 78 */	mr r30, r4
/* 802DDDB4  7C BF 2B 78 */	mr r31, r5
/* 802DDDB8  38 60 00 00 */	li r3, 0
/* 802DDDBC  80 DD 00 9C */	lwz r6, 0x9c(r29)
/* 802DDDC0  48 00 00 34 */	b lbl_802DDDF4
lbl_802DDDC4:
/* 802DDDC4  A0 A6 00 08 */	lhz r5, 8(r6)
/* 802DDDC8  80 9E 00 00 */	lwz r4, 0(r30)
/* 802DDDCC  7C 05 20 00 */	cmpw r5, r4
/* 802DDDD0  41 81 00 20 */	bgt lbl_802DDDF0
/* 802DDDD4  A0 06 00 0A */	lhz r0, 0xa(r6)
/* 802DDDD8  7C 04 00 00 */	cmpw r4, r0
/* 802DDDDC  41 81 00 14 */	bgt lbl_802DDDF0
/* 802DDDE0  7C C3 33 78 */	mr r3, r6
/* 802DDDE4  7C 05 20 50 */	subf r0, r5, r4
/* 802DDDE8  90 1E 00 00 */	stw r0, 0(r30)
/* 802DDDEC  48 00 00 10 */	b lbl_802DDDFC
lbl_802DDDF0:
/* 802DDDF0  80 C6 00 04 */	lwz r6, 4(r6)
lbl_802DDDF4:
/* 802DDDF4  28 06 00 00 */	cmplwi r6, 0
/* 802DDDF8  40 82 FF CC */	bne lbl_802DDDC4
lbl_802DDDFC:
/* 802DDDFC  28 03 00 00 */	cmplwi r3, 0
/* 802DDE00  40 82 00 B8 */	bne lbl_802DDEB8
/* 802DDE04  3B 80 00 00 */	li r28, 0
/* 802DDE08  38 60 00 00 */	li r3, 0
/* 802DDE0C  A0 1D 00 62 */	lhz r0, 0x62(r29)
/* 802DDE10  7C 09 03 A6 */	mtctr r0
/* 802DDE14  2C 00 00 00 */	cmpwi r0, 0
/* 802DDE18  40 81 00 40 */	ble lbl_802DDE58
lbl_802DDE1C:
/* 802DDE1C  80 9D 00 58 */	lwz r4, 0x58(r29)
/* 802DDE20  7C 84 18 2E */	lwzx r4, r4, r3
/* 802DDE24  A0 C4 00 08 */	lhz r6, 8(r4)
/* 802DDE28  80 BE 00 00 */	lwz r5, 0(r30)
/* 802DDE2C  7C 06 28 00 */	cmpw r6, r5
/* 802DDE30  41 81 00 1C */	bgt lbl_802DDE4C
/* 802DDE34  A0 04 00 0A */	lhz r0, 0xa(r4)
/* 802DDE38  7C 05 00 00 */	cmpw r5, r0
/* 802DDE3C  41 81 00 10 */	bgt lbl_802DDE4C
/* 802DDE40  7C 06 28 50 */	subf r0, r6, r5
/* 802DDE44  90 1E 00 00 */	stw r0, 0(r30)
/* 802DDE48  48 00 00 10 */	b lbl_802DDE58
lbl_802DDE4C:
/* 802DDE4C  3B 9C 00 01 */	addi r28, r28, 1
/* 802DDE50  38 63 00 04 */	addi r3, r3, 4
/* 802DDE54  42 00 FF C8 */	bdnz lbl_802DDE1C
lbl_802DDE58:
/* 802DDE58  A0 1D 00 62 */	lhz r0, 0x62(r29)
/* 802DDE5C  7C 1C 00 00 */	cmpw r28, r0
/* 802DDE60  40 80 00 50 */	bge lbl_802DDEB0
/* 802DDE64  7F A3 EB 78 */	mr r3, r29
/* 802DDE68  4B FF FC A5 */	bl determineBlankPage__12JUTCacheFontFv
/* 802DDE6C  7C 7B 1B 79 */	or. r27, r3, r3
/* 802DDE70  40 82 00 0C */	bne lbl_802DDE7C
/* 802DDE74  38 60 00 00 */	li r3, 0
/* 802DDE78  48 00 00 50 */	b lbl_802DDEC8
lbl_802DDE7C:
/* 802DDE7C  7F A3 EB 78 */	mr r3, r29
/* 802DDE80  80 9D 00 58 */	lwz r4, 0x58(r29)
/* 802DDE84  57 80 10 3A */	slwi r0, r28, 2
/* 802DDE88  7C 84 00 2E */	lwzx r4, r4, r0
/* 802DDE8C  7F 65 DB 78 */	mr r5, r27
/* 802DDE90  7F C6 F3 78 */	mr r6, r30
/* 802DDE94  38 E1 00 08 */	addi r7, r1, 8
/* 802DDE98  4B FF FD 25 */	bl getGlyphFromAram__12JUTCacheFontFPQ212JUTCacheFont15TGlyphCacheInfoPQ212JUTCacheFont10TCachePagePiPi
/* 802DDE9C  80 01 00 08 */	lwz r0, 8(r1)
/* 802DDEA0  90 1D 00 44 */	stw r0, 0x44(r29)
/* 802DDEA4  B3 9D 00 66 */	sth r28, 0x66(r29)
/* 802DDEA8  7F 63 DB 78 */	mr r3, r27
/* 802DDEAC  48 00 00 0C */	b lbl_802DDEB8
lbl_802DDEB0:
/* 802DDEB0  38 60 00 00 */	li r3, 0
/* 802DDEB4  48 00 00 14 */	b lbl_802DDEC8
lbl_802DDEB8:
/* 802DDEB8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802DDEBC  41 82 00 0C */	beq lbl_802DDEC8
/* 802DDEC0  38 00 00 01 */	li r0, 1
/* 802DDEC4  B0 03 00 1E */	sth r0, 0x1e(r3)
lbl_802DDEC8:
/* 802DDEC8  39 61 00 30 */	addi r11, r1, 0x30
/* 802DDECC  48 08 43 55 */	bl _restgpr_27
/* 802DDED0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DDED4  7C 08 03 A6 */	mtlr r0
/* 802DDED8  38 21 00 30 */	addi r1, r1, 0x30
/* 802DDEDC  4E 80 00 20 */	blr 
