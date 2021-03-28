lbl_80C03B7C:
/* 80C03B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C03B80  7C 08 02 A6 */	mflr r0
/* 80C03B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C03B88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C03B8C  7C 7F 1B 78 */	mr r31, r3
/* 80C03B90  2C 04 00 00 */	cmpwi r4, 0
/* 80C03B94  41 82 00 14 */	beq lbl_80C03BA8
/* 80C03B98  38 80 00 04 */	li r4, 4
/* 80C03B9C  C0 3F 0A 94 */	lfs f1, 0xa94(r31)
/* 80C03BA0  4B FF D8 11 */	bl setBaseAnm__11daObj_GrA_cFif
/* 80C03BA4  48 00 00 60 */	b lbl_80C03C04
lbl_80C03BA8:
/* 80C03BA8  80 9F 07 54 */	lwz r4, 0x754(r31)
/* 80C03BAC  38 A0 00 01 */	li r5, 1
/* 80C03BB0  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80C03BB4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C03BB8  40 82 00 1C */	bne lbl_80C03BD4
/* 80C03BBC  3C 60 80 C1 */	lis r3, lit_4333@ha
/* 80C03BC0  C0 23 FB 98 */	lfs f1, lit_4333@l(r3)
/* 80C03BC4  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80C03BC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C03BCC  41 82 00 08 */	beq lbl_80C03BD4
/* 80C03BD0  38 A0 00 00 */	li r5, 0
lbl_80C03BD4:
/* 80C03BD4  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80C03BD8  41 82 00 2C */	beq lbl_80C03C04
/* 80C03BDC  7F E3 FB 78 */	mr r3, r31
/* 80C03BE0  38 80 00 00 */	li r4, 0
/* 80C03BE4  3C A0 80 C1 */	lis r5, m__17daObj_GrA_Param_c@ha
/* 80C03BE8  38 A5 FA 7C */	addi r5, r5, m__17daObj_GrA_Param_c@l
/* 80C03BEC  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C03BF0  4B FF DB 9D */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C03BF4  7F E3 FB 78 */	mr r3, r31
/* 80C03BF8  38 80 00 00 */	li r4, 0
/* 80C03BFC  C0 3F 0A 94 */	lfs f1, 0xa94(r31)
/* 80C03C00  4B FF D7 B1 */	bl setBaseAnm__11daObj_GrA_cFif
lbl_80C03C04:
/* 80C03C04  38 60 00 01 */	li r3, 1
/* 80C03C08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C03C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C03C10  7C 08 03 A6 */	mtlr r0
/* 80C03C14  38 21 00 10 */	addi r1, r1, 0x10
/* 80C03C18  4E 80 00 20 */	blr 
