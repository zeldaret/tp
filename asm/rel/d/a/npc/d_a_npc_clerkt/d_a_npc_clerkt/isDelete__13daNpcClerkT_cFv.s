lbl_8099AB8C:
/* 8099AB8C  88 03 10 BC */	lbz r0, 0x10bc(r3)
/* 8099AB90  28 00 00 01 */	cmplwi r0, 1
/* 8099AB94  40 82 00 0C */	bne lbl_8099ABA0
/* 8099AB98  38 60 00 00 */	li r3, 0
/* 8099AB9C  4E 80 00 20 */	blr 
lbl_8099ABA0:
/* 8099ABA0  2C 00 00 00 */	cmpwi r0, 0
/* 8099ABA4  41 82 00 08 */	beq lbl_8099ABAC
/* 8099ABA8  48 00 00 0C */	b lbl_8099ABB4
lbl_8099ABAC:
/* 8099ABAC  38 60 00 00 */	li r3, 0
/* 8099ABB0  4E 80 00 20 */	blr 
lbl_8099ABB4:
/* 8099ABB4  38 60 00 01 */	li r3, 1
/* 8099ABB8  4E 80 00 20 */	blr 
