lbl_802EA94C:
/* 802EA94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA950  7C 08 02 A6 */	mflr r0
/* 802EA954  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EA95C  93 C1 00 08 */	stw r30, 8(r1)
/* 802EA960  7C 7E 1B 78 */	mr r30, r3
/* 802EA964  7C 9F 23 79 */	or. r31, r4, r4
/* 802EA968  40 82 00 10 */	bne lbl_802EA978
/* 802EA96C  80 1E 00 84 */	lwz r0, 0x84(r30)
/* 802EA970  28 00 00 00 */	cmplwi r0, 0
/* 802EA974  41 82 00 A0 */	beq lbl_802EAA14
lbl_802EA978:
/* 802EA978  7F C3 F3 78 */	mr r3, r30
/* 802EA97C  4B FF FE D1 */	bl makeAnmPointer__11J2DMaterialFv
/* 802EA980  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 802EA984  93 E3 00 04 */	stw r31, 4(r3)
/* 802EA988  38 60 00 00 */	li r3, 0
/* 802EA98C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 802EA990  38 A4 FF FF */	addi r5, r4, 0xFFFF /* 0x0000FFFF@l */
/* 802EA994  38 00 00 08 */	li r0, 8
/* 802EA998  7C 09 03 A6 */	mtctr r0
lbl_802EA99C:
/* 802EA99C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 802EA9A0  38 03 00 12 */	addi r0, r3, 0x12
/* 802EA9A4  7C A4 03 2E */	sthx r5, r4, r0
/* 802EA9A8  38 63 00 02 */	addi r3, r3, 2
/* 802EA9AC  42 00 FF F0 */	bdnz lbl_802EA99C
/* 802EA9B0  28 1F 00 00 */	cmplwi r31, 0
/* 802EA9B4  41 82 00 60 */	beq lbl_802EAA14
/* 802EA9B8  A0 7F 00 18 */	lhz r3, 0x18(r31)
/* 802EA9BC  38 00 00 03 */	li r0, 3
/* 802EA9C0  7C 03 03 D6 */	divw r0, r3, r0
/* 802EA9C4  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 802EA9C8  A0 BE 00 0C */	lhz r5, 0xc(r30)
/* 802EA9CC  38 E0 00 00 */	li r7, 0
/* 802EA9D0  48 00 00 38 */	b lbl_802EAA08
lbl_802EA9D4:
/* 802EA9D4  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802EA9D8  54 E4 04 3E */	clrlwi r4, r7, 0x10
/* 802EA9DC  54 E0 0B FC */	rlwinm r0, r7, 1, 0xf, 0x1e
/* 802EA9E0  7C 03 02 2E */	lhzx r0, r3, r0
/* 802EA9E4  7C 05 00 40 */	cmplw r5, r0
/* 802EA9E8  40 82 00 1C */	bne lbl_802EAA04
/* 802EA9EC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 802EA9F0  7C 03 20 AE */	lbzx r0, r3, r4
/* 802EA9F4  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 802EA9F8  54 03 0D FC */	rlwinm r3, r0, 1, 0x17, 0x1e
/* 802EA9FC  38 03 00 12 */	addi r0, r3, 0x12
/* 802EAA00  7C E4 03 2E */	sthx r7, r4, r0
lbl_802EAA04:
/* 802EAA04  38 E7 00 01 */	addi r7, r7, 1
lbl_802EAA08:
/* 802EAA08  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 802EAA0C  7C 00 30 40 */	cmplw r0, r6
/* 802EAA10  41 80 FF C4 */	blt lbl_802EA9D4
lbl_802EAA14:
/* 802EAA14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EAA18  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EAA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EAA20  7C 08 03 A6 */	mtlr r0
/* 802EAA24  38 21 00 10 */	addi r1, r1, 0x10
/* 802EAA28  4E 80 00 20 */	blr 
