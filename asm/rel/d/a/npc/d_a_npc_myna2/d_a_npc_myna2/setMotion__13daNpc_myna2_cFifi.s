lbl_80A84FEC:
/* 80A84FEC  7C 86 07 34 */	extsh r6, r4
/* 80A84FF0  2C 05 00 00 */	cmpwi r5, 0
/* 80A84FF4  40 82 00 10 */	bne lbl_80A85004
/* 80A84FF8  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80A84FFC  7C 00 30 00 */	cmpw r0, r6
/* 80A85000  4D 82 00 20 */	beqlr 
lbl_80A85004:
/* 80A85004  2C 04 00 00 */	cmpwi r4, 0
/* 80A85008  4D 80 00 20 */	bltlr 
/* 80A8500C  2C 04 00 08 */	cmpwi r4, 8
/* 80A85010  4C 80 00 20 */	bgelr 
/* 80A85014  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80A85018  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80A8501C  38 00 FF FF */	li r0, -1
/* 80A85020  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80A85024  38 00 00 00 */	li r0, 0
/* 80A85028  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80A8502C  4E 80 00 20 */	blr 
