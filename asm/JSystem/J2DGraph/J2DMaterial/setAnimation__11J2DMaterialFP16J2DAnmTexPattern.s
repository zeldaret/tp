lbl_802EAA2C:
/* 802EAA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EAA30  7C 08 02 A6 */	mflr r0
/* 802EAA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EAA38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EAA3C  93 C1 00 08 */	stw r30, 8(r1)
/* 802EAA40  7C 7E 1B 78 */	mr r30, r3
/* 802EAA44  7C 9F 23 79 */	or. r31, r4, r4
/* 802EAA48  40 82 00 10 */	bne lbl_802EAA58
/* 802EAA4C  80 1E 00 84 */	lwz r0, 0x84(r30)
/* 802EAA50  28 00 00 00 */	cmplwi r0, 0
/* 802EAA54  41 82 00 A0 */	beq lbl_802EAAF4
lbl_802EAA58:
/* 802EAA58  7F C3 F3 78 */	mr r3, r30
/* 802EAA5C  4B FF FD F1 */	bl makeAnmPointer__11J2DMaterialFv
/* 802EAA60  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 802EAA64  93 E3 00 08 */	stw r31, 8(r3)
/* 802EAA68  38 60 00 00 */	li r3, 0
/* 802EAA6C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 802EAA70  38 A4 FF FF */	addi r5, r4, 0xFFFF /* 0x0000FFFF@l */
/* 802EAA74  38 00 00 08 */	li r0, 8
/* 802EAA78  7C 09 03 A6 */	mtctr r0
lbl_802EAA7C:
/* 802EAA7C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 802EAA80  38 03 00 22 */	addi r0, r3, 0x22
/* 802EAA84  7C A4 03 2E */	sthx r5, r4, r0
/* 802EAA88  38 63 00 02 */	addi r3, r3, 2
/* 802EAA8C  42 00 FF F0 */	bdnz lbl_802EAA7C
/* 802EAA90  28 1F 00 00 */	cmplwi r31, 0
/* 802EAA94  41 82 00 60 */	beq lbl_802EAAF4
/* 802EAA98  A0 7F 00 1A */	lhz r3, 0x1a(r31)
/* 802EAA9C  A0 BE 00 0C */	lhz r5, 0xc(r30)
/* 802EAAA0  80 DF 00 14 */	lwz r6, 0x14(r31)
/* 802EAAA4  39 00 00 00 */	li r8, 0
/* 802EAAA8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802EAAAC  48 00 00 3C */	b lbl_802EAAE8
lbl_802EAAB0:
/* 802EAAB0  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 802EAAB4  55 07 04 3E */	clrlwi r7, r8, 0x10
/* 802EAAB8  55 03 0B FC */	rlwinm r3, r8, 1, 0xf, 0x1e
/* 802EAABC  7C 64 1A 2E */	lhzx r3, r4, r3
/* 802EAAC0  7C 05 18 40 */	cmplw r5, r3
/* 802EAAC4  40 82 00 20 */	bne lbl_802EAAE4
/* 802EAAC8  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 802EAACC  54 E3 18 38 */	slwi r3, r7, 3
/* 802EAAD0  38 63 00 04 */	addi r3, r3, 4
/* 802EAAD4  7C 66 18 AE */	lbzx r3, r6, r3
/* 802EAAD8  54 63 08 3C */	slwi r3, r3, 1
/* 802EAADC  38 63 00 22 */	addi r3, r3, 0x22
/* 802EAAE0  7D 04 1B 2E */	sthx r8, r4, r3
lbl_802EAAE4:
/* 802EAAE4  39 08 00 01 */	addi r8, r8, 1
lbl_802EAAE8:
/* 802EAAE8  55 03 04 3E */	clrlwi r3, r8, 0x10
/* 802EAAEC  7C 03 00 40 */	cmplw r3, r0
/* 802EAAF0  41 80 FF C0 */	blt lbl_802EAAB0
lbl_802EAAF4:
/* 802EAAF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EAAF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EAAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EAB00  7C 08 03 A6 */	mtlr r0
/* 802EAB04  38 21 00 10 */	addi r1, r1, 0x10
/* 802EAB08  4E 80 00 20 */	blr 
