lbl_802DDBBC:
/* 802DDBBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DDBC0  7C 08 02 A6 */	mflr r0
/* 802DDBC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DDBC8  39 61 00 20 */	addi r11, r1, 0x20
/* 802DDBCC  48 08 46 09 */	bl _savegpr_27
/* 802DDBD0  7C 7B 1B 78 */	mr r27, r3
/* 802DDBD4  7C 9C 23 78 */	mr r28, r4
/* 802DDBD8  7C BF 2B 78 */	mr r31, r5
/* 802DDBDC  7C DD 33 78 */	mr r29, r6
/* 802DDBE0  7C FE 3B 78 */	mr r30, r7
/* 802DDBE4  7F E3 FB 78 */	mr r3, r31
/* 802DDBE8  38 A0 00 20 */	li r5, 0x20
/* 802DDBEC  4B D2 59 55 */	bl memcpy
/* 802DDBF0  7F 63 DB 78 */	mr r3, r27
/* 802DDBF4  7F E4 FB 78 */	mr r4, r31
/* 802DDBF8  48 00 03 B5 */	bl prepend__12JUTCacheFontFPQ212JUTCacheFont15TGlyphCacheInfo
/* 802DDBFC  A0 7F 00 16 */	lhz r3, 0x16(r31)
/* 802DDC00  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 802DDC04  7C A3 01 D6 */	mullw r5, r3, r0
/* 802DDC08  80 1D 00 00 */	lwz r0, 0(r29)
/* 802DDC0C  7C C0 2B D6 */	divw r6, r0, r5
/* 802DDC10  A0 1F 00 08 */	lhz r0, 8(r31)
/* 802DDC14  7C 86 29 D6 */	mullw r4, r6, r5
/* 802DDC18  7C 00 22 14 */	add r0, r0, r4
/* 802DDC1C  B0 1F 00 08 */	sth r0, 8(r31)
/* 802DDC20  A0 7F 00 08 */	lhz r3, 8(r31)
/* 802DDC24  38 05 FF FF */	addi r0, r5, -1
/* 802DDC28  7C 03 02 14 */	add r0, r3, r0
/* 802DDC2C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 802DDC30  A0 7F 00 0A */	lhz r3, 0xa(r31)
/* 802DDC34  7C 03 00 40 */	cmplw r3, r0
/* 802DDC38  40 80 00 08 */	bge lbl_802DDC40
/* 802DDC3C  7C 60 1B 78 */	mr r0, r3
lbl_802DDC40:
/* 802DDC40  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 802DDC44  90 DE 00 00 */	stw r6, 0(r30)
/* 802DDC48  80 1D 00 00 */	lwz r0, 0(r29)
/* 802DDC4C  7C 04 00 50 */	subf r0, r4, r0
/* 802DDC50  90 1D 00 00 */	stw r0, 0(r29)
/* 802DDC54  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 802DDC58  80 7C 00 00 */	lwz r3, 0(r28)
/* 802DDC5C  7C 05 31 D6 */	mullw r0, r5, r6
/* 802DDC60  7C 63 02 14 */	add r3, r3, r0
/* 802DDC64  38 9F 00 40 */	addi r4, r31, 0x40
/* 802DDC68  38 C0 00 00 */	li r6, 0
/* 802DDC6C  38 E0 00 00 */	li r7, 0
/* 802DDC70  39 00 00 00 */	li r8, 0
/* 802DDC74  39 20 FF FF */	li r9, -1
/* 802DDC78  39 40 00 00 */	li r10, 0
/* 802DDC7C  4B FF 49 39 */	bl aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
/* 802DDC80  38 7F 00 20 */	addi r3, r31, 0x20
/* 802DDC84  38 9F 00 40 */	addi r4, r31, 0x40
/* 802DDC88  A0 BF 00 1A */	lhz r5, 0x1a(r31)
/* 802DDC8C  A0 DF 00 1C */	lhz r6, 0x1c(r31)
/* 802DDC90  A0 FF 00 14 */	lhz r7, 0x14(r31)
/* 802DDC94  39 00 00 00 */	li r8, 0
/* 802DDC98  39 20 00 00 */	li r9, 0
/* 802DDC9C  39 40 00 00 */	li r10, 0
/* 802DDCA0  48 08 01 A1 */	bl GXInitTexObj
/* 802DDCA4  38 7F 00 20 */	addi r3, r31, 0x20
/* 802DDCA8  38 80 00 01 */	li r4, 1
/* 802DDCAC  38 A0 00 01 */	li r5, 1
/* 802DDCB0  C0 22 C5 D0 */	lfs f1, lit_721(r2)
/* 802DDCB4  FC 40 08 90 */	fmr f2, f1
/* 802DDCB8  FC 60 08 90 */	fmr f3, f1
/* 802DDCBC  38 C0 00 00 */	li r6, 0
/* 802DDCC0  38 E0 00 00 */	li r7, 0
/* 802DDCC4  39 00 00 00 */	li r8, 0
/* 802DDCC8  48 08 04 0D */	bl GXInitTexObjLOD
/* 802DDCCC  39 61 00 20 */	addi r11, r1, 0x20
/* 802DDCD0  48 08 45 51 */	bl _restgpr_27
/* 802DDCD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DDCD8  7C 08 03 A6 */	mtlr r0
/* 802DDCDC  38 21 00 20 */	addi r1, r1, 0x20
/* 802DDCE0  4E 80 00 20 */	blr 
