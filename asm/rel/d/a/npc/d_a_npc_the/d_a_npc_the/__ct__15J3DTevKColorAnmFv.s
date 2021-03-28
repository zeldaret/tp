lbl_80AF7F94:
/* 80AF7F94  38 80 00 00 */	li r4, 0
/* 80AF7F98  B0 83 00 00 */	sth r4, 0(r3)
/* 80AF7F9C  38 00 00 01 */	li r0, 1
/* 80AF7FA0  B0 03 00 02 */	sth r0, 2(r3)
/* 80AF7FA4  90 83 00 04 */	stw r4, 4(r3)
/* 80AF7FA8  4E 80 00 20 */	blr 
