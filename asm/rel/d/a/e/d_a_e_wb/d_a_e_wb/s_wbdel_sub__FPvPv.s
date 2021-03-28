lbl_807DBFAC:
/* 807DBFAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807DBFB0  7C 08 02 A6 */	mflr r0
/* 807DBFB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807DBFB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807DBFBC  7C 7F 1B 78 */	mr r31, r3
/* 807DBFC0  4B 83 CD 20 */	b fopAc_IsActor__FPv
/* 807DBFC4  2C 03 00 00 */	cmpwi r3, 0
/* 807DBFC8  41 82 00 24 */	beq lbl_807DBFEC
/* 807DBFCC  A8 1F 00 08 */	lha r0, 8(r31)
/* 807DBFD0  2C 00 00 EF */	cmpwi r0, 0xef
/* 807DBFD4  40 82 00 18 */	bne lbl_807DBFEC
/* 807DBFD8  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807DBFDC  7C 00 07 75 */	extsb. r0, r0
/* 807DBFE0  40 82 00 0C */	bne lbl_807DBFEC
/* 807DBFE4  7F E3 FB 78 */	mr r3, r31
/* 807DBFE8  4B 83 DC 94 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_807DBFEC:
/* 807DBFEC  38 60 00 00 */	li r3, 0
/* 807DBFF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807DBFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807DBFF8  7C 08 03 A6 */	mtlr r0
/* 807DBFFC  38 21 00 10 */	addi r1, r1, 0x10
/* 807DC000  4E 80 00 20 */	blr 
