lbl_801F191C:
/* 801F191C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F1920  7C 08 02 A6 */	mflr r0
/* 801F1924  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F1928  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F192C  7C 7F 1B 78 */	mr r31, r3
/* 801F1930  38 60 00 00 */	li r3, 0
/* 801F1934  48 07 19 79 */	bl cAPICPad_ANY_BUTTON__FUl
/* 801F1938  28 03 00 00 */	cmplwi r3, 0
/* 801F193C  41 82 00 58 */	beq lbl_801F1994
/* 801F1940  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801F1944  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801F1948  A8 03 00 94 */	lha r0, 0x94(r3)
/* 801F194C  2C 00 00 00 */	cmpwi r0, 0
/* 801F1950  40 82 00 44 */	bne lbl_801F1994
/* 801F1954  88 1F 01 B5 */	lbz r0, 0x1b5(r31)
/* 801F1958  28 00 00 3D */	cmplwi r0, 0x3d
/* 801F195C  40 82 00 10 */	bne lbl_801F196C
/* 801F1960  7F E3 FB 78 */	mr r3, r31
/* 801F1964  48 00 01 D5 */	bl closeSelect__12dMenu_save_cFv
/* 801F1968  48 00 00 2C */	b lbl_801F1994
lbl_801F196C:
/* 801F196C  38 7F 01 C4 */	addi r3, r31, 0x1c4
/* 801F1970  48 17 06 A9 */	bl __ptmf_test
/* 801F1974  2C 03 00 00 */	cmpwi r3, 0
/* 801F1978  41 82 00 14 */	beq lbl_801F198C
/* 801F197C  7F E3 FB 78 */	mr r3, r31
/* 801F1980  39 9F 01 C4 */	addi r12, r31, 0x1c4
/* 801F1984  48 17 07 01 */	bl __ptmf_scall
/* 801F1988  60 00 00 00 */	nop 
lbl_801F198C:
/* 801F198C  88 1F 01 B5 */	lbz r0, 0x1b5(r31)
/* 801F1990  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F1994:
/* 801F1994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F1998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F199C  7C 08 03 A6 */	mtlr r0
/* 801F19A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801F19A4  4E 80 00 20 */	blr 
