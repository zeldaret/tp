lbl_800D0B38:
/* 800D0B38  38 80 00 00 */	li r4, 0
/* 800D0B3C  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D0B40  28 00 00 DC */	cmplwi r0, 0xdc
/* 800D0B44  40 82 00 14 */	bne lbl_800D0B58
/* 800D0B48  80 03 32 CC */	lwz r0, 0x32cc(r3)
/* 800D0B4C  28 00 00 00 */	cmplwi r0, 0
/* 800D0B50  41 82 00 08 */	beq lbl_800D0B58
/* 800D0B54  38 80 00 01 */	li r4, 1
lbl_800D0B58:
/* 800D0B58  7C 83 23 78 */	mr r3, r4
/* 800D0B5C  4E 80 00 20 */	blr 
