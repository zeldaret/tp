lbl_80D62F8C:
/* 80D62F8C  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80D62F90  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80D62F94  38 00 00 00 */	li r0, 0
/* 80D62F98  28 04 FF FF */	cmplwi r4, 0xffff
/* 80D62F9C  41 82 00 0C */	beq lbl_80D62FA8
/* 80D62FA0  28 04 00 00 */	cmplwi r4, 0
/* 80D62FA4  40 82 00 08 */	bne lbl_80D62FAC
lbl_80D62FA8:
/* 80D62FA8  38 00 00 01 */	li r0, 1
lbl_80D62FAC:
/* 80D62FAC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D62FB0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80D62FB4  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80D62FB8  40 82 00 08 */	bne lbl_80D62FC0
/* 80D62FBC  7C 80 23 78 */	mr r0, r4
lbl_80D62FC0:
/* 80D62FC0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80D62FC4  4E 80 00 20 */	blr 
