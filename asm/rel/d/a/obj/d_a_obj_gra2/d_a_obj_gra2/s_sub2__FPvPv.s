lbl_80C0CF2C:
/* 80C0CF2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C0CF30  7C 08 02 A6 */	mflr r0
/* 80C0CF34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C0CF38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C0CF3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C0CF40  7C 7E 1B 78 */	mr r30, r3
/* 80C0CF44  7C 9F 23 78 */	mr r31, r4
/* 80C0CF48  4B 40 BD 99 */	bl fopAc_IsActor__FPv
/* 80C0CF4C  2C 03 00 00 */	cmpwi r3, 0
/* 80C0CF50  41 82 00 2C */	beq lbl_80C0CF7C
/* 80C0CF54  A8 1E 00 08 */	lha r0, 8(r30)
/* 80C0CF58  2C 00 00 21 */	cmpwi r0, 0x21
/* 80C0CF5C  40 82 00 20 */	bne lbl_80C0CF7C
/* 80C0CF60  7F E3 FB 78 */	mr r3, r31
/* 80C0CF64  7F C4 F3 78 */	mr r4, r30
/* 80C0CF68  48 00 00 31 */	bl checkGraSub__11daObj_GrA_cFP10fopAc_ac_c
/* 80C0CF6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C0CF70  41 82 00 0C */	beq lbl_80C0CF7C
/* 80C0CF74  7F C3 F3 78 */	mr r3, r30
/* 80C0CF78  48 00 00 08 */	b lbl_80C0CF80
lbl_80C0CF7C:
/* 80C0CF7C  38 60 00 00 */	li r3, 0
lbl_80C0CF80:
/* 80C0CF80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C0CF84  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C0CF88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C0CF8C  7C 08 03 A6 */	mtlr r0
/* 80C0CF90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C0CF94  4E 80 00 20 */	blr 
