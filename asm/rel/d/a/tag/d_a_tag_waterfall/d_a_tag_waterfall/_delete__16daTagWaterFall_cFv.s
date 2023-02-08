lbl_80D64AE0:
/* 80D64AE0  88 03 05 83 */	lbz r0, 0x583(r3)
/* 80D64AE4  28 00 00 00 */	cmplwi r0, 0
/* 80D64AE8  41 82 00 10 */	beq lbl_80D64AF8
/* 80D64AEC  38 00 00 00 */	li r0, 0
/* 80D64AF0  3C 60 80 D6 */	lis r3, data_80D64E00@ha /* 0x80D64E00@ha */
/* 80D64AF4  98 03 4E 00 */	stb r0, data_80D64E00@l(r3)  /* 0x80D64E00@l */
lbl_80D64AF8:
/* 80D64AF8  38 60 00 01 */	li r3, 1
/* 80D64AFC  4E 80 00 20 */	blr 
