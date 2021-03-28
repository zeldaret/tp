lbl_809BBFF8:
/* 809BBFF8  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 809BBFFC  28 00 00 01 */	cmplwi r0, 1
/* 809BC000  40 82 00 0C */	bne lbl_809BC00C
/* 809BC004  38 60 00 00 */	li r3, 0
/* 809BC008  4E 80 00 20 */	blr 
lbl_809BC00C:
/* 809BC00C  2C 00 00 00 */	cmpwi r0, 0
/* 809BC010  41 82 00 08 */	beq lbl_809BC018
/* 809BC014  48 00 00 0C */	b lbl_809BC020
lbl_809BC018:
/* 809BC018  38 60 00 00 */	li r3, 0
/* 809BC01C  4E 80 00 20 */	blr 
lbl_809BC020:
/* 809BC020  38 60 00 01 */	li r3, 1
/* 809BC024  4E 80 00 20 */	blr 
