lbl_80BFA4DC:
/* 80BFA4DC  38 A3 00 04 */	addi r5, r3, 4
/* 80BFA4E0  38 00 00 78 */	li r0, 0x78
/* 80BFA4E4  7C 09 03 A6 */	mtctr r0
lbl_80BFA4E8:
/* 80BFA4E8  88 65 00 04 */	lbz r3, 4(r5)
/* 80BFA4EC  7C 60 07 75 */	extsb. r0, r3
/* 80BFA4F0  40 82 00 28 */	bne lbl_80BFA518
/* 80BFA4F4  7C 60 07 75 */	extsb. r0, r3
/* 80BFA4F8  40 82 00 18 */	bne lbl_80BFA510
/* 80BFA4FC  28 04 00 00 */	cmplwi r4, 0
/* 80BFA500  41 82 00 10 */	beq lbl_80BFA510
/* 80BFA504  90 85 00 00 */	stw r4, 0(r5)
/* 80BFA508  38 00 00 01 */	li r0, 1
/* 80BFA50C  98 05 00 04 */	stb r0, 4(r5)
lbl_80BFA510:
/* 80BFA510  38 60 00 01 */	li r3, 1
/* 80BFA514  4E 80 00 20 */	blr 
lbl_80BFA518:
/* 80BFA518  38 A5 00 08 */	addi r5, r5, 8
/* 80BFA51C  42 00 FF CC */	bdnz lbl_80BFA4E8
/* 80BFA520  38 60 00 00 */	li r3, 0
/* 80BFA524  4E 80 00 20 */	blr 
