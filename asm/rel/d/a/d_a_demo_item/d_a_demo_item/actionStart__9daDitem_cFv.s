lbl_804DFD10:
/* 804DFD10  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804DFD14  7C 08 02 A6 */	mflr r0
/* 804DFD18  90 01 00 54 */	stw r0, 0x54(r1)
/* 804DFD1C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 804DFD20  93 C1 00 48 */	stw r30, 0x48(r1)
/* 804DFD24  7C 7E 1B 78 */	mr r30, r3
/* 804DFD28  3C 80 80 4E */	lis r4, l_light_color@ha
/* 804DFD2C  3B E4 19 D4 */	addi r31, r4, l_light_color@l
/* 804DFD30  4B B5 7D 9C */	b chkDraw__12daItemBase_cFv
/* 804DFD34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804DFD38  41 82 03 50 */	beq lbl_804E0088
/* 804DFD3C  88 7E 09 3D */	lbz r3, 0x93d(r30)
/* 804DFD40  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 804DFD44  40 82 00 30 */	bne lbl_804DFD74
/* 804DFD48  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 804DFD4C  40 82 00 28 */	bne lbl_804DFD74
/* 804DFD50  88 1E 09 3F */	lbz r0, 0x93f(r30)
/* 804DFD54  28 00 00 00 */	cmplwi r0, 0
/* 804DFD58  40 82 00 1C */	bne lbl_804DFD74
/* 804DFD5C  38 00 00 01 */	li r0, 1
/* 804DFD60  98 1E 09 3F */	stb r0, 0x93f(r30)
/* 804DFD64  7F C3 F3 78 */	mr r3, r30
/* 804DFD68  48 00 13 69 */	bl settingEffectLight__9daDitem_cFv
/* 804DFD6C  38 7E 09 48 */	addi r3, r30, 0x948
/* 804DFD70  4B CC 7C 0C */	b dKy_efplight_set__FP15LIGHT_INFLUENCE
lbl_804DFD74:
/* 804DFD74  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 804DFD78  28 00 00 25 */	cmplwi r0, 0x25
/* 804DFD7C  41 82 00 0C */	beq lbl_804DFD88
/* 804DFD80  28 00 00 33 */	cmplwi r0, 0x33
/* 804DFD84  40 82 00 18 */	bne lbl_804DFD9C
lbl_804DFD88:
/* 804DFD88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DFD8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804DFD90  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804DFD94  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 804DFD98  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_804DFD9C:
/* 804DFD9C  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 804DFDA0  28 00 00 22 */	cmplwi r0, 0x22
/* 804DFDA4  41 82 00 0C */	beq lbl_804DFDB0
/* 804DFDA8  28 00 00 21 */	cmplwi r0, 0x21
/* 804DFDAC  40 82 00 C4 */	bne lbl_804DFE70
lbl_804DFDB0:
/* 804DFDB0  80 1E 09 70 */	lwz r0, 0x970(r30)
/* 804DFDB4  28 00 00 00 */	cmplwi r0, 0
/* 804DFDB8  40 82 00 54 */	bne lbl_804DFE0C
/* 804DFDBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DFDC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804DFDC4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804DFDC8  38 1E 09 6C */	addi r0, r30, 0x96c
/* 804DFDCC  90 01 00 08 */	stw r0, 8(r1)
/* 804DFDD0  38 00 FF FF */	li r0, -1
/* 804DFDD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DFDD8  38 00 00 00 */	li r0, 0
/* 804DFDDC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DFDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFDE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DFDE8  38 80 00 00 */	li r4, 0
/* 804DFDEC  38 A0 08 DE */	li r5, 0x8de
/* 804DFDF0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 804DFDF4  38 E0 00 00 */	li r7, 0
/* 804DFDF8  39 00 00 00 */	li r8, 0
/* 804DFDFC  39 20 00 00 */	li r9, 0
/* 804DFE00  39 40 00 FF */	li r10, 0xff
/* 804DFE04  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804DFE08  4B B6 CC 88 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_804DFE0C:
/* 804DFE0C  80 1E 09 84 */	lwz r0, 0x984(r30)
/* 804DFE10  28 00 00 00 */	cmplwi r0, 0
/* 804DFE14  40 82 00 54 */	bne lbl_804DFE68
/* 804DFE18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DFE1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804DFE20  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804DFE24  38 1E 09 6C */	addi r0, r30, 0x96c
/* 804DFE28  90 01 00 08 */	stw r0, 8(r1)
/* 804DFE2C  38 00 FF FF */	li r0, -1
/* 804DFE30  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DFE34  38 00 00 00 */	li r0, 0
/* 804DFE38  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DFE3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFE40  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DFE44  38 80 00 00 */	li r4, 0
/* 804DFE48  38 A0 08 DF */	li r5, 0x8df
/* 804DFE4C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 804DFE50  38 E0 00 00 */	li r7, 0
/* 804DFE54  39 00 00 00 */	li r8, 0
/* 804DFE58  39 20 00 00 */	li r9, 0
/* 804DFE5C  39 40 00 FF */	li r10, 0xff
/* 804DFE60  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804DFE64  4B B6 CC 2C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_804DFE68:
/* 804DFE68  38 00 00 FF */	li r0, 0xff
/* 804DFE6C  98 1E 09 6A */	stb r0, 0x96a(r30)
lbl_804DFE70:
/* 804DFE70  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 804DFE74  28 00 00 06 */	cmplwi r0, 6
/* 804DFE78  41 82 00 0C */	beq lbl_804DFE84
/* 804DFE7C  28 00 00 07 */	cmplwi r0, 7
/* 804DFE80  40 82 00 70 */	bne lbl_804DFEF0
lbl_804DFE84:
/* 804DFE84  80 1E 09 70 */	lwz r0, 0x970(r30)
/* 804DFE88  28 00 00 00 */	cmplwi r0, 0
/* 804DFE8C  40 82 00 64 */	bne lbl_804DFEF0
/* 804DFE90  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804DFE94  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804DFE98  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804DFE9C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804DFEA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DFEA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804DFEA8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804DFEAC  38 1E 09 6C */	addi r0, r30, 0x96c
/* 804DFEB0  90 01 00 08 */	stw r0, 8(r1)
/* 804DFEB4  38 00 FF FF */	li r0, -1
/* 804DFEB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DFEBC  38 00 00 00 */	li r0, 0
/* 804DFEC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DFEC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFEC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DFECC  38 80 00 00 */	li r4, 0
/* 804DFED0  38 A0 0C 14 */	li r5, 0xc14
/* 804DFED4  38 DE 09 9C */	addi r6, r30, 0x99c
/* 804DFED8  38 E0 00 00 */	li r7, 0
/* 804DFEDC  39 00 00 00 */	li r8, 0
/* 804DFEE0  39 21 00 38 */	addi r9, r1, 0x38
/* 804DFEE4  39 40 00 FF */	li r10, 0xff
/* 804DFEE8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804DFEEC  4B B6 CB A4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_804DFEF0:
/* 804DFEF0  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 804DFEF4  28 00 00 36 */	cmplwi r0, 0x36
/* 804DFEF8  40 82 00 70 */	bne lbl_804DFF68
/* 804DFEFC  80 1E 09 70 */	lwz r0, 0x970(r30)
/* 804DFF00  28 00 00 00 */	cmplwi r0, 0
/* 804DFF04  40 82 00 64 */	bne lbl_804DFF68
/* 804DFF08  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804DFF0C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804DFF10  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804DFF14  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804DFF18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DFF1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804DFF20  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804DFF24  38 1E 09 6C */	addi r0, r30, 0x96c
/* 804DFF28  90 01 00 08 */	stw r0, 8(r1)
/* 804DFF2C  38 00 FF FF */	li r0, -1
/* 804DFF30  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DFF34  38 00 00 00 */	li r0, 0
/* 804DFF38  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DFF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFF40  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DFF44  38 80 00 00 */	li r4, 0
/* 804DFF48  38 A0 0C 14 */	li r5, 0xc14
/* 804DFF4C  38 DE 09 9C */	addi r6, r30, 0x99c
/* 804DFF50  38 E0 00 00 */	li r7, 0
/* 804DFF54  39 00 00 00 */	li r8, 0
/* 804DFF58  39 21 00 2C */	addi r9, r1, 0x2c
/* 804DFF5C  39 40 00 FF */	li r10, 0xff
/* 804DFF60  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804DFF64  4B B6 CB 2C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_804DFF68:
/* 804DFF68  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 804DFF6C  28 00 00 77 */	cmplwi r0, 0x77
/* 804DFF70  40 82 00 70 */	bne lbl_804DFFE0
/* 804DFF74  80 1E 09 70 */	lwz r0, 0x970(r30)
/* 804DFF78  28 00 00 00 */	cmplwi r0, 0
/* 804DFF7C  40 82 00 64 */	bne lbl_804DFFE0
/* 804DFF80  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 804DFF84  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804DFF88  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804DFF8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804DFF90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804DFF94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804DFF98  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804DFF9C  38 1E 09 6C */	addi r0, r30, 0x96c
/* 804DFFA0  90 01 00 08 */	stw r0, 8(r1)
/* 804DFFA4  38 00 FF FF */	li r0, -1
/* 804DFFA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DFFAC  38 00 00 00 */	li r0, 0
/* 804DFFB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DFFB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFFB8  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DFFBC  38 80 00 00 */	li r4, 0
/* 804DFFC0  38 A0 0C 14 */	li r5, 0xc14
/* 804DFFC4  38 DE 09 9C */	addi r6, r30, 0x99c
/* 804DFFC8  38 E0 00 00 */	li r7, 0
/* 804DFFCC  39 00 00 00 */	li r8, 0
/* 804DFFD0  39 21 00 20 */	addi r9, r1, 0x20
/* 804DFFD4  39 40 00 FF */	li r10, 0xff
/* 804DFFD8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804DFFDC  4B B6 CA B4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_804DFFE0:
/* 804DFFE0  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 804DFFE4  28 00 00 73 */	cmplwi r0, 0x73
/* 804DFFE8  41 82 00 0C */	beq lbl_804DFFF4
/* 804DFFEC  28 00 00 75 */	cmplwi r0, 0x75
/* 804DFFF0  40 82 00 64 */	bne lbl_804E0054
lbl_804DFFF4:
/* 804DFFF4  80 1E 09 70 */	lwz r0, 0x970(r30)
/* 804DFFF8  28 00 00 00 */	cmplwi r0, 0
/* 804DFFFC  40 82 00 58 */	bne lbl_804E0054
/* 804E0000  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E0004  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E0008  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804E000C  38 1E 09 6C */	addi r0, r30, 0x96c
/* 804E0010  90 01 00 08 */	stw r0, 8(r1)
/* 804E0014  38 00 FF FF */	li r0, -1
/* 804E0018  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E001C  38 00 00 00 */	li r0, 0
/* 804E0020  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E0024  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E0028  90 01 00 18 */	stw r0, 0x18(r1)
/* 804E002C  38 80 00 00 */	li r4, 0
/* 804E0030  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C15@ha */
/* 804E0034  38 A5 8C 15 */	addi r5, r5, 0x8C15 /* 0x00008C15@l */
/* 804E0038  38 DE 09 9C */	addi r6, r30, 0x99c
/* 804E003C  38 E0 00 00 */	li r7, 0
/* 804E0040  39 00 00 00 */	li r8, 0
/* 804E0044  39 20 00 00 */	li r9, 0
/* 804E0048  39 40 00 FF */	li r10, 0xff
/* 804E004C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E0050  4B B6 CA 40 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_804E0054:
/* 804E0054  88 7E 09 2A */	lbz r3, 0x92a(r30)
/* 804E0058  4B BB B7 44 */	b isInsect__FUc
/* 804E005C  2C 03 00 00 */	cmpwi r3, 0
/* 804E0060  41 82 00 0C */	beq lbl_804E006C
/* 804E0064  7F C3 F3 78 */	mr r3, r30
/* 804E0068  48 00 0A F9 */	bl setInsectEffect__9daDitem_cFv
lbl_804E006C:
/* 804E006C  7F C3 F3 78 */	mr r3, r30
/* 804E0070  4B B4 19 90 */	b fpcLf_GetPriority__FPC14leafdraw_class
/* 804E0074  7C 64 07 34 */	extsh r4, r3
/* 804E0078  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 804E007C  4B B4 04 30 */	b fopDwTg_ToDrawQ__FP16create_tag_classi
/* 804E0080  38 00 00 01 */	li r0, 1
/* 804E0084  98 1E 09 68 */	stb r0, 0x968(r30)
lbl_804E0088:
/* 804E0088  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 804E008C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 804E0090  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804E0094  7C 08 03 A6 */	mtlr r0
/* 804E0098  38 21 00 50 */	addi r1, r1, 0x50
/* 804E009C  4E 80 00 20 */	blr 
