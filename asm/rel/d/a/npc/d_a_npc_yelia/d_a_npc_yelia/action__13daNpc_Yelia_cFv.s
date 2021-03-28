lbl_80B4E930:
/* 80B4E930  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B4E934  7C 08 02 A6 */	mflr r0
/* 80B4E938  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4E93C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B4E940  7C 7F 1B 78 */	mr r31, r3
/* 80B4E944  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80B4E948  38 A0 FF FF */	li r5, -1
/* 80B4E94C  4B 5F C0 F4 */	b hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80B4E950  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80B4E954  2C 00 00 00 */	cmpwi r0, 0
/* 80B4E958  41 82 00 5C */	beq lbl_80B4E9B4
/* 80B4E95C  38 C0 00 00 */	li r6, 0
/* 80B4E960  38 60 00 00 */	li r3, 0
/* 80B4E964  7C C4 33 78 */	mr r4, r6
/* 80B4E968  3C A0 80 B5 */	lis r5, lit_4330@ha
/* 80B4E96C  C0 05 23 7C */	lfs f0, lit_4330@l(r5)
/* 80B4E970  38 00 00 02 */	li r0, 2
/* 80B4E974  7C 09 03 A6 */	mtctr r0
lbl_80B4E978:
/* 80B4E978  7C BF 22 14 */	add r5, r31, r4
/* 80B4E97C  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80B4E980  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80B4E984  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80B4E988  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B4E98C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B4E990  38 63 00 04 */	addi r3, r3, 4
/* 80B4E994  38 84 00 06 */	addi r4, r4, 6
/* 80B4E998  42 00 FF E0 */	bdnz lbl_80B4E978
/* 80B4E99C  38 00 00 00 */	li r0, 0
/* 80B4E9A0  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B4E9A4  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B4E9A8  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B4E9AC  38 00 00 01 */	li r0, 1
/* 80B4E9B0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B4E9B4:
/* 80B4E9B4  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80B4E9B8  4B 81 36 60 */	b __ptmf_test
/* 80B4E9BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B4E9C0  41 82 00 54 */	beq lbl_80B4EA14
/* 80B4E9C4  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 80B4E9C8  38 9F 0F A4 */	addi r4, r31, 0xfa4
/* 80B4E9CC  4B 81 36 7C */	b __ptmf_cmpr
/* 80B4E9D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B4E9D4  40 82 00 1C */	bne lbl_80B4E9F0
/* 80B4E9D8  7F E3 FB 78 */	mr r3, r31
/* 80B4E9DC  38 80 00 00 */	li r4, 0
/* 80B4E9E0  39 9F 0F B0 */	addi r12, r31, 0xfb0
/* 80B4E9E4  4B 81 36 A0 */	b __ptmf_scall
/* 80B4E9E8  60 00 00 00 */	nop 
/* 80B4E9EC  48 00 00 28 */	b lbl_80B4EA14
lbl_80B4E9F0:
/* 80B4E9F0  80 7F 0F A4 */	lwz r3, 0xfa4(r31)
/* 80B4E9F4  80 1F 0F A8 */	lwz r0, 0xfa8(r31)
/* 80B4E9F8  90 61 00 08 */	stw r3, 8(r1)
/* 80B4E9FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B4EA00  80 1F 0F AC */	lwz r0, 0xfac(r31)
/* 80B4EA04  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B4EA08  7F E3 FB 78 */	mr r3, r31
/* 80B4EA0C  38 81 00 08 */	addi r4, r1, 8
/* 80B4EA10  48 00 06 71 */	bl setAction__13daNpc_Yelia_cFM13daNpc_Yelia_cFPCvPvPv_i
lbl_80B4EA14:
/* 80B4EA14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B4EA18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B4EA1C  7C 08 03 A6 */	mtlr r0
/* 80B4EA20  38 21 00 20 */	addi r1, r1, 0x20
/* 80B4EA24  4E 80 00 20 */	blr 
