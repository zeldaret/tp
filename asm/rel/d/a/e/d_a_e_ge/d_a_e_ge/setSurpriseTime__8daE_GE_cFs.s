lbl_806CADCC:
/* 806CADCC  88 03 0B 9A */	lbz r0, 0xb9a(r3)
/* 806CADD0  2C 00 00 00 */	cmpwi r0, 0
/* 806CADD4  4C 82 00 20 */	bnelr 
/* 806CADD8  80 03 0B 70 */	lwz r0, 0xb70(r3)
/* 806CADDC  2C 00 00 00 */	cmpwi r0, 0
/* 806CADE0  41 82 00 0C */	beq lbl_806CADEC
/* 806CADE4  2C 00 00 06 */	cmpwi r0, 6
/* 806CADE8  4C 82 00 20 */	bnelr 
lbl_806CADEC:
/* 806CADEC  B0 83 0B 94 */	sth r4, 0xb94(r3)
/* 806CADF0  4E 80 00 20 */	blr 
