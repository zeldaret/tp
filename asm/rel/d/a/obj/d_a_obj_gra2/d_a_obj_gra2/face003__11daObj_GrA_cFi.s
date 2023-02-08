lbl_80C04478:
/* 80C04478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C0447C  7C 08 02 A6 */	mflr r0
/* 80C04480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C04488  7C 7F 1B 78 */	mr r31, r3
/* 80C0448C  2C 04 00 00 */	cmpwi r4, 0
/* 80C04490  41 82 00 18 */	beq lbl_80C044A8
/* 80C04494  38 80 00 1B */	li r4, 0x1b
/* 80C04498  38 A0 00 01 */	li r5, 1
/* 80C0449C  C0 3F 0A 98 */	lfs f1, 0xa98(r31)
/* 80C044A0  4B FF D0 55 */	bl setFaceAnm__11daObj_GrA_cFibf
/* 80C044A4  48 00 00 5C */	b lbl_80C04500
lbl_80C044A8:
/* 80C044A8  38 80 00 01 */	li r4, 1
/* 80C044AC  88 1F 07 F1 */	lbz r0, 0x7f1(r31)
/* 80C044B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C044B4  40 82 00 1C */	bne lbl_80C044D0
/* 80C044B8  3C 60 80 C1 */	lis r3, lit_4333@ha /* 0x80C0FB98@ha */
/* 80C044BC  C0 23 FB 98 */	lfs f1, lit_4333@l(r3)  /* 0x80C0FB98@l */
/* 80C044C0  C0 1F 07 F8 */	lfs f0, 0x7f8(r31)
/* 80C044C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C044C8  41 82 00 08 */	beq lbl_80C044D0
/* 80C044CC  38 80 00 00 */	li r4, 0
lbl_80C044D0:
/* 80C044D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C044D4  41 82 00 2C */	beq lbl_80C04500
/* 80C044D8  7F E3 FB 78 */	mr r3, r31
/* 80C044DC  38 80 00 00 */	li r4, 0
/* 80C044E0  3C A0 80 C1 */	lis r5, lit_4618@ha /* 0x80C0FBB4@ha */
/* 80C044E4  C0 25 FB B4 */	lfs f1, lit_4618@l(r5)  /* 0x80C0FBB4@l */
/* 80C044E8  4B FF D2 C5 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C044EC  7F E3 FB 78 */	mr r3, r31
/* 80C044F0  38 80 00 16 */	li r4, 0x16
/* 80C044F4  38 A0 00 01 */	li r5, 1
/* 80C044F8  C0 3F 0A 98 */	lfs f1, 0xa98(r31)
/* 80C044FC  4B FF CF F9 */	bl setFaceAnm__11daObj_GrA_cFibf
lbl_80C04500:
/* 80C04500  38 60 00 01 */	li r3, 1
/* 80C04504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C04508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C0450C  7C 08 03 A6 */	mtlr r0
/* 80C04510  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04514  4E 80 00 20 */	blr 
