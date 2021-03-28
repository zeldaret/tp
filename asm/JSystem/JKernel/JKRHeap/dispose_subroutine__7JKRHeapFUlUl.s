lbl_802CE9E4:
/* 802CE9E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CE9E8  7C 08 02 A6 */	mflr r0
/* 802CE9EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CE9F0  39 61 00 20 */	addi r11, r1, 0x20
/* 802CE9F4  48 09 37 E5 */	bl _savegpr_28
/* 802CE9F8  7C 7C 1B 78 */	mr r28, r3
/* 802CE9FC  7C 9D 23 78 */	mr r29, r4
/* 802CEA00  7C BE 2B 78 */	mr r30, r5
/* 802CEA04  3B E0 00 00 */	li r31, 0
/* 802CEA08  80 83 00 5C */	lwz r4, 0x5c(r3)
/* 802CEA0C  48 00 00 4C */	b lbl_802CEA58
lbl_802CEA10:
/* 802CEA10  80 64 00 00 */	lwz r3, 0(r4)
/* 802CEA14  7C 1D 18 40 */	cmplw r29, r3
/* 802CEA18  41 81 00 38 */	bgt lbl_802CEA50
/* 802CEA1C  7C 03 F0 40 */	cmplw r3, r30
/* 802CEA20  40 80 00 30 */	bge lbl_802CEA50
/* 802CEA24  38 80 FF FF */	li r4, -1
/* 802CEA28  81 83 00 00 */	lwz r12, 0(r3)
/* 802CEA2C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802CEA30  7D 89 03 A6 */	mtctr r12
/* 802CEA34  4E 80 04 21 */	bctrl 
/* 802CEA38  28 1F 00 00 */	cmplwi r31, 0
/* 802CEA3C  40 82 00 0C */	bne lbl_802CEA48
/* 802CEA40  80 9C 00 5C */	lwz r4, 0x5c(r28)
/* 802CEA44  48 00 00 14 */	b lbl_802CEA58
lbl_802CEA48:
/* 802CEA48  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802CEA4C  48 00 00 0C */	b lbl_802CEA58
lbl_802CEA50:
/* 802CEA50  7C 9F 23 78 */	mr r31, r4
/* 802CEA54  80 84 00 0C */	lwz r4, 0xc(r4)
lbl_802CEA58:
/* 802CEA58  28 04 00 00 */	cmplwi r4, 0
/* 802CEA5C  40 82 FF B4 */	bne lbl_802CEA10
/* 802CEA60  39 61 00 20 */	addi r11, r1, 0x20
/* 802CEA64  48 09 37 C1 */	bl _restgpr_28
/* 802CEA68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CEA6C  7C 08 03 A6 */	mtlr r0
/* 802CEA70  38 21 00 20 */	addi r1, r1, 0x20
/* 802CEA74  4E 80 00 20 */	blr 
