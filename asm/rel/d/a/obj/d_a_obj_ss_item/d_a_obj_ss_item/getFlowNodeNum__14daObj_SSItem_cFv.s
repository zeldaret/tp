lbl_80CE789C:
/* 80CE789C  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80CE78A0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80CE78A4  38 00 00 00 */	li r0, 0
/* 80CE78A8  28 03 FF FF */	cmplwi r3, 0xffff
/* 80CE78AC  41 82 00 0C */	beq lbl_80CE78B8
/* 80CE78B0  28 03 00 00 */	cmplwi r3, 0
/* 80CE78B4  40 82 00 08 */	bne lbl_80CE78BC
lbl_80CE78B8:
/* 80CE78B8  38 00 00 01 */	li r0, 1
lbl_80CE78BC:
/* 80CE78BC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80CE78C0  38 00 FF FF */	li r0, -1
/* 80CE78C4  40 82 00 08 */	bne lbl_80CE78CC
/* 80CE78C8  7C 60 1B 78 */	mr r0, r3
lbl_80CE78CC:
/* 80CE78CC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80CE78D0  4E 80 00 20 */	blr 
