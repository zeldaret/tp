lbl_80270F58:
/* 80270F58  80 6D 81 E8 */	lwz r3, calc_mtx(r13)
/* 80270F5C  38 03 FF D0 */	addi r0, r3, -48
/* 80270F60  90 0D 81 E8 */	stw r0, calc_mtx(r13)
/* 80270F64  4E 80 00 20 */	blr 
