lbl_80672F84:
/* 80672F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80672F88  7C 08 02 A6 */	mflr r0
/* 80672F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80672F90  4B FF F8 A9 */	bl getNowLevel__FP10fopAc_ac_c
/* 80672F94  2C 03 00 05 */	cmpwi r3, 5
/* 80672F98  41 82 00 30 */	beq lbl_80672FC8
/* 80672F9C  40 80 00 18 */	bge lbl_80672FB4
/* 80672FA0  2C 03 00 03 */	cmpwi r3, 3
/* 80672FA4  40 80 00 2C */	bge lbl_80672FD0
/* 80672FA8  2C 03 00 01 */	cmpwi r3, 1
/* 80672FAC  40 80 00 14 */	bge lbl_80672FC0
/* 80672FB0  48 00 00 20 */	b lbl_80672FD0
lbl_80672FB4:
/* 80672FB4  2C 03 00 0B */	cmpwi r3, 0xb
/* 80672FB8  41 82 00 10 */	beq lbl_80672FC8
/* 80672FBC  48 00 00 14 */	b lbl_80672FD0
lbl_80672FC0:
/* 80672FC0  38 60 00 00 */	li r3, 0
/* 80672FC4  48 00 00 10 */	b lbl_80672FD4
lbl_80672FC8:
/* 80672FC8  38 60 00 02 */	li r3, 2
/* 80672FCC  48 00 00 08 */	b lbl_80672FD4
lbl_80672FD0:
/* 80672FD0  38 60 00 01 */	li r3, 1
lbl_80672FD4:
/* 80672FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80672FD8  7C 08 03 A6 */	mtlr r0
/* 80672FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80672FE0  4E 80 00 20 */	blr 
