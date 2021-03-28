lbl_802F7AC4:
/* 802F7AC4  80 83 00 F4 */	lwz r4, 0xf4(r3)
/* 802F7AC8  28 04 00 00 */	cmplwi r4, 0
/* 802F7ACC  41 82 00 08 */	beq lbl_802F7AD4
/* 802F7AD0  38 84 FF F4 */	addi r4, r4, -12
lbl_802F7AD4:
/* 802F7AD4  28 04 00 00 */	cmplwi r4, 0
/* 802F7AD8  40 82 00 0C */	bne lbl_802F7AE4
/* 802F7ADC  38 60 00 00 */	li r3, 0
/* 802F7AE0  4E 80 00 20 */	blr 
lbl_802F7AE4:
/* 802F7AE4  80 63 00 F4 */	lwz r3, 0xf4(r3)
/* 802F7AE8  28 03 00 00 */	cmplwi r3, 0
/* 802F7AEC  41 82 00 08 */	beq lbl_802F7AF4
/* 802F7AF0  38 63 FF F4 */	addi r3, r3, -12
lbl_802F7AF4:
/* 802F7AF4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802F7AF8  4E 80 00 20 */	blr 
