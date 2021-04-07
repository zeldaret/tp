lbl_8018AC3C:
/* 8018AC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018AC40  7C 08 02 A6 */	mflr r0
/* 8018AC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018AC48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018AC4C  93 C1 00 08 */	stw r30, 8(r1)
/* 8018AC50  7C 7E 1B 78 */	mr r30, r3
/* 8018AC54  A8 83 03 AC */	lha r4, 0x3ac(r3)
/* 8018AC58  7C 80 07 35 */	extsh. r0, r4
/* 8018AC5C  41 82 00 10 */	beq lbl_8018AC6C
/* 8018AC60  38 04 FF FF */	addi r0, r4, -1
/* 8018AC64  B0 1E 03 AC */	sth r0, 0x3ac(r30)
/* 8018AC68  48 00 00 B8 */	b lbl_8018AD20
lbl_8018AC6C:
/* 8018AC6C  7C 80 07 35 */	extsh. r0, r4
/* 8018AC70  40 82 00 B0 */	bne lbl_8018AD20
/* 8018AC74  88 1E 02 65 */	lbz r0, 0x265(r30)
/* 8018AC78  54 00 08 3C */	slwi r0, r0, 1
/* 8018AC7C  38 8D 81 40 */	la r4, msgTbl(r13) /* 804506C0-_SDA_BASE_ */
/* 8018AC80  7C 84 02 2E */	lhzx r4, r4, r0
/* 8018AC84  38 A0 00 01 */	li r5, 1
/* 8018AC88  38 C0 00 00 */	li r6, 0
/* 8018AC8C  48 00 24 59 */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 8018AC90  7F C3 F3 78 */	mr r3, r30
/* 8018AC94  88 9E 02 6D */	lbz r4, 0x26d(r30)
/* 8018AC98  38 A0 00 FF */	li r5, 0xff
/* 8018AC9C  38 C0 00 00 */	li r6, 0
/* 8018ACA0  3C E0 80 43 */	lis r7, g_fsHIO@ha /* 0x8042C9EC@ha */
/* 8018ACA4  3B E7 C9 EC */	addi r31, r7, g_fsHIO@l /* 0x8042C9EC@l */
/* 8018ACA8  88 FF 00 08 */	lbz r7, 8(r31)
/* 8018ACAC  48 00 29 A5 */	bl selectWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc
/* 8018ACB0  7F C3 F3 78 */	mr r3, r30
/* 8018ACB4  88 9E 02 65 */	lbz r4, 0x265(r30)
/* 8018ACB8  38 A0 00 FF */	li r5, 0xff
/* 8018ACBC  38 C0 00 00 */	li r6, 0
/* 8018ACC0  88 FF 00 08 */	lbz r7, 8(r31)
/* 8018ACC4  48 00 29 8D */	bl selectWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc
/* 8018ACC8  7F C3 F3 78 */	mr r3, r30
/* 8018ACCC  38 80 03 1F */	li r4, 0x31f
/* 8018ACD0  38 A0 03 29 */	li r5, 0x329
/* 8018ACD4  4B FF BE 75 */	bl menuMoveAnmInitSet__14dFile_select_cFii
/* 8018ACD8  88 1E 02 65 */	lbz r0, 0x265(r30)
/* 8018ACDC  54 00 10 3A */	slwi r0, r0, 2
/* 8018ACE0  7F C3 F3 78 */	mr r3, r30
/* 8018ACE4  3C 80 80 3C */	lis r4, SelOpenStartFrameTbl@ha /* 0x803BA86C@ha */
/* 8018ACE8  38 84 A8 6C */	addi r4, r4, SelOpenStartFrameTbl@l /* 0x803BA86C@l */
/* 8018ACEC  7C 84 00 2E */	lwzx r4, r4, r0
/* 8018ACF0  3C A0 80 3C */	lis r5, SelOpenEndFrameTbl@ha /* 0x803BA878@ha */
/* 8018ACF4  38 A5 A8 78 */	addi r5, r5, SelOpenEndFrameTbl@l /* 0x803BA878@l */
/* 8018ACF8  7C A5 00 2E */	lwzx r5, r5, r0
/* 8018ACFC  4B FF AC 99 */	bl selectDataMoveAnmInitSet__14dFile_select_cFii
/* 8018AD00  7F C3 F3 78 */	mr r3, r30
/* 8018AD04  38 80 00 01 */	li r4, 1
/* 8018AD08  48 00 26 99 */	bl modoruTxtDispAnmInit__14dFile_select_cFUc
/* 8018AD0C  7F C3 F3 78 */	mr r3, r30
/* 8018AD10  38 80 00 01 */	li r4, 1
/* 8018AD14  48 00 27 E5 */	bl ketteiTxtDispAnmInit__14dFile_select_cFUc
/* 8018AD18  38 00 00 2C */	li r0, 0x2c
/* 8018AD1C  98 1E 02 6F */	stb r0, 0x26f(r30)
lbl_8018AD20:
/* 8018AD20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018AD24  83 C1 00 08 */	lwz r30, 8(r1)
/* 8018AD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018AD2C  7C 08 03 A6 */	mtlr r0
/* 8018AD30  38 21 00 10 */	addi r1, r1, 0x10
/* 8018AD34  4E 80 00 20 */	blr 
