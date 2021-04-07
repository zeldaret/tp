lbl_80040AE4:
/* 80040AE4  3C 60 80 42 */	lis r3, mTypeGroupListAll__7dTres_c@ha /* 0x80425438@ha */
/* 80040AE8  38 63 54 38 */	addi r3, r3, mTypeGroupListAll__7dTres_c@l /* 0x80425438@l */
/* 80040AEC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80040AF0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80040AF4  7C 63 02 14 */	add r3, r3, r0
/* 80040AF8  88 63 00 08 */	lbz r3, 8(r3)
/* 80040AFC  4E 80 00 20 */	blr 
