lbl_80D63D4C:
/* 80D63D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63D50  7C 08 02 A6 */	mflr r0
/* 80D63D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63D58  28 03 00 00 */	cmplwi r3, 0
/* 80D63D5C  41 82 00 0C */	beq lbl_80D63D68
/* 80D63D60  38 80 00 00 */	li r4, 0
/* 80D63D64  4B 2B 4F 28 */	b __dt__10fopAc_ac_cFv
lbl_80D63D68:
/* 80D63D68  38 60 00 01 */	li r3, 1
/* 80D63D6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63D70  7C 08 03 A6 */	mtlr r0
/* 80D63D74  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63D78  4E 80 00 20 */	blr 
