lbl_80B2FD98:
/* 80B2FD98  38 80 00 00 */	li r4, 0
/* 80B2FD9C  B0 83 00 00 */	sth r4, 0(r3)
/* 80B2FDA0  38 00 00 01 */	li r0, 1
/* 80B2FDA4  B0 03 00 02 */	sth r0, 2(r3)
/* 80B2FDA8  90 83 00 04 */	stw r4, 4(r3)
/* 80B2FDAC  4E 80 00 20 */	blr 
