lbl_801F2DD4:
/* 801F2DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F2DD8  7C 08 02 A6 */	mflr r0
/* 801F2DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F2DE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F2DE4  93 C1 00 08 */	stw r30, 8(r1)
/* 801F2DE8  7C 7E 1B 78 */	mr r30, r3
/* 801F2DEC  48 00 1B 3D */	bl headerTxtChangeAnm__12dMenu_save_cFv
/* 801F2DF0  7C 7F 1B 78 */	mr r31, r3
/* 801F2DF4  7F C3 F3 78 */	mr r3, r30
/* 801F2DF8  48 00 34 81 */	bl ketteiTxtDispAnm__12dMenu_save_cFv
/* 801F2DFC  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 801F2E00  88 84 00 3D */	lbz r4, 0x3d(r4)
/* 801F2E04  30 04 FF FF */	addic r0, r4, -1
/* 801F2E08  7C 00 21 10 */	subfe r0, r0, r4
/* 801F2E0C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801F2E10  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F2E14  28 00 00 01 */	cmplwi r0, 1
/* 801F2E18  40 82 00 58 */	bne lbl_801F2E70
/* 801F2E1C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F2E20  28 00 00 01 */	cmplwi r0, 1
/* 801F2E24  40 82 00 4C */	bne lbl_801F2E70
/* 801F2E28  28 04 00 01 */	cmplwi r4, 1
/* 801F2E2C  40 82 00 44 */	bne lbl_801F2E70
/* 801F2E30  88 1E 01 BC */	lbz r0, 0x1bc(r30)
/* 801F2E34  28 00 00 04 */	cmplwi r0, 4
/* 801F2E38  40 82 00 18 */	bne lbl_801F2E50
/* 801F2E3C  38 00 00 04 */	li r0, 4
/* 801F2E40  98 1E 01 BA */	stb r0, 0x1ba(r30)
/* 801F2E44  7F C3 F3 78 */	mr r3, r30
/* 801F2E48  4B FF ED B1 */	bl closeSelect2__12dMenu_save_cFv
/* 801F2E4C  48 00 00 24 */	b lbl_801F2E70
lbl_801F2E50:
/* 801F2E50  38 00 00 01 */	li r0, 1
/* 801F2E54  98 1E 01 BB */	stb r0, 0x1bb(r30)
/* 801F2E58  7F C3 F3 78 */	mr r3, r30
/* 801F2E5C  48 00 02 5D */	bl restartInit__12dMenu_save_cFv
/* 801F2E60  38 00 00 03 */	li r0, 3
/* 801F2E64  98 1E 01 BA */	stb r0, 0x1ba(r30)
/* 801F2E68  38 00 00 29 */	li r0, 0x29
/* 801F2E6C  98 1E 01 B2 */	stb r0, 0x1b2(r30)
lbl_801F2E70:
/* 801F2E70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F2E74  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F2E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F2E7C  7C 08 03 A6 */	mtlr r0
/* 801F2E80  38 21 00 10 */	addi r1, r1, 0x10
/* 801F2E84  4E 80 00 20 */	blr 
