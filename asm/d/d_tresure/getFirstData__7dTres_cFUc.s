lbl_8009C360:
/* 8009C360  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009C364  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8009C368  3C 60 80 42 */	lis r3, mTypeGroupListAll__7dTres_c@ha
/* 8009C36C  38 03 54 38 */	addi r0, r3, mTypeGroupListAll__7dTres_c@l
/* 8009C370  7C 60 22 15 */	add. r3, r0, r4
/* 8009C374  40 82 00 0C */	bne lbl_8009C380
/* 8009C378  38 60 00 00 */	li r3, 0
/* 8009C37C  4E 80 00 20 */	blr 
lbl_8009C380:
/* 8009C380  88 03 00 08 */	lbz r0, 8(r3)
/* 8009C384  2C 00 00 00 */	cmpwi r0, 0
/* 8009C388  40 82 00 0C */	bne lbl_8009C394
/* 8009C38C  38 60 00 00 */	li r3, 0
/* 8009C390  4E 80 00 20 */	blr 
lbl_8009C394:
/* 8009C394  80 63 00 00 */	lwz r3, 0(r3)
/* 8009C398  4E 80 00 20 */	blr 
