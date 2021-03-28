lbl_8018A868:
/* 8018A868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018A86C  7C 08 02 A6 */	mflr r0
/* 8018A870  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018A874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018A878  93 C1 00 08 */	stw r30, 8(r1)
/* 8018A87C  7C 7E 1B 78 */	mr r30, r3
/* 8018A880  48 00 29 DD */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 8018A884  7C 7F 1B 78 */	mr r31, r3
/* 8018A888  88 9E 02 6D */	lbz r4, 0x26d(r30)
/* 8018A88C  7C 7E 22 14 */	add r3, r30, r4
/* 8018A890  88 03 02 5B */	lbz r0, 0x25b(r3)
/* 8018A894  28 00 00 00 */	cmplwi r0, 0
/* 8018A898  40 82 00 10 */	bne lbl_8018A8A8
/* 8018A89C  88 03 02 58 */	lbz r0, 0x258(r3)
/* 8018A8A0  28 00 00 00 */	cmplwi r0, 0
/* 8018A8A4  41 82 00 30 */	beq lbl_8018A8D4
lbl_8018A8A8:
/* 8018A8A8  54 80 10 3A */	slwi r0, r4, 2
/* 8018A8AC  7C 7E 02 14 */	add r3, r30, r0
/* 8018A8B0  80 63 02 2C */	lwz r3, 0x22c(r3)
/* 8018A8B4  3C 80 80 43 */	lis r4, g_fsHIO@ha
/* 8018A8B8  38 84 C9 EC */	addi r4, r4, g_fsHIO@l
/* 8018A8BC  88 84 00 07 */	lbz r4, 7(r4)
/* 8018A8C0  38 A0 00 00 */	li r5, 0
/* 8018A8C4  38 C0 00 FF */	li r6, 0xff
/* 8018A8C8  38 E0 00 00 */	li r7, 0
/* 8018A8CC  48 0C AF AD */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018A8D0  48 00 00 2C */	b lbl_8018A8FC
lbl_8018A8D4:
/* 8018A8D4  54 80 10 3A */	slwi r0, r4, 2
/* 8018A8D8  7C 7E 02 14 */	add r3, r30, r0
/* 8018A8DC  80 63 02 20 */	lwz r3, 0x220(r3)
/* 8018A8E0  3C 80 80 43 */	lis r4, g_fsHIO@ha
/* 8018A8E4  38 84 C9 EC */	addi r4, r4, g_fsHIO@l
/* 8018A8E8  88 84 00 07 */	lbz r4, 7(r4)
/* 8018A8EC  38 A0 00 00 */	li r5, 0
/* 8018A8F0  38 C0 00 FF */	li r6, 0xff
/* 8018A8F4  38 E0 00 00 */	li r7, 0
/* 8018A8F8  48 0C AF 81 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
lbl_8018A8FC:
/* 8018A8FC  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 8018A900  88 84 00 3D */	lbz r4, 0x3d(r4)
/* 8018A904  30 04 FF FF */	addic r0, r4, -1
/* 8018A908  7C 00 21 10 */	subfe r0, r0, r4
/* 8018A90C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8018A910  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8018A914  28 00 00 01 */	cmplwi r0, 1
/* 8018A918  40 82 00 30 */	bne lbl_8018A948
/* 8018A91C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018A920  28 00 00 01 */	cmplwi r0, 1
/* 8018A924  40 82 00 24 */	bne lbl_8018A948
/* 8018A928  28 04 00 01 */	cmplwi r4, 1
/* 8018A92C  40 82 00 1C */	bne lbl_8018A948
/* 8018A930  3C 60 80 43 */	lis r3, g_fsHIO@ha
/* 8018A934  38 63 C9 EC */	addi r3, r3, g_fsHIO@l
/* 8018A938  88 03 00 0A */	lbz r0, 0xa(r3)
/* 8018A93C  B0 1E 03 AC */	sth r0, 0x3ac(r30)
/* 8018A940  38 00 00 2A */	li r0, 0x2a
/* 8018A944  98 1E 02 6F */	stb r0, 0x26f(r30)
lbl_8018A948:
/* 8018A948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018A94C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8018A950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018A954  7C 08 03 A6 */	mtlr r0
/* 8018A958  38 21 00 10 */	addi r1, r1, 0x10
/* 8018A95C  4E 80 00 20 */	blr 
