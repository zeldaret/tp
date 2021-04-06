lbl_80C04700:
/* 80C04700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04704  7C 08 02 A6 */	mflr r0
/* 80C04708  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C0470C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C04710  7C 7F 1B 78 */	mr r31, r3
/* 80C04714  2C 04 00 00 */	cmpwi r4, 0
/* 80C04718  41 82 00 18 */	beq lbl_80C04730
/* 80C0471C  38 80 00 1E */	li r4, 0x1e
/* 80C04720  38 A0 00 01 */	li r5, 1
/* 80C04724  C0 3F 0A 98 */	lfs f1, 0xa98(r31)
/* 80C04728  4B FF CD CD */	bl setFaceAnm__11daObj_GrA_cFibf
/* 80C0472C  48 00 00 5C */	b lbl_80C04788
lbl_80C04730:
/* 80C04730  38 80 00 01 */	li r4, 1
/* 80C04734  88 1F 07 F1 */	lbz r0, 0x7f1(r31)
/* 80C04738  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C0473C  40 82 00 1C */	bne lbl_80C04758
/* 80C04740  3C 60 80 C1 */	lis r3, lit_4333@ha /* 0x80C0FB98@ha */
/* 80C04744  C0 23 FB 98 */	lfs f1, lit_4333@l(r3)  /* 0x80C0FB98@l */
/* 80C04748  C0 1F 07 F8 */	lfs f0, 0x7f8(r31)
/* 80C0474C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C04750  41 82 00 08 */	beq lbl_80C04758
/* 80C04754  38 80 00 00 */	li r4, 0
lbl_80C04758:
/* 80C04758  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C0475C  41 82 00 2C */	beq lbl_80C04788
/* 80C04760  7F E3 FB 78 */	mr r3, r31
/* 80C04764  38 80 00 05 */	li r4, 5
/* 80C04768  3C A0 80 C1 */	lis r5, lit_4618@ha /* 0x80C0FBB4@ha */
/* 80C0476C  C0 25 FB B4 */	lfs f1, lit_4618@l(r5)  /* 0x80C0FBB4@l */
/* 80C04770  4B FF D0 3D */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C04774  7F E3 FB 78 */	mr r3, r31
/* 80C04778  38 80 00 19 */	li r4, 0x19
/* 80C0477C  38 A0 00 01 */	li r5, 1
/* 80C04780  C0 3F 0A 98 */	lfs f1, 0xa98(r31)
/* 80C04784  4B FF CD 71 */	bl setFaceAnm__11daObj_GrA_cFibf
lbl_80C04788:
/* 80C04788  38 60 00 01 */	li r3, 1
/* 80C0478C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C04790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04794  7C 08 03 A6 */	mtlr r0
/* 80C04798  38 21 00 10 */	addi r1, r1, 0x10
/* 80C0479C  4E 80 00 20 */	blr 
