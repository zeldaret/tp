lbl_80270E4C:
/* 80270E4C  3C 60 80 43 */	lis r3, mtx@ha /* 0x80430DB8@ha */
/* 80270E50  38 03 0D B8 */	addi r0, r3, mtx@l /* 0x80430DB8@l */
/* 80270E54  90 0D 81 E8 */	stw r0, calc_mtx(r13)
/* 80270E58  4E 80 00 20 */	blr 
