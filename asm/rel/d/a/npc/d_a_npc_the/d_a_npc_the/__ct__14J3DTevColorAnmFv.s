lbl_80AF7FE8:
/* 80AF7FE8  38 80 00 00 */	li r4, 0
/* 80AF7FEC  B0 83 00 00 */	sth r4, 0(r3)
/* 80AF7FF0  38 00 00 01 */	li r0, 1
/* 80AF7FF4  B0 03 00 02 */	sth r0, 2(r3)
/* 80AF7FF8  90 83 00 04 */	stw r4, 4(r3)
/* 80AF7FFC  4E 80 00 20 */	blr 
