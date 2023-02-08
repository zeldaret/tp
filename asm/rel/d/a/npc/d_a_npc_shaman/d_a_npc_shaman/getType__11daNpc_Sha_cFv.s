lbl_80AE372C:
/* 80AE372C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80AE3730  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80AE3734  2C 00 00 01 */	cmpwi r0, 1
/* 80AE3738  41 82 00 1C */	beq lbl_80AE3754
/* 80AE373C  40 80 00 20 */	bge lbl_80AE375C
/* 80AE3740  2C 00 00 00 */	cmpwi r0, 0
/* 80AE3744  40 80 00 08 */	bge lbl_80AE374C
/* 80AE3748  48 00 00 14 */	b lbl_80AE375C
lbl_80AE374C:
/* 80AE374C  38 60 00 00 */	li r3, 0
/* 80AE3750  4E 80 00 20 */	blr 
lbl_80AE3754:
/* 80AE3754  38 60 00 01 */	li r3, 1
/* 80AE3758  4E 80 00 20 */	blr 
lbl_80AE375C:
/* 80AE375C  38 60 00 02 */	li r3, 2
/* 80AE3760  4E 80 00 20 */	blr 
