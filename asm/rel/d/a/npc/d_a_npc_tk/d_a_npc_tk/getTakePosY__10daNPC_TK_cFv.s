lbl_80B04F64:
/* 80B04F64  3C 80 80 B1 */	lis r4, lit_3999@ha
/* 80B04F68  38 84 C1 C4 */	addi r4, r4, lit_3999@l
/* 80B04F6C  88 03 06 AC */	lbz r0, 0x6ac(r3)
/* 80B04F70  28 00 00 00 */	cmplwi r0, 0
/* 80B04F74  40 82 00 0C */	bne lbl_80B04F80
/* 80B04F78  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80B04F7C  4E 80 00 20 */	blr 
lbl_80B04F80:
/* 80B04F80  28 00 00 02 */	cmplwi r0, 2
/* 80B04F84  40 82 00 0C */	bne lbl_80B04F90
/* 80B04F88  C0 24 01 14 */	lfs f1, 0x114(r4)
/* 80B04F8C  4E 80 00 20 */	blr 
lbl_80B04F90:
/* 80B04F90  28 00 00 01 */	cmplwi r0, 1
/* 80B04F94  40 82 00 0C */	bne lbl_80B04FA0
/* 80B04F98  C0 24 01 18 */	lfs f1, 0x118(r4)
/* 80B04F9C  4E 80 00 20 */	blr 
lbl_80B04FA0:
/* 80B04FA0  C0 24 00 34 */	lfs f1, 0x34(r4)
/* 80B04FA4  4E 80 00 20 */	blr 
