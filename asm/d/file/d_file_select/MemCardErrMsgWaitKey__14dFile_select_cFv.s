lbl_8018E93C:
/* 8018E93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018E940  7C 08 02 A6 */	mflr r0
/* 8018E944  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018E948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018E94C  7C 7F 1B 78 */	mr r31, r3
/* 8018E950  38 60 00 00 */	li r3, 0
/* 8018E954  48 0D 49 59 */	bl cAPICPad_ANY_BUTTON__FUl
/* 8018E958  28 03 00 00 */	cmplwi r3, 0
/* 8018E95C  41 82 00 40 */	beq lbl_8018E99C
/* 8018E960  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8018E964  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8018E968  A8 03 00 94 */	lha r0, 0x94(r3)
/* 8018E96C  2C 00 00 00 */	cmpwi r0, 0
/* 8018E970  40 82 00 2C */	bne lbl_8018E99C
/* 8018E974  38 7F 02 90 */	addi r3, r31, 0x290
/* 8018E978  48 1D 36 A1 */	bl __ptmf_test
/* 8018E97C  2C 03 00 00 */	cmpwi r3, 0
/* 8018E980  41 82 00 14 */	beq lbl_8018E994
/* 8018E984  7F E3 FB 78 */	mr r3, r31
/* 8018E988  39 9F 02 90 */	addi r12, r31, 0x290
/* 8018E98C  48 1D 36 F9 */	bl __ptmf_scall
/* 8018E990  60 00 00 00 */	nop 
lbl_8018E994:
/* 8018E994  88 1F 02 74 */	lbz r0, 0x274(r31)
/* 8018E998  98 1F 02 71 */	stb r0, 0x271(r31)
lbl_8018E99C:
/* 8018E99C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018E9A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018E9A4  7C 08 03 A6 */	mtlr r0
/* 8018E9A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8018E9AC  4E 80 00 20 */	blr 
