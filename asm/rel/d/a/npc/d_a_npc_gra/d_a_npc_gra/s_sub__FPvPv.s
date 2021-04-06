lbl_809BFA88:
/* 809BFA88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BFA8C  7C 08 02 A6 */	mflr r0
/* 809BFA90  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BFA94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BFA98  93 C1 00 08 */	stw r30, 8(r1)
/* 809BFA9C  7C 7E 1B 78 */	mr r30, r3
/* 809BFAA0  7C 9F 23 78 */	mr r31, r4
/* 809BFAA4  4B 65 92 3D */	bl fopAc_IsActor__FPv
/* 809BFAA8  2C 03 00 00 */	cmpwi r3, 0
/* 809BFAAC  41 82 00 2C */	beq lbl_809BFAD8
/* 809BFAB0  A8 1E 00 08 */	lha r0, 8(r30)
/* 809BFAB4  2C 00 00 22 */	cmpwi r0, 0x22
/* 809BFAB8  40 82 00 20 */	bne lbl_809BFAD8
/* 809BFABC  7F E3 FB 78 */	mr r3, r31
/* 809BFAC0  7F C4 F3 78 */	mr r4, r30
/* 809BFAC4  48 00 00 31 */	bl checkTagGraSub__11daNpc_grA_cFP10fopAc_ac_c
/* 809BFAC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809BFACC  41 82 00 0C */	beq lbl_809BFAD8
/* 809BFAD0  7F C3 F3 78 */	mr r3, r30
/* 809BFAD4  48 00 00 08 */	b lbl_809BFADC
lbl_809BFAD8:
/* 809BFAD8  38 60 00 00 */	li r3, 0
lbl_809BFADC:
/* 809BFADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BFAE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BFAE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BFAE8  7C 08 03 A6 */	mtlr r0
/* 809BFAEC  38 21 00 10 */	addi r1, r1, 0x10
/* 809BFAF0  4E 80 00 20 */	blr 
