lbl_80CE5B3C:
/* 80CE5B3C  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80CE5B40  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80CE5B44  38 00 00 00 */	li r0, 0
/* 80CE5B48  28 03 FF FF */	cmplwi r3, 0xffff
/* 80CE5B4C  41 82 00 0C */	beq lbl_80CE5B58
/* 80CE5B50  28 03 00 00 */	cmplwi r3, 0
/* 80CE5B54  40 82 00 08 */	bne lbl_80CE5B5C
lbl_80CE5B58:
/* 80CE5B58  38 00 00 01 */	li r0, 1
lbl_80CE5B5C:
/* 80CE5B5C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80CE5B60  38 00 FF FF */	li r0, -1
/* 80CE5B64  40 82 00 08 */	bne lbl_80CE5B6C
/* 80CE5B68  7C 60 1B 78 */	mr r0, r3
lbl_80CE5B6C:
/* 80CE5B6C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80CE5B70  4E 80 00 20 */	blr 
