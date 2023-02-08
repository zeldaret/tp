lbl_80C036B4:
/* 80C036B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C036B8  7C 08 02 A6 */	mflr r0
/* 80C036BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C036C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C036C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C036C8  7C 7E 1B 78 */	mr r30, r3
/* 80C036CC  7C 9F 23 78 */	mr r31, r4
/* 80C036D0  4B 41 56 11 */	bl fopAc_IsActor__FPv
/* 80C036D4  2C 03 00 00 */	cmpwi r3, 0
/* 80C036D8  41 82 00 2C */	beq lbl_80C03704
/* 80C036DC  A8 1E 00 08 */	lha r0, 8(r30)
/* 80C036E0  2C 00 00 22 */	cmpwi r0, 0x22
/* 80C036E4  40 82 00 20 */	bne lbl_80C03704
/* 80C036E8  7F E3 FB 78 */	mr r3, r31
/* 80C036EC  7F C4 F3 78 */	mr r4, r30
/* 80C036F0  48 00 00 31 */	bl checkTagGraSub__11daObj_GrA_cFP10fopAc_ac_c
/* 80C036F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C036F8  41 82 00 0C */	beq lbl_80C03704
/* 80C036FC  7F C3 F3 78 */	mr r3, r30
/* 80C03700  48 00 00 08 */	b lbl_80C03708
lbl_80C03704:
/* 80C03704  38 60 00 00 */	li r3, 0
lbl_80C03708:
/* 80C03708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C0370C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C03710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C03714  7C 08 03 A6 */	mtlr r0
/* 80C03718  38 21 00 10 */	addi r1, r1, 0x10
/* 80C0371C  4E 80 00 20 */	blr 
