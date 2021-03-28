lbl_802DA918:
/* 802DA918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DA91C  7C 08 02 A6 */	mflr r0
/* 802DA920  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DA924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DA928  93 C1 00 08 */	stw r30, 8(r1)
/* 802DA92C  7C 9E 23 78 */	mr r30, r4
/* 802DA930  7C CA 33 78 */	mr r10, r6
/* 802DA934  7C E0 3B 78 */	mr r0, r7
/* 802DA938  7D 09 43 78 */	mr r9, r8
/* 802DA93C  38 C0 00 00 */	li r6, 0
/* 802DA940  7D 47 53 78 */	mr r7, r10
/* 802DA944  7C 08 03 78 */	mr r8, r0
/* 802DA948  48 00 00 79 */	bl loadToAram_Async__16JKRDvdAramRipperFP10JKRDvdFileUl15JKRExpandSwitchPFUl_vUlUlPUl
/* 802DA94C  7C 7F 1B 78 */	mr r31, r3
/* 802DA950  38 80 00 00 */	li r4, 0
/* 802DA954  48 00 04 F5 */	bl syncAram__16JKRDvdAramRipperFP12JKRADCommandi
/* 802DA958  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 802DA95C  2C 00 00 00 */	cmpwi r0, 0
/* 802DA960  40 80 00 18 */	bge lbl_802DA978
/* 802DA964  7F E3 FB 78 */	mr r3, r31
/* 802DA968  38 80 00 01 */	li r4, 1
/* 802DA96C  48 00 05 F1 */	bl __dt__12JKRADCommandFv
/* 802DA970  38 60 00 00 */	li r3, 0
/* 802DA974  48 00 00 34 */	b lbl_802DA9A8
lbl_802DA978:
/* 802DA978  28 1E 00 00 */	cmplwi r30, 0
/* 802DA97C  41 82 00 18 */	beq lbl_802DA994
/* 802DA980  7F E3 FB 78 */	mr r3, r31
/* 802DA984  38 80 00 01 */	li r4, 1
/* 802DA988  48 00 05 D5 */	bl __dt__12JKRADCommandFv
/* 802DA98C  38 60 FF FF */	li r3, -1
/* 802DA990  48 00 00 18 */	b lbl_802DA9A8
lbl_802DA994:
/* 802DA994  83 DF 00 30 */	lwz r30, 0x30(r31)
/* 802DA998  7F E3 FB 78 */	mr r3, r31
/* 802DA99C  38 80 00 01 */	li r4, 1
/* 802DA9A0  48 00 05 BD */	bl __dt__12JKRADCommandFv
/* 802DA9A4  7F C3 F3 78 */	mr r3, r30
lbl_802DA9A8:
/* 802DA9A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DA9AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DA9B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DA9B4  7C 08 03 A6 */	mtlr r0
/* 802DA9B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DA9BC  4E 80 00 20 */	blr 
