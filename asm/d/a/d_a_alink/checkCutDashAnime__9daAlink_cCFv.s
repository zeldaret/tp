lbl_800D0ECC:
/* 800D0ECC  38 80 00 00 */	li r4, 0
/* 800D0ED0  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800D0ED4  28 00 00 80 */	cmplwi r0, 0x80
/* 800D0ED8  41 82 00 18 */	beq lbl_800D0EF0
/* 800D0EDC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800D0EE0  28 00 00 82 */	cmplwi r0, 0x82
/* 800D0EE4  41 82 00 0C */	beq lbl_800D0EF0
/* 800D0EE8  28 00 00 81 */	cmplwi r0, 0x81
/* 800D0EEC  40 82 00 08 */	bne lbl_800D0EF4
lbl_800D0EF0:
/* 800D0EF0  38 80 00 01 */	li r4, 1
lbl_800D0EF4:
/* 800D0EF4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800D0EF8  4E 80 00 20 */	blr 
