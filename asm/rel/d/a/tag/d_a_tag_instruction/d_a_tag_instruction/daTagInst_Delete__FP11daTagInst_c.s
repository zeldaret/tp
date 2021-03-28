lbl_80D59B48:
/* 80D59B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D59B4C  7C 08 02 A6 */	mflr r0
/* 80D59B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D59B54  28 03 00 00 */	cmplwi r3, 0
/* 80D59B58  41 82 00 0C */	beq lbl_80D59B64
/* 80D59B5C  38 80 00 00 */	li r4, 0
/* 80D59B60  4B 2B F1 2C */	b __dt__10fopAc_ac_cFv
lbl_80D59B64:
/* 80D59B64  38 60 00 01 */	li r3, 1
/* 80D59B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D59B6C  7C 08 03 A6 */	mtlr r0
/* 80D59B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80D59B74  4E 80 00 20 */	blr 
