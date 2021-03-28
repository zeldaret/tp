lbl_802D6ED0:
/* 802D6ED0  80 03 00 44 */	lwz r0, 0x44(r3)
/* 802D6ED4  28 00 00 00 */	cmplwi r0, 0
/* 802D6ED8  4D 82 00 20 */	beqlr 
/* 802D6EDC  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 802D6EE0  28 00 00 01 */	cmplwi r0, 1
/* 802D6EE4  4D 82 00 20 */	beqlr 
/* 802D6EE8  80 C3 00 4C */	lwz r6, 0x4c(r3)
/* 802D6EEC  38 E0 00 00 */	li r7, 0
/* 802D6EF0  38 A0 00 00 */	li r5, 0
/* 802D6EF4  48 00 00 18 */	b lbl_802D6F0C
lbl_802D6EF8:
/* 802D6EF8  80 06 00 10 */	lwz r0, 0x10(r6)
/* 802D6EFC  28 00 00 00 */	cmplwi r0, 0
/* 802D6F00  41 82 00 08 */	beq lbl_802D6F08
/* 802D6F04  90 A6 00 10 */	stw r5, 0x10(r6)
lbl_802D6F08:
/* 802D6F08  38 E7 00 01 */	addi r7, r7, 1
lbl_802D6F0C:
/* 802D6F0C  80 83 00 44 */	lwz r4, 0x44(r3)
/* 802D6F10  80 04 00 08 */	lwz r0, 8(r4)
/* 802D6F14  7C 07 00 40 */	cmplw r7, r0
/* 802D6F18  41 80 FF E0 */	blt lbl_802D6EF8
/* 802D6F1C  4E 80 00 20 */	blr 
