lbl_802B3EAC:
/* 802B3EAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B3EB0  80 A3 00 00 */	lwz r5, 0(r3)
/* 802B3EB4  28 05 00 00 */	cmplwi r5, 0
/* 802B3EB8  41 82 00 10 */	beq lbl_802B3EC8
/* 802B3EBC  80 05 00 18 */	lwz r0, 0x18(r5)
/* 802B3EC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B3EC4  48 00 00 08 */	b lbl_802B3ECC
lbl_802B3EC8:
/* 802B3EC8  38 00 FF FF */	li r0, -1
lbl_802B3ECC:
/* 802B3ECC  7C 04 00 40 */	cmplw r4, r0
/* 802B3ED0  40 82 00 0C */	bne lbl_802B3EDC
/* 802B3ED4  38 60 00 01 */	li r3, 1
/* 802B3ED8  48 00 00 60 */	b lbl_802B3F38
lbl_802B3EDC:
/* 802B3EDC  80 A3 00 04 */	lwz r5, 4(r3)
/* 802B3EE0  28 05 00 00 */	cmplwi r5, 0
/* 802B3EE4  41 82 00 10 */	beq lbl_802B3EF4
/* 802B3EE8  80 05 00 18 */	lwz r0, 0x18(r5)
/* 802B3EEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B3EF0  48 00 00 08 */	b lbl_802B3EF8
lbl_802B3EF4:
/* 802B3EF4  38 00 FF FF */	li r0, -1
lbl_802B3EF8:
/* 802B3EF8  7C 04 00 40 */	cmplw r4, r0
/* 802B3EFC  40 82 00 0C */	bne lbl_802B3F08
/* 802B3F00  38 60 00 01 */	li r3, 1
/* 802B3F04  48 00 00 34 */	b lbl_802B3F38
lbl_802B3F08:
/* 802B3F08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802B3F0C  28 03 00 00 */	cmplwi r3, 0
/* 802B3F10  41 82 00 10 */	beq lbl_802B3F20
/* 802B3F14  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802B3F18  90 01 00 08 */	stw r0, 8(r1)
/* 802B3F1C  48 00 00 08 */	b lbl_802B3F24
lbl_802B3F20:
/* 802B3F20  38 00 FF FF */	li r0, -1
lbl_802B3F24:
/* 802B3F24  7C 04 00 40 */	cmplw r4, r0
/* 802B3F28  40 82 00 0C */	bne lbl_802B3F34
/* 802B3F2C  38 60 00 01 */	li r3, 1
/* 802B3F30  48 00 00 08 */	b lbl_802B3F38
lbl_802B3F34:
/* 802B3F34  38 60 00 00 */	li r3, 0
lbl_802B3F38:
/* 802B3F38  38 21 00 20 */	addi r1, r1, 0x20
/* 802B3F3C  4E 80 00 20 */	blr 
