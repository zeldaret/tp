lbl_800D0A6C:
/* 800D0A6C  38 80 00 00 */	li r4, 0
/* 800D0A70  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0A74  28 00 00 97 */	cmplwi r0, 0x97
/* 800D0A78  40 82 00 14 */	bne lbl_800D0A8C
/* 800D0A7C  A8 03 30 0E */	lha r0, 0x300e(r3)
/* 800D0A80  2C 00 00 01 */	cmpwi r0, 1
/* 800D0A84  40 82 00 08 */	bne lbl_800D0A8C
/* 800D0A88  38 80 00 01 */	li r4, 1
lbl_800D0A8C:
/* 800D0A8C  7C 83 23 78 */	mr r3, r4
/* 800D0A90  4E 80 00 20 */	blr 
