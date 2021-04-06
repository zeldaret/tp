lbl_80B2CDEC:
/* 80B2CDEC  1C 83 00 1C */	mulli r4, r3, 0x1c
/* 80B2CDF0  3C 60 80 3B */	lis r3, dist_table__12dAttention_c@ha /* 0x803A9C70@ha */
/* 80B2CDF4  38 03 9C 70 */	addi r0, r3, dist_table__12dAttention_c@l /* 0x803A9C70@l */
/* 80B2CDF8  7C 60 22 14 */	add r3, r0, r4
/* 80B2CDFC  4E 80 00 20 */	blr 
