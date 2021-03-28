lbl_80D4D84C:
/* 80D4D84C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D4D850  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D4D854  2C 00 00 01 */	cmpwi r0, 1
/* 80D4D858  41 82 00 1C */	beq lbl_80D4D874
/* 80D4D85C  40 80 00 20 */	bge lbl_80D4D87C
/* 80D4D860  2C 00 00 00 */	cmpwi r0, 0
/* 80D4D864  40 80 00 08 */	bge lbl_80D4D86C
/* 80D4D868  48 00 00 14 */	b lbl_80D4D87C
lbl_80D4D86C:
/* 80D4D86C  38 60 00 00 */	li r3, 0
/* 80D4D870  4E 80 00 20 */	blr 
lbl_80D4D874:
/* 80D4D874  38 60 00 01 */	li r3, 1
/* 80D4D878  4E 80 00 20 */	blr 
lbl_80D4D87C:
/* 80D4D87C  38 60 00 02 */	li r3, 2
/* 80D4D880  4E 80 00 20 */	blr 
