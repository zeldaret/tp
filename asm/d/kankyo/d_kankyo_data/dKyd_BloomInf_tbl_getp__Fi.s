lbl_80056A94:
/* 80056A94  1C 83 00 0C */	mulli r4, r3, 0xc
/* 80056A98  3C 60 80 3B */	lis r3, l_kydata_BloomInf_tbl@ha
/* 80056A9C  38 03 8E 98 */	addi r0, r3, l_kydata_BloomInf_tbl@l
/* 80056AA0  7C 60 22 14 */	add r3, r0, r4
/* 80056AA4  4E 80 00 20 */	blr 
