lbl_80B04FA8:
/* 80B04FA8  3C 80 80 B1 */	lis r4, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B04FAC  38 84 C1 C4 */	addi r4, r4, lit_3999@l /* 0x80B0C1C4@l */
/* 80B04FB0  88 03 06 AC */	lbz r0, 0x6ac(r3)
/* 80B04FB4  28 00 00 00 */	cmplwi r0, 0
/* 80B04FB8  40 82 00 0C */	bne lbl_80B04FC4
/* 80B04FBC  C0 24 01 1C */	lfs f1, 0x11c(r4)
/* 80B04FC0  4E 80 00 20 */	blr 
lbl_80B04FC4:
/* 80B04FC4  28 00 00 02 */	cmplwi r0, 2
/* 80B04FC8  40 82 00 0C */	bne lbl_80B04FD4
/* 80B04FCC  C0 24 01 20 */	lfs f1, 0x120(r4)
/* 80B04FD0  4E 80 00 20 */	blr 
lbl_80B04FD4:
/* 80B04FD4  28 00 00 01 */	cmplwi r0, 1
/* 80B04FD8  40 82 00 0C */	bne lbl_80B04FE4
/* 80B04FDC  C0 24 00 84 */	lfs f1, 0x84(r4)
/* 80B04FE0  4E 80 00 20 */	blr 
lbl_80B04FE4:
/* 80B04FE4  C0 24 00 34 */	lfs f1, 0x34(r4)
/* 80B04FE8  4E 80 00 20 */	blr 
