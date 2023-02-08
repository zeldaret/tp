lbl_80AFD1E4:
/* 80AFD1E4  38 80 00 00 */	li r4, 0
/* 80AFD1E8  B0 83 00 00 */	sth r4, 0(r3)
/* 80AFD1EC  38 00 00 01 */	li r0, 1
/* 80AFD1F0  B0 03 00 02 */	sth r0, 2(r3)
/* 80AFD1F4  90 83 00 04 */	stw r4, 4(r3)
/* 80AFD1F8  4E 80 00 20 */	blr 
