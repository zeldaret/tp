lbl_809B48C4:
/* 809B48C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B48C8  7C 08 02 A6 */	mflr r0
/* 809B48CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B48D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B48D4  3C A0 80 9C */	lis r5, m__19daNpc_Fairy_Param_c@ha /* 0x809B92E4@ha */
/* 809B48D8  38 A5 92 E4 */	addi r5, r5, m__19daNpc_Fairy_Param_c@l /* 0x809B92E4@l */
/* 809B48DC  3B E0 00 00 */	li r31, 0
/* 809B48E0  80 04 00 00 */	lwz r0, 0(r4)
/* 809B48E4  2C 00 00 28 */	cmpwi r0, 0x28
/* 809B48E8  41 82 00 D0 */	beq lbl_809B49B8
/* 809B48EC  40 80 00 34 */	bge lbl_809B4920
/* 809B48F0  2C 00 00 15 */	cmpwi r0, 0x15
/* 809B48F4  41 82 00 9C */	beq lbl_809B4990
/* 809B48F8  40 80 00 1C */	bge lbl_809B4914
/* 809B48FC  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B4900  41 82 00 44 */	beq lbl_809B4944
/* 809B4904  41 80 01 28 */	blt lbl_809B4A2C
/* 809B4908  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B490C  40 80 00 68 */	bge lbl_809B4974
/* 809B4910  48 00 01 1C */	b lbl_809B4A2C
lbl_809B4914:
/* 809B4914  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B4918  41 82 00 80 */	beq lbl_809B4998
/* 809B491C  48 00 01 10 */	b lbl_809B4A2C
lbl_809B4920:
/* 809B4920  2C 00 00 3C */	cmpwi r0, 0x3c
/* 809B4924  41 82 00 E0 */	beq lbl_809B4A04
/* 809B4928  40 80 00 10 */	bge lbl_809B4938
/* 809B492C  2C 00 00 32 */	cmpwi r0, 0x32
/* 809B4930  41 82 00 A8 */	beq lbl_809B49D8
/* 809B4934  48 00 00 F8 */	b lbl_809B4A2C
lbl_809B4938:
/* 809B4938  2C 00 00 46 */	cmpwi r0, 0x46
/* 809B493C  41 82 00 EC */	beq lbl_809B4A28
/* 809B4940  48 00 00 EC */	b lbl_809B4A2C
lbl_809B4944:
/* 809B4944  A8 83 0F 90 */	lha r4, 0xf90(r3)
/* 809B4948  38 04 FF FF */	addi r0, r4, -1
/* 809B494C  B0 03 0F 90 */	sth r0, 0xf90(r3)
/* 809B4950  7C 00 07 35 */	extsh. r0, r0
/* 809B4954  41 81 00 D8 */	bgt lbl_809B4A2C
/* 809B4958  38 63 0F F8 */	addi r3, r3, 0xff8
/* 809B495C  38 80 00 00 */	li r4, 0
/* 809B4960  4B FF D3 85 */	bl setAnm__16_Fairy_Feather_cFi
/* 809B4964  38 60 00 0B */	li r3, 0xb
/* 809B4968  4B 7F 3E 7D */	bl dKy_change_colpat__FUc
/* 809B496C  3B E0 00 01 */	li r31, 1
/* 809B4970  48 00 00 BC */	b lbl_809B4A2C
lbl_809B4974:
/* 809B4974  A8 83 0F 90 */	lha r4, 0xf90(r3)
/* 809B4978  38 04 FF FF */	addi r0, r4, -1
/* 809B497C  B0 03 0F 90 */	sth r0, 0xf90(r3)
/* 809B4980  7C 00 07 35 */	extsh. r0, r0
/* 809B4984  41 81 00 A8 */	bgt lbl_809B4A2C
/* 809B4988  3B E0 00 01 */	li r31, 1
/* 809B498C  48 00 00 A0 */	b lbl_809B4A2C
lbl_809B4990:
/* 809B4990  3B E0 00 01 */	li r31, 1
/* 809B4994  48 00 00 98 */	b lbl_809B4A2C
lbl_809B4998:
/* 809B4998  80 63 0F F8 */	lwz r3, 0xff8(r3)
/* 809B499C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809B49A0  C0 05 01 A0 */	lfs f0, 0x1a0(r5)
/* 809B49A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809B49A8  4C 41 13 82 */	cror 2, 1, 2
/* 809B49AC  40 82 00 80 */	bne lbl_809B4A2C
/* 809B49B0  3B E0 00 01 */	li r31, 1
/* 809B49B4  48 00 00 78 */	b lbl_809B4A2C
lbl_809B49B8:
/* 809B49B8  80 63 0F F8 */	lwz r3, 0xff8(r3)
/* 809B49BC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809B49C0  C0 05 01 9C */	lfs f0, 0x19c(r5)
/* 809B49C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809B49C8  4C 41 13 82 */	cror 2, 1, 2
/* 809B49CC  40 82 00 60 */	bne lbl_809B4A2C
/* 809B49D0  3B E0 00 01 */	li r31, 1
/* 809B49D4  48 00 00 58 */	b lbl_809B4A2C
lbl_809B49D8:
/* 809B49D8  80 83 0F F8 */	lwz r4, 0xff8(r3)
/* 809B49DC  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809B49E0  C0 05 01 A4 */	lfs f0, 0x1a4(r5)
/* 809B49E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809B49E8  4C 41 13 82 */	cror 2, 1, 2
/* 809B49EC  40 82 00 40 */	bne lbl_809B4A2C
/* 809B49F0  38 63 0F F8 */	addi r3, r3, 0xff8
/* 809B49F4  38 80 00 02 */	li r4, 2
/* 809B49F8  4B FF D2 ED */	bl setAnm__16_Fairy_Feather_cFi
/* 809B49FC  3B E0 00 01 */	li r31, 1
/* 809B4A00  48 00 00 2C */	b lbl_809B4A2C
lbl_809B4A04:
/* 809B4A04  38 80 00 00 */	li r4, 0
/* 809B4A08  38 A0 00 00 */	li r5, 0
/* 809B4A0C  38 C0 00 00 */	li r6, 0
/* 809B4A10  38 E0 00 00 */	li r7, 0
/* 809B4A14  4B 79 72 65 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B4A18  2C 03 00 00 */	cmpwi r3, 0
/* 809B4A1C  41 82 00 10 */	beq lbl_809B4A2C
/* 809B4A20  3B E0 00 01 */	li r31, 1
/* 809B4A24  48 00 00 08 */	b lbl_809B4A2C
lbl_809B4A28:
/* 809B4A28  3B E0 00 01 */	li r31, 1
lbl_809B4A2C:
/* 809B4A2C  7F E3 FB 78 */	mr r3, r31
/* 809B4A30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B4A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B4A38  7C 08 03 A6 */	mtlr r0
/* 809B4A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 809B4A40  4E 80 00 20 */	blr 
