lbl_80D492A8:
/* 80D492A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D492AC  7C 08 02 A6 */	mflr r0
/* 80D492B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D492B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D492B8  4B 61 8F 24 */	b _savegpr_29
/* 80D492BC  7C 7F 1B 78 */	mr r31, r3
/* 80D492C0  3C 80 80 D5 */	lis r4, m__14daPeru_Param_c@ha
/* 80D492C4  3B C4 C0 60 */	addi r30, r4, m__14daPeru_Param_c@l
/* 80D492C8  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80D492CC  2C 00 00 02 */	cmpwi r0, 2
/* 80D492D0  41 82 00 B0 */	beq lbl_80D49380
/* 80D492D4  40 80 01 28 */	bge lbl_80D493FC
/* 80D492D8  2C 00 FF FF */	cmpwi r0, -1
/* 80D492DC  41 82 01 20 */	beq lbl_80D493FC
/* 80D492E0  40 80 00 08 */	bge lbl_80D492E8
/* 80D492E4  48 00 01 18 */	b lbl_80D493FC
lbl_80D492E8:
/* 80D492E8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80D492EC  2C 00 00 02 */	cmpwi r0, 2
/* 80D492F0  41 82 00 24 */	beq lbl_80D49314
/* 80D492F4  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80D492F8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80D492FC  4B 3F C5 9C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D49300  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80D49304  38 00 00 02 */	li r0, 2
/* 80D49308  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80D4930C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D49310  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80D49314:
/* 80D49314  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80D49318  2C 00 00 08 */	cmpwi r0, 8
/* 80D4931C  41 82 00 24 */	beq lbl_80D49340
/* 80D49320  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80D49324  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80D49328  4B 3F C5 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D4932C  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80D49330  38 00 00 08 */	li r0, 8
/* 80D49334  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80D49338  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D4933C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80D49340:
/* 80D49340  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 80D49344  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80D49348  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D4934C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80D49350  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80D49354  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80D49358  38 00 00 00 */	li r0, 0
/* 80D4935C  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
/* 80D49360  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80D49364  38 03 40 00 */	addi r0, r3, 0x4000
/* 80D49368  B0 1F 0E 6E */	sth r0, 0xe6e(r31)
/* 80D4936C  38 00 00 3A */	li r0, 0x3a
/* 80D49370  B0 1F 0E 6C */	sth r0, 0xe6c(r31)
/* 80D49374  38 00 00 02 */	li r0, 2
/* 80D49378  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80D4937C  48 00 00 80 */	b lbl_80D493FC
lbl_80D49380:
/* 80D49380  A8 9F 0E 6E */	lha r4, 0xe6e(r31)
/* 80D49384  38 A0 00 02 */	li r5, 2
/* 80D49388  38 C0 00 08 */	li r6, 8
/* 80D4938C  38 E0 00 01 */	li r7, 1
/* 80D49390  39 00 00 00 */	li r8, 0
/* 80D49394  4B 40 22 B4 */	b step__8daNpcT_cFsiiii
/* 80D49398  A8 7F 0E 6C */	lha r3, 0xe6c(r31)
/* 80D4939C  38 03 FF FF */	addi r0, r3, -1
/* 80D493A0  B0 1F 0E 6C */	sth r0, 0xe6c(r31)
/* 80D493A4  A8 1F 0E 6C */	lha r0, 0xe6c(r31)
/* 80D493A8  2C 00 00 00 */	cmpwi r0, 0
/* 80D493AC  41 81 00 44 */	bgt lbl_80D493F0
/* 80D493B0  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D493B4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80D493B8  3C 60 80 D5 */	lis r3, lit_5259@ha
/* 80D493BC  38 83 C5 98 */	addi r4, r3, lit_5259@l
/* 80D493C0  80 64 00 00 */	lwz r3, 0(r4)
/* 80D493C4  80 04 00 04 */	lwz r0, 4(r4)
/* 80D493C8  90 61 00 08 */	stw r3, 8(r1)
/* 80D493CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D493D0  80 04 00 08 */	lwz r0, 8(r4)
/* 80D493D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D493D8  7F E3 FB 78 */	mr r3, r31
/* 80D493DC  38 81 00 08 */	addi r4, r1, 8
/* 80D493E0  38 A0 00 00 */	li r5, 0
/* 80D493E4  4B FF EF 81 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D493E8  38 60 00 01 */	li r3, 1
/* 80D493EC  48 00 00 14 */	b lbl_80D49400
lbl_80D493F0:
/* 80D493F0  A8 7F 0E 6E */	lha r3, 0xe6e(r31)
/* 80D493F4  38 03 FE AB */	addi r0, r3, -341
/* 80D493F8  B0 1F 0E 6E */	sth r0, 0xe6e(r31)
lbl_80D493FC:
/* 80D493FC  38 60 00 00 */	li r3, 0
lbl_80D49400:
/* 80D49400  39 61 00 30 */	addi r11, r1, 0x30
/* 80D49404  4B 61 8E 24 */	b _restgpr_29
/* 80D49408  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4940C  7C 08 03 A6 */	mtlr r0
/* 80D49410  38 21 00 30 */	addi r1, r1, 0x30
/* 80D49414  4E 80 00 20 */	blr 
