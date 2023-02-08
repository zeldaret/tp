lbl_80A2B850:
/* 80A2B850  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80A2B854  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80A2B858  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A2B85C  38 60 FF FF */	li r3, -1
/* 80A2B860  4D 82 00 20 */	beqlr 
/* 80A2B864  7C 03 03 78 */	mr r3, r0
/* 80A2B868  4E 80 00 20 */	blr 
