lbl_80B8064C:
/* 80B8064C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B80650  7C 08 02 A6 */	mflr r0
/* 80B80654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B80658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B8065C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B80660  7C 7E 1B 78 */	mr r30, r3
/* 80B80664  7C 9F 23 78 */	mr r31, r4
/* 80B80668  4B 49 86 79 */	bl fopAc_IsActor__FPv
/* 80B8066C  2C 03 00 00 */	cmpwi r3, 0
/* 80B80670  41 82 00 70 */	beq lbl_80B806E0
/* 80B80674  A8 1E 00 08 */	lha r0, 8(r30)
/* 80B80678  2C 00 00 E5 */	cmpwi r0, 0xe5
/* 80B8067C  40 82 00 64 */	bne lbl_80B806E0
/* 80B80680  7C 1E F8 40 */	cmplw r30, r31
/* 80B80684  41 82 00 5C */	beq lbl_80B806E0
/* 80B80688  88 1E 14 E8 */	lbz r0, 0x14e8(r30)
/* 80B8068C  2C 00 00 00 */	cmpwi r0, 0
/* 80B80690  40 82 00 50 */	bne lbl_80B806E0
/* 80B80694  7F C3 F3 78 */	mr r3, r30
/* 80B80698  4B FF BF 4D */	bl getMultiModeFromParam__11daNpc_zrA_cFv
/* 80B8069C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B806A0  41 82 00 40 */	beq lbl_80B806E0
/* 80B806A4  7F E3 FB 78 */	mr r3, r31
/* 80B806A8  4B FF BF 3D */	bl getMultiModeFromParam__11daNpc_zrA_cFv
/* 80B806AC  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80B806B0  7F C3 F3 78 */	mr r3, r30
/* 80B806B4  4B FF BF 31 */	bl getMultiModeFromParam__11daNpc_zrA_cFv
/* 80B806B8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B806BC  7C 00 F8 40 */	cmplw r0, r31
/* 80B806C0  40 82 00 20 */	bne lbl_80B806E0
/* 80B806C4  7F C3 F3 78 */	mr r3, r30
/* 80B806C8  4B FF BF 4D */	bl getMultiNoFromParam__11daNpc_zrA_cFv
/* 80B806CC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B806D0  28 00 00 02 */	cmplwi r0, 2
/* 80B806D4  40 82 00 0C */	bne lbl_80B806E0
/* 80B806D8  7F C3 F3 78 */	mr r3, r30
/* 80B806DC  48 00 00 08 */	b lbl_80B806E4
lbl_80B806E0:
/* 80B806E0  38 60 00 00 */	li r3, 0
lbl_80B806E4:
/* 80B806E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B806E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B806EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B806F0  7C 08 03 A6 */	mtlr r0
/* 80B806F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B806F8  4E 80 00 20 */	blr 
