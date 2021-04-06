lbl_801C47C4:
/* 801C47C4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801C47C8  7C 08 02 A6 */	mflr r0
/* 801C47CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801C47D0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801C47D4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801C47D8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801C47DC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 801C47E0  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 801C47E4  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 801C47E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C47EC  93 C1 00 08 */	stw r30, 8(r1)
/* 801C47F0  7C 7F 1B 78 */	mr r31, r3
/* 801C47F4  38 80 FF FF */	li r4, -1
/* 801C47F8  38 A0 00 00 */	li r5, 0
/* 801C47FC  38 60 00 00 */	li r3, 0
/* 801C4800  38 00 00 80 */	li r0, 0x80
/* 801C4804  7C 09 03 A6 */	mtctr r0
lbl_801C4808:
/* 801C4808  38 03 00 84 */	addi r0, r3, 0x84
/* 801C480C  7C 1F 00 AE */	lbzx r0, r31, r0
/* 801C4810  28 00 00 11 */	cmplwi r0, 0x11
/* 801C4814  40 82 00 0C */	bne lbl_801C4820
/* 801C4818  7C A4 2B 78 */	mr r4, r5
/* 801C481C  48 00 00 10 */	b lbl_801C482C
lbl_801C4820:
/* 801C4820  38 A5 00 01 */	addi r5, r5, 1
/* 801C4824  38 63 00 18 */	addi r3, r3, 0x18
/* 801C4828  42 00 FF E0 */	bdnz lbl_801C4808
lbl_801C482C:
/* 801C482C  2C 04 00 00 */	cmpwi r4, 0
/* 801C4830  41 80 04 F4 */	blt lbl_801C4D24
/* 801C4834  1F C4 00 18 */	mulli r30, r4, 0x18
/* 801C4838  7C 7F F2 14 */	add r3, r31, r30
/* 801C483C  C3 E3 00 70 */	lfs f31, 0x70(r3)
/* 801C4840  C3 C3 00 74 */	lfs f30, 0x74(r3)
/* 801C4844  C3 A3 00 78 */	lfs f29, 0x78(r3)
/* 801C4848  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C484C  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4850  88 03 04 8D */	lbz r0, 0x48d(r3)
/* 801C4854  28 00 00 00 */	cmplwi r0, 0
/* 801C4858  41 82 00 4C */	beq lbl_801C48A4
/* 801C485C  7F E3 FB 78 */	mr r3, r31
/* 801C4860  38 80 00 00 */	li r4, 0
/* 801C4864  FC 20 F8 90 */	fmr f1, f31
/* 801C4868  FC 40 F0 90 */	fmr f2, f30
/* 801C486C  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4870  FC 80 E8 90 */	fmr f4, f29
/* 801C4874  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4878  38 A0 00 01 */	li r5, 1
/* 801C487C  4B FF FB 2D */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
/* 801C4880  7F E3 FB 78 */	mr r3, r31
/* 801C4884  38 80 00 01 */	li r4, 1
/* 801C4888  FC 20 F8 90 */	fmr f1, f31
/* 801C488C  FC 40 F0 90 */	fmr f2, f30
/* 801C4890  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4894  FC 80 E8 90 */	fmr f4, f29
/* 801C4898  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C489C  38 A0 00 01 */	li r5, 1
/* 801C48A0  4B FF FB 09 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C48A4:
/* 801C48A4  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C48A8  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C48AC  88 03 04 8E */	lbz r0, 0x48e(r3)
/* 801C48B0  28 00 00 00 */	cmplwi r0, 0
/* 801C48B4  40 82 00 10 */	bne lbl_801C48C4
/* 801C48B8  38 00 00 00 */	li r0, 0
/* 801C48BC  7C 7F F2 14 */	add r3, r31, r30
/* 801C48C0  98 03 00 85 */	stb r0, 0x85(r3)
lbl_801C48C4:
/* 801C48C4  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C48C8  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C48CC  88 03 04 8F */	lbz r0, 0x48f(r3)
/* 801C48D0  28 00 00 00 */	cmplwi r0, 0
/* 801C48D4  41 82 00 28 */	beq lbl_801C48FC
/* 801C48D8  7F E3 FB 78 */	mr r3, r31
/* 801C48DC  38 80 00 02 */	li r4, 2
/* 801C48E0  FC 20 F8 90 */	fmr f1, f31
/* 801C48E4  FC 40 F0 90 */	fmr f2, f30
/* 801C48E8  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C48EC  FC 80 E8 90 */	fmr f4, f29
/* 801C48F0  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C48F4  38 A0 00 01 */	li r5, 1
/* 801C48F8  4B FF FA B1 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C48FC:
/* 801C48FC  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4900  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4904  88 03 04 90 */	lbz r0, 0x490(r3)
/* 801C4908  28 00 00 00 */	cmplwi r0, 0
/* 801C490C  41 82 00 28 */	beq lbl_801C4934
/* 801C4910  7F E3 FB 78 */	mr r3, r31
/* 801C4914  38 80 00 12 */	li r4, 0x12
/* 801C4918  FC 20 F8 90 */	fmr f1, f31
/* 801C491C  FC 40 F0 90 */	fmr f2, f30
/* 801C4920  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4924  FC 80 E8 90 */	fmr f4, f29
/* 801C4928  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C492C  38 A0 00 01 */	li r5, 1
/* 801C4930  4B FF FA 79 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4934:
/* 801C4934  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4938  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C493C  88 03 04 91 */	lbz r0, 0x491(r3)
/* 801C4940  28 00 00 00 */	cmplwi r0, 0
/* 801C4944  41 82 00 28 */	beq lbl_801C496C
/* 801C4948  7F E3 FB 78 */	mr r3, r31
/* 801C494C  38 80 00 04 */	li r4, 4
/* 801C4950  FC 20 F8 90 */	fmr f1, f31
/* 801C4954  FC 40 F0 90 */	fmr f2, f30
/* 801C4958  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C495C  FC 80 E8 90 */	fmr f4, f29
/* 801C4960  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4964  38 A0 00 01 */	li r5, 1
/* 801C4968  4B FF FA 41 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C496C:
/* 801C496C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4970  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4974  88 03 04 92 */	lbz r0, 0x492(r3)
/* 801C4978  28 00 00 00 */	cmplwi r0, 0
/* 801C497C  41 82 00 28 */	beq lbl_801C49A4
/* 801C4980  7F E3 FB 78 */	mr r3, r31
/* 801C4984  38 80 00 03 */	li r4, 3
/* 801C4988  FC 20 F8 90 */	fmr f1, f31
/* 801C498C  FC 40 F0 90 */	fmr f2, f30
/* 801C4990  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4994  FC 80 E8 90 */	fmr f4, f29
/* 801C4998  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C499C  38 A0 00 01 */	li r5, 1
/* 801C49A0  4B FF FA 09 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C49A4:
/* 801C49A4  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C49A8  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C49AC  88 03 04 93 */	lbz r0, 0x493(r3)
/* 801C49B0  28 00 00 00 */	cmplwi r0, 0
/* 801C49B4  41 82 00 28 */	beq lbl_801C49DC
/* 801C49B8  7F E3 FB 78 */	mr r3, r31
/* 801C49BC  38 80 00 05 */	li r4, 5
/* 801C49C0  FC 20 F8 90 */	fmr f1, f31
/* 801C49C4  FC 40 F0 90 */	fmr f2, f30
/* 801C49C8  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C49CC  FC 80 E8 90 */	fmr f4, f29
/* 801C49D0  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C49D4  38 A0 00 01 */	li r5, 1
/* 801C49D8  4B FF F9 D1 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C49DC:
/* 801C49DC  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C49E0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C49E4  88 03 04 94 */	lbz r0, 0x494(r3)
/* 801C49E8  28 00 00 00 */	cmplwi r0, 0
/* 801C49EC  41 82 00 28 */	beq lbl_801C4A14
/* 801C49F0  7F E3 FB 78 */	mr r3, r31
/* 801C49F4  38 80 00 06 */	li r4, 6
/* 801C49F8  FC 20 F8 90 */	fmr f1, f31
/* 801C49FC  FC 40 F0 90 */	fmr f2, f30
/* 801C4A00  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4A04  FC 80 E8 90 */	fmr f4, f29
/* 801C4A08  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4A0C  38 A0 00 01 */	li r5, 1
/* 801C4A10  4B FF F9 99 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4A14:
/* 801C4A14  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4A18  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4A1C  88 03 04 95 */	lbz r0, 0x495(r3)
/* 801C4A20  28 00 00 00 */	cmplwi r0, 0
/* 801C4A24  41 82 00 28 */	beq lbl_801C4A4C
/* 801C4A28  7F E3 FB 78 */	mr r3, r31
/* 801C4A2C  38 80 00 07 */	li r4, 7
/* 801C4A30  FC 20 F8 90 */	fmr f1, f31
/* 801C4A34  FC 40 F0 90 */	fmr f2, f30
/* 801C4A38  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4A3C  FC 80 E8 90 */	fmr f4, f29
/* 801C4A40  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4A44  38 A0 00 01 */	li r5, 1
/* 801C4A48  4B FF F9 61 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4A4C:
/* 801C4A4C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4A50  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4A54  88 03 04 96 */	lbz r0, 0x496(r3)
/* 801C4A58  28 00 00 00 */	cmplwi r0, 0
/* 801C4A5C  41 82 00 28 */	beq lbl_801C4A84
/* 801C4A60  7F E3 FB 78 */	mr r3, r31
/* 801C4A64  38 80 00 09 */	li r4, 9
/* 801C4A68  FC 20 F8 90 */	fmr f1, f31
/* 801C4A6C  FC 40 F0 90 */	fmr f2, f30
/* 801C4A70  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4A74  FC 80 E8 90 */	fmr f4, f29
/* 801C4A78  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4A7C  38 A0 00 01 */	li r5, 1
/* 801C4A80  4B FF F9 29 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4A84:
/* 801C4A84  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4A88  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4A8C  88 03 04 97 */	lbz r0, 0x497(r3)
/* 801C4A90  28 00 00 00 */	cmplwi r0, 0
/* 801C4A94  41 82 00 28 */	beq lbl_801C4ABC
/* 801C4A98  7F E3 FB 78 */	mr r3, r31
/* 801C4A9C  38 80 00 0A */	li r4, 0xa
/* 801C4AA0  FC 20 F8 90 */	fmr f1, f31
/* 801C4AA4  FC 40 F0 90 */	fmr f2, f30
/* 801C4AA8  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4AAC  FC 80 E8 90 */	fmr f4, f29
/* 801C4AB0  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4AB4  38 A0 00 01 */	li r5, 1
/* 801C4AB8  4B FF F8 F1 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4ABC:
/* 801C4ABC  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4AC0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4AC4  88 03 04 98 */	lbz r0, 0x498(r3)
/* 801C4AC8  28 00 00 00 */	cmplwi r0, 0
/* 801C4ACC  41 82 00 28 */	beq lbl_801C4AF4
/* 801C4AD0  7F E3 FB 78 */	mr r3, r31
/* 801C4AD4  38 80 00 0B */	li r4, 0xb
/* 801C4AD8  FC 20 F8 90 */	fmr f1, f31
/* 801C4ADC  FC 40 F0 90 */	fmr f2, f30
/* 801C4AE0  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4AE4  FC 80 E8 90 */	fmr f4, f29
/* 801C4AE8  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4AEC  38 A0 00 01 */	li r5, 1
/* 801C4AF0  4B FF F8 B9 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4AF4:
/* 801C4AF4  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4AF8  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4AFC  88 03 04 99 */	lbz r0, 0x499(r3)
/* 801C4B00  28 00 00 00 */	cmplwi r0, 0
/* 801C4B04  41 82 00 28 */	beq lbl_801C4B2C
/* 801C4B08  7F E3 FB 78 */	mr r3, r31
/* 801C4B0C  38 80 00 0C */	li r4, 0xc
/* 801C4B10  FC 20 F8 90 */	fmr f1, f31
/* 801C4B14  FC 40 F0 90 */	fmr f2, f30
/* 801C4B18  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4B1C  FC 80 E8 90 */	fmr f4, f29
/* 801C4B20  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4B24  38 A0 00 01 */	li r5, 1
/* 801C4B28  4B FF F8 81 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4B2C:
/* 801C4B2C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4B30  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4B34  88 03 04 9A */	lbz r0, 0x49a(r3)
/* 801C4B38  28 00 00 00 */	cmplwi r0, 0
/* 801C4B3C  41 82 00 28 */	beq lbl_801C4B64
/* 801C4B40  7F E3 FB 78 */	mr r3, r31
/* 801C4B44  38 80 00 0F */	li r4, 0xf
/* 801C4B48  FC 20 F8 90 */	fmr f1, f31
/* 801C4B4C  FC 40 F0 90 */	fmr f2, f30
/* 801C4B50  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4B54  FC 80 E8 90 */	fmr f4, f29
/* 801C4B58  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4B5C  38 A0 00 01 */	li r5, 1
/* 801C4B60  4B FF F8 49 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4B64:
/* 801C4B64  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4B68  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4B6C  88 03 04 9B */	lbz r0, 0x49b(r3)
/* 801C4B70  28 00 00 00 */	cmplwi r0, 0
/* 801C4B74  41 82 00 28 */	beq lbl_801C4B9C
/* 801C4B78  7F E3 FB 78 */	mr r3, r31
/* 801C4B7C  38 80 00 10 */	li r4, 0x10
/* 801C4B80  FC 20 F8 90 */	fmr f1, f31
/* 801C4B84  FC 40 F0 90 */	fmr f2, f30
/* 801C4B88  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4B8C  FC 80 E8 90 */	fmr f4, f29
/* 801C4B90  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4B94  38 A0 00 01 */	li r5, 1
/* 801C4B98  4B FF F8 11 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4B9C:
/* 801C4B9C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4BA0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4BA4  88 03 04 9C */	lbz r0, 0x49c(r3)
/* 801C4BA8  28 00 00 00 */	cmplwi r0, 0
/* 801C4BAC  41 82 00 28 */	beq lbl_801C4BD4
/* 801C4BB0  7F E3 FB 78 */	mr r3, r31
/* 801C4BB4  38 80 00 08 */	li r4, 8
/* 801C4BB8  FC 20 F8 90 */	fmr f1, f31
/* 801C4BBC  FC 40 F0 90 */	fmr f2, f30
/* 801C4BC0  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4BC4  FC 80 E8 90 */	fmr f4, f29
/* 801C4BC8  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4BCC  38 A0 00 01 */	li r5, 1
/* 801C4BD0  4B FF F7 D9 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4BD4:
/* 801C4BD4  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4BD8  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4BDC  88 03 04 9D */	lbz r0, 0x49d(r3)
/* 801C4BE0  28 00 00 00 */	cmplwi r0, 0
/* 801C4BE4  41 82 00 28 */	beq lbl_801C4C0C
/* 801C4BE8  7F E3 FB 78 */	mr r3, r31
/* 801C4BEC  38 80 00 0D */	li r4, 0xd
/* 801C4BF0  FC 20 F8 90 */	fmr f1, f31
/* 801C4BF4  FC 40 F0 90 */	fmr f2, f30
/* 801C4BF8  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4BFC  FC 80 E8 90 */	fmr f4, f29
/* 801C4C00  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4C04  38 A0 00 01 */	li r5, 1
/* 801C4C08  4B FF F7 A1 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4C0C:
/* 801C4C0C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4C10  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4C14  88 03 04 9E */	lbz r0, 0x49e(r3)
/* 801C4C18  28 00 00 00 */	cmplwi r0, 0
/* 801C4C1C  41 82 00 28 */	beq lbl_801C4C44
/* 801C4C20  7F E3 FB 78 */	mr r3, r31
/* 801C4C24  38 80 00 0E */	li r4, 0xe
/* 801C4C28  FC 20 F8 90 */	fmr f1, f31
/* 801C4C2C  FC 40 F0 90 */	fmr f2, f30
/* 801C4C30  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4C34  FC 80 E8 90 */	fmr f4, f29
/* 801C4C38  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4C3C  38 A0 00 01 */	li r5, 1
/* 801C4C40  4B FF F7 69 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4C44:
/* 801C4C44  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4C48  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4C4C  88 03 04 9F */	lbz r0, 0x49f(r3)
/* 801C4C50  28 00 00 00 */	cmplwi r0, 0
/* 801C4C54  41 82 00 28 */	beq lbl_801C4C7C
/* 801C4C58  7F E3 FB 78 */	mr r3, r31
/* 801C4C5C  38 80 00 13 */	li r4, 0x13
/* 801C4C60  FC 20 F8 90 */	fmr f1, f31
/* 801C4C64  FC 40 F0 90 */	fmr f2, f30
/* 801C4C68  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4C6C  FC 80 E8 90 */	fmr f4, f29
/* 801C4C70  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4C74  38 A0 00 01 */	li r5, 1
/* 801C4C78  4B FF F7 31 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4C7C:
/* 801C4C7C  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4C80  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4C84  88 03 04 A0 */	lbz r0, 0x4a0(r3)
/* 801C4C88  28 00 00 00 */	cmplwi r0, 0
/* 801C4C8C  41 82 00 28 */	beq lbl_801C4CB4
/* 801C4C90  7F E3 FB 78 */	mr r3, r31
/* 801C4C94  38 80 00 14 */	li r4, 0x14
/* 801C4C98  FC 20 F8 90 */	fmr f1, f31
/* 801C4C9C  FC 40 F0 90 */	fmr f2, f30
/* 801C4CA0  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4CA4  FC 80 E8 90 */	fmr f4, f29
/* 801C4CA8  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4CAC  38 A0 00 01 */	li r5, 1
/* 801C4CB0  4B FF F6 F9 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4CB4:
/* 801C4CB4  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4CB8  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4CBC  88 03 04 A1 */	lbz r0, 0x4a1(r3)
/* 801C4CC0  28 00 00 00 */	cmplwi r0, 0
/* 801C4CC4  41 82 00 28 */	beq lbl_801C4CEC
/* 801C4CC8  7F E3 FB 78 */	mr r3, r31
/* 801C4CCC  38 80 00 15 */	li r4, 0x15
/* 801C4CD0  FC 20 F8 90 */	fmr f1, f31
/* 801C4CD4  FC 40 F0 90 */	fmr f2, f30
/* 801C4CD8  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4CDC  FC 80 E8 90 */	fmr f4, f29
/* 801C4CE0  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4CE4  38 A0 00 01 */	li r5, 1
/* 801C4CE8  4B FF F6 C1 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4CEC:
/* 801C4CEC  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C4CF0  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C4CF4  88 03 04 A2 */	lbz r0, 0x4a2(r3)
/* 801C4CF8  28 00 00 00 */	cmplwi r0, 0
/* 801C4CFC  41 82 00 28 */	beq lbl_801C4D24
/* 801C4D00  7F E3 FB 78 */	mr r3, r31
/* 801C4D04  38 80 00 16 */	li r4, 0x16
/* 801C4D08  FC 20 F8 90 */	fmr f1, f31
/* 801C4D0C  FC 40 F0 90 */	fmr f2, f30
/* 801C4D10  C0 62 A6 D8 */	lfs f3, lit_3703(r2)
/* 801C4D14  FC 80 E8 90 */	fmr f4, f29
/* 801C4D18  C0 A2 A6 DC */	lfs f5, lit_3882(r2)
/* 801C4D1C  38 A0 00 01 */	li r5, 1
/* 801C4D20  4B FF F6 89 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801C4D24:
/* 801C4D24  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801C4D28  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801C4D2C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 801C4D30  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801C4D34  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 801C4D38  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 801C4D3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C4D40  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C4D44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801C4D48  7C 08 03 A6 */	mtlr r0
/* 801C4D4C  38 21 00 40 */	addi r1, r1, 0x40
/* 801C4D50  4E 80 00 20 */	blr 
