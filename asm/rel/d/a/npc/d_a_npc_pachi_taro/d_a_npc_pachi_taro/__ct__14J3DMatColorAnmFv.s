lbl_80A9CBC0:
/* 80A9CBC0  38 80 00 00 */	li r4, 0
/* 80A9CBC4  B0 83 00 00 */	sth r4, 0(r3)
/* 80A9CBC8  38 00 00 01 */	li r0, 1
/* 80A9CBCC  B0 03 00 02 */	sth r0, 2(r3)
/* 80A9CBD0  90 83 00 04 */	stw r4, 4(r3)
/* 80A9CBD4  4E 80 00 20 */	blr 
