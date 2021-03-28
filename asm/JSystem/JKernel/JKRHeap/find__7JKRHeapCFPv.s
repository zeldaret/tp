lbl_802CE894:
/* 802CE894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CE898  7C 08 02 A6 */	mflr r0
/* 802CE89C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CE8A0  39 61 00 20 */	addi r11, r1, 0x20
/* 802CE8A4  48 09 39 39 */	bl _savegpr_29
/* 802CE8A8  7C 7D 1B 78 */	mr r29, r3
/* 802CE8AC  7C 9E 23 78 */	mr r30, r4
/* 802CE8B0  80 03 00 30 */	lwz r0, 0x30(r3)
/* 802CE8B4  7C 00 F0 40 */	cmplw r0, r30
/* 802CE8B8  41 81 00 68 */	bgt lbl_802CE920
/* 802CE8BC  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802CE8C0  7C 1E 00 40 */	cmplw r30, r0
/* 802CE8C4  40 80 00 5C */	bge lbl_802CE920
/* 802CE8C8  80 1D 00 48 */	lwz r0, 0x48(r29)
/* 802CE8CC  28 00 00 00 */	cmplwi r0, 0
/* 802CE8D0  41 82 00 48 */	beq lbl_802CE918
/* 802CE8D4  83 FD 00 40 */	lwz r31, 0x40(r29)
/* 802CE8D8  28 1F 00 00 */	cmplwi r31, 0
/* 802CE8DC  41 82 00 34 */	beq lbl_802CE910
/* 802CE8E0  3B FF FF F4 */	addi r31, r31, -12
/* 802CE8E4  48 00 00 2C */	b lbl_802CE910
lbl_802CE8E8:
/* 802CE8E8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802CE8EC  7F C4 F3 78 */	mr r4, r30
/* 802CE8F0  4B FF FF A5 */	bl find__7JKRHeapCFPv
/* 802CE8F4  28 03 00 00 */	cmplwi r3, 0
/* 802CE8F8  41 82 00 08 */	beq lbl_802CE900
/* 802CE8FC  48 00 00 28 */	b lbl_802CE924
lbl_802CE900:
/* 802CE900  83 FF 00 18 */	lwz r31, 0x18(r31)
/* 802CE904  28 1F 00 00 */	cmplwi r31, 0
/* 802CE908  41 82 00 08 */	beq lbl_802CE910
/* 802CE90C  3B FF FF F4 */	addi r31, r31, -12
lbl_802CE910:
/* 802CE910  28 1F 00 00 */	cmplwi r31, 0
/* 802CE914  40 82 FF D4 */	bne lbl_802CE8E8
lbl_802CE918:
/* 802CE918  7F A3 EB 78 */	mr r3, r29
/* 802CE91C  48 00 00 08 */	b lbl_802CE924
lbl_802CE920:
/* 802CE920  38 60 00 00 */	li r3, 0
lbl_802CE924:
/* 802CE924  39 61 00 20 */	addi r11, r1, 0x20
/* 802CE928  48 09 39 01 */	bl _restgpr_29
/* 802CE92C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CE930  7C 08 03 A6 */	mtlr r0
/* 802CE934  38 21 00 20 */	addi r1, r1, 0x20
/* 802CE938  4E 80 00 20 */	blr 
