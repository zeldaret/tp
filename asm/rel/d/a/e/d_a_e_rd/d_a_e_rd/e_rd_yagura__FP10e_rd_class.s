lbl_8050FC04:
/* 8050FC04  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8050FC08  7C 08 02 A6 */	mflr r0
/* 8050FC0C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8050FC10  39 61 00 50 */	addi r11, r1, 0x50
/* 8050FC14  4B E5 25 C0 */	b _savegpr_27
/* 8050FC18  7C 7C 1B 78 */	mr r28, r3
/* 8050FC1C  3C 60 80 52 */	lis r3, lit_4208@ha
/* 8050FC20  3B E3 85 84 */	addi r31, r3, lit_4208@l
/* 8050FC24  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 8050FC28  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8050FC2C  FC 00 00 1E */	fctiwz f0, f0
/* 8050FC30  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8050FC34  83 61 00 34 */	lwz r27, 0x34(r1)
/* 8050FC38  3B C0 00 01 */	li r30, 1
/* 8050FC3C  3B A0 00 00 */	li r29, 0
/* 8050FC40  3C 60 80 50 */	lis r3, s_b_sub__FPvPv@ha
/* 8050FC44  38 63 5D 80 */	addi r3, r3, s_b_sub__FPvPv@l
/* 8050FC48  7F 84 E3 78 */	mr r4, r28
/* 8050FC4C  4B B1 16 EC */	b fpcEx_Search__FPFPvPv_PvPv
/* 8050FC50  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 8050FC54  28 00 00 0E */	cmplwi r0, 0xe
/* 8050FC58  41 81 04 40 */	bgt lbl_80510098
/* 8050FC5C  3C 60 80 52 */	lis r3, lit_8697@ha
/* 8050FC60  38 63 8C BC */	addi r3, r3, lit_8697@l
/* 8050FC64  54 00 10 3A */	slwi r0, r0, 2
/* 8050FC68  7C 03 00 2E */	lwzx r0, r3, r0
/* 8050FC6C  7C 09 03 A6 */	mtctr r0
/* 8050FC70  4E 80 04 20 */	bctr 
lbl_8050FC74:
/* 8050FC74  A8 1C 09 9C */	lha r0, 0x99c(r28)
/* 8050FC78  2C 00 00 00 */	cmpwi r0, 0
/* 8050FC7C  41 82 00 14 */	beq lbl_8050FC90
/* 8050FC80  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8050FC84  D0 1C 04 AC */	stfs f0, 0x4ac(r28)
/* 8050FC88  38 60 00 00 */	li r3, 0
/* 8050FC8C  48 00 05 AC */	b lbl_80510238
lbl_8050FC90:
/* 8050FC90  3B C0 00 00 */	li r30, 0
/* 8050FC94  3B A0 00 01 */	li r29, 1
/* 8050FC98  A8 1C 09 90 */	lha r0, 0x990(r28)
/* 8050FC9C  2C 00 00 00 */	cmpwi r0, 0
/* 8050FCA0  40 82 03 F8 */	bne lbl_80510098
/* 8050FCA4  7F 83 E3 78 */	mr r3, r28
/* 8050FCA8  38 80 00 1D */	li r4, 0x1d
/* 8050FCAC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050FCB0  38 A0 00 02 */	li r5, 2
/* 8050FCB4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050FCB8  4B FF 4F 1D */	bl anm_init__FP10e_rd_classifUcf
/* 8050FCBC  38 00 00 01 */	li r0, 1
/* 8050FCC0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050FCC4  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 8050FCC8  4B D5 7C 8C */	b cM_rndF__Ff
/* 8050FCCC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8050FCD0  EC 00 08 2A */	fadds f0, f0, f1
/* 8050FCD4  FC 00 00 1E */	fctiwz f0, f0
/* 8050FCD8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8050FCDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050FCE0  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 8050FCE4  48 00 03 B4 */	b lbl_80510098
lbl_8050FCE8:
/* 8050FCE8  3B C0 00 00 */	li r30, 0
/* 8050FCEC  3B A0 00 01 */	li r29, 1
/* 8050FCF0  A8 1C 09 90 */	lha r0, 0x990(r28)
/* 8050FCF4  2C 00 00 00 */	cmpwi r0, 0
/* 8050FCF8  40 82 03 A0 */	bne lbl_80510098
/* 8050FCFC  7F 83 E3 78 */	mr r3, r28
/* 8050FD00  38 80 00 40 */	li r4, 0x40
/* 8050FD04  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050FD08  38 A0 00 02 */	li r5, 2
/* 8050FD0C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050FD10  4B FF 4E C5 */	bl anm_init__FP10e_rd_classifUcf
/* 8050FD14  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8050FD18  4B D5 7C 3C */	b cM_rndF__Ff
/* 8050FD1C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8050FD20  EC 00 08 2A */	fadds f0, f0, f1
/* 8050FD24  FC 00 00 1E */	fctiwz f0, f0
/* 8050FD28  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8050FD2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050FD30  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 8050FD34  38 00 00 00 */	li r0, 0
/* 8050FD38  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050FD3C  48 00 03 5C */	b lbl_80510098
lbl_8050FD40:
/* 8050FD40  38 00 00 04 */	li r0, 4
/* 8050FD44  98 1C 09 C8 */	stb r0, 0x9c8(r28)
/* 8050FD48  A8 1C 09 90 */	lha r0, 0x990(r28)
/* 8050FD4C  2C 00 00 00 */	cmpwi r0, 0
/* 8050FD50  40 82 03 48 */	bne lbl_80510098
/* 8050FD54  7F 83 E3 78 */	mr r3, r28
/* 8050FD58  38 80 00 3B */	li r4, 0x3b
/* 8050FD5C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050FD60  38 A0 00 00 */	li r5, 0
/* 8050FD64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050FD68  4B FF 4E 6D */	bl anm_init__FP10e_rd_classifUcf
/* 8050FD6C  38 00 00 0A */	li r0, 0xa
/* 8050FD70  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050FD74  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007001A@ha */
/* 8050FD78  38 03 00 1A */	addi r0, r3, 0x001A /* 0x0007001A@l */
/* 8050FD7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8050FD80  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 8050FD84  38 81 00 10 */	addi r4, r1, 0x10
/* 8050FD88  38 A0 FF FF */	li r5, -1
/* 8050FD8C  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 8050FD90  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050FD94  7D 89 03 A6 */	mtctr r12
/* 8050FD98  4E 80 04 21 */	bctrl 
/* 8050FD9C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8050FDA0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8050FDA4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8050FDA8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8050FDAC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8050FDB0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8050FDB4  38 61 00 20 */	addi r3, r1, 0x20
/* 8050FDB8  38 80 00 64 */	li r4, 0x64
/* 8050FDBC  28 1C 00 00 */	cmplwi r28, 0
/* 8050FDC0  41 82 00 0C */	beq lbl_8050FDCC
/* 8050FDC4  80 BC 00 04 */	lwz r5, 4(r28)
/* 8050FDC8  48 00 00 08 */	b lbl_8050FDD0
lbl_8050FDCC:
/* 8050FDCC  38 A0 FF FF */	li r5, -1
lbl_8050FDD0:
/* 8050FDD0  38 C0 00 03 */	li r6, 3
/* 8050FDD4  4B C9 83 EC */	b dKy_Sound_set__F4cXyziUii
/* 8050FDD8  48 00 02 C0 */	b lbl_80510098
lbl_8050FDDC:
/* 8050FDDC  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 8050FDE0  38 80 00 01 */	li r4, 1
/* 8050FDE4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050FDE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050FDEC  40 82 00 18 */	bne lbl_8050FE04
/* 8050FDF0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050FDF4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050FDF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050FDFC  41 82 00 08 */	beq lbl_8050FE04
/* 8050FE00  38 80 00 00 */	li r4, 0
lbl_8050FE04:
/* 8050FE04  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050FE08  41 82 02 90 */	beq lbl_80510098
/* 8050FE0C  7F 83 E3 78 */	mr r3, r28
/* 8050FE10  38 80 00 39 */	li r4, 0x39
/* 8050FE14  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050FE18  38 A0 00 00 */	li r5, 0
/* 8050FE1C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050FE20  4B FF 4D B5 */	bl anm_init__FP10e_rd_classifUcf
/* 8050FE24  80 7C 06 78 */	lwz r3, 0x678(r28)
/* 8050FE28  38 80 00 07 */	li r4, 7
/* 8050FE2C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8050FE30  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8050FE34  3C A5 00 02 */	addis r5, r5, 2
/* 8050FE38  38 C0 00 80 */	li r6, 0x80
/* 8050FE3C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8050FE40  4B B2 C4 AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8050FE44  7C 64 1B 78 */	mr r4, r3
/* 8050FE48  80 7C 06 98 */	lwz r3, 0x698(r28)
/* 8050FE4C  38 A0 00 00 */	li r5, 0
/* 8050FE50  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050FE54  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 8050FE58  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8050FE5C  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8050FE60  4B B0 10 10 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8050FE64  38 00 00 0B */	li r0, 0xb
/* 8050FE68  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050FE6C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050FE70  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8050FE74  48 00 02 24 */	b lbl_80510098
lbl_8050FE78:
/* 8050FE78  38 00 00 04 */	li r0, 4
/* 8050FE7C  98 1C 09 C8 */	stb r0, 0x9c8(r28)
/* 8050FE80  2C 1B 00 0A */	cmpwi r27, 0xa
/* 8050FE84  41 80 00 0C */	blt lbl_8050FE90
/* 8050FE88  38 00 00 01 */	li r0, 1
/* 8050FE8C  98 1C 09 A2 */	stb r0, 0x9a2(r28)
lbl_8050FE90:
/* 8050FE90  2C 1B 00 14 */	cmpwi r27, 0x14
/* 8050FE94  40 82 00 2C */	bne lbl_8050FEC0
/* 8050FE98  3C 00 00 08 */	lis r0, 8
/* 8050FE9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050FEA0  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 8050FEA4  38 81 00 0C */	addi r4, r1, 0xc
/* 8050FEA8  38 A0 00 00 */	li r5, 0
/* 8050FEAC  38 C0 FF FF */	li r6, -1
/* 8050FEB0  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 8050FEB4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8050FEB8  7D 89 03 A6 */	mtctr r12
/* 8050FEBC  4E 80 04 21 */	bctrl 
lbl_8050FEC0:
/* 8050FEC0  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 8050FEC4  38 80 00 01 */	li r4, 1
/* 8050FEC8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050FECC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050FED0  40 82 00 18 */	bne lbl_8050FEE8
/* 8050FED4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050FED8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050FEDC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050FEE0  41 82 00 08 */	beq lbl_8050FEE8
/* 8050FEE4  38 80 00 00 */	li r4, 0
lbl_8050FEE8:
/* 8050FEE8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050FEEC  41 82 01 AC */	beq lbl_80510098
/* 8050FEF0  7F 83 E3 78 */	mr r3, r28
/* 8050FEF4  38 80 00 3A */	li r4, 0x3a
/* 8050FEF8  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 8050FEFC  38 A0 00 02 */	li r5, 2
/* 8050FF00  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050FF04  4B FF 4C D1 */	bl anm_init__FP10e_rd_classifUcf
/* 8050FF08  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050FF0C  4B D5 7A 48 */	b cM_rndF__Ff
/* 8050FF10  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8050FF14  EC 00 08 2A */	fadds f0, f0, f1
/* 8050FF18  FC 00 00 1E */	fctiwz f0, f0
/* 8050FF1C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8050FF20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050FF24  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 8050FF28  38 00 00 0C */	li r0, 0xc
/* 8050FF2C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 8050FF30  48 00 01 68 */	b lbl_80510098
lbl_8050FF34:
/* 8050FF34  38 00 00 04 */	li r0, 4
/* 8050FF38  98 1C 09 C8 */	stb r0, 0x9c8(r28)
/* 8050FF3C  A8 1C 09 90 */	lha r0, 0x990(r28)
/* 8050FF40  2C 00 00 00 */	cmpwi r0, 0
/* 8050FF44  40 82 00 70 */	bne lbl_8050FFB4
/* 8050FF48  88 1C 09 A4 */	lbz r0, 0x9a4(r28)
/* 8050FF4C  7C 00 07 75 */	extsb. r0, r0
/* 8050FF50  40 82 00 64 */	bne lbl_8050FFB4
/* 8050FF54  7F 83 E3 78 */	mr r3, r28
/* 8050FF58  38 80 00 38 */	li r4, 0x38
/* 8050FF5C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8050FF60  38 A0 00 00 */	li r5, 0
/* 8050FF64  FC 40 08 90 */	fmr f2, f1
/* 8050FF68  4B FF 4C 6D */	bl anm_init__FP10e_rd_classifUcf
/* 8050FF6C  80 7C 06 78 */	lwz r3, 0x678(r28)
/* 8050FF70  38 80 00 0A */	li r4, 0xa
/* 8050FF74  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8050FF78  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8050FF7C  3C A5 00 02 */	addis r5, r5, 2
/* 8050FF80  38 C0 00 80 */	li r6, 0x80
/* 8050FF84  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8050FF88  4B B2 C3 64 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8050FF8C  7C 64 1B 78 */	mr r4, r3
/* 8050FF90  80 7C 06 98 */	lwz r3, 0x698(r28)
/* 8050FF94  38 A0 00 00 */	li r5, 0
/* 8050FF98  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8050FF9C  FC 40 08 90 */	fmr f2, f1
/* 8050FFA0  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8050FFA4  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8050FFA8  4B B0 0E C8 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8050FFAC  38 00 00 0D */	li r0, 0xd
/* 8050FFB0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_8050FFB4:
/* 8050FFB4  38 00 00 01 */	li r0, 1
/* 8050FFB8  98 1C 09 A2 */	stb r0, 0x9a2(r28)
/* 8050FFBC  48 00 00 DC */	b lbl_80510098
lbl_8050FFC0:
/* 8050FFC0  2C 1B 00 03 */	cmpwi r27, 3
/* 8050FFC4  41 81 00 14 */	bgt lbl_8050FFD8
/* 8050FFC8  38 00 00 01 */	li r0, 1
/* 8050FFCC  98 1C 09 A2 */	stb r0, 0x9a2(r28)
/* 8050FFD0  38 00 00 04 */	li r0, 4
/* 8050FFD4  98 1C 09 C8 */	stb r0, 0x9c8(r28)
lbl_8050FFD8:
/* 8050FFD8  2C 1B 00 02 */	cmpwi r27, 2
/* 8050FFDC  40 82 00 0C */	bne lbl_8050FFE8
/* 8050FFE0  38 00 00 01 */	li r0, 1
/* 8050FFE4  98 1C 09 A3 */	stb r0, 0x9a3(r28)
lbl_8050FFE8:
/* 8050FFE8  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 8050FFEC  38 80 00 01 */	li r4, 1
/* 8050FFF0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050FFF4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050FFF8  40 82 00 18 */	bne lbl_80510010
/* 8050FFFC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80510000  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80510004  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80510008  41 82 00 08 */	beq lbl_80510010
/* 8051000C  38 80 00 00 */	li r4, 0
lbl_80510010:
/* 80510010  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80510014  41 82 00 84 */	beq lbl_80510098
/* 80510018  7F 83 E3 78 */	mr r3, r28
/* 8051001C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80510020  38 80 7F FF */	li r4, 0x7fff
/* 80510024  4B FF 65 B1 */	bl pl_check__FP10e_rd_classfs
/* 80510028  2C 03 00 00 */	cmpwi r3, 0
/* 8051002C  41 82 00 64 */	beq lbl_80510090
/* 80510030  38 00 00 0A */	li r0, 0xa
/* 80510034  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80510038  7F 83 E3 78 */	mr r3, r28
/* 8051003C  38 80 00 3B */	li r4, 0x3b
/* 80510040  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80510044  38 A0 00 00 */	li r5, 0
/* 80510048  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8051004C  4B FF 4B 89 */	bl anm_init__FP10e_rd_classifUcf
/* 80510050  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80510054  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80510058  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8051005C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80510060  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80510064  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80510068  38 61 00 14 */	addi r3, r1, 0x14
/* 8051006C  38 80 00 64 */	li r4, 0x64
/* 80510070  28 1C 00 00 */	cmplwi r28, 0
/* 80510074  41 82 00 0C */	beq lbl_80510080
/* 80510078  80 BC 00 04 */	lwz r5, 4(r28)
/* 8051007C  48 00 00 08 */	b lbl_80510084
lbl_80510080:
/* 80510080  38 A0 FF FF */	li r5, -1
lbl_80510084:
/* 80510084  38 C0 00 03 */	li r6, 3
/* 80510088  4B C9 81 38 */	b dKy_Sound_set__F4cXyziUii
/* 8051008C  48 00 00 0C */	b lbl_80510098
lbl_80510090:
/* 80510090  38 00 00 00 */	li r0, 0
/* 80510094  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_80510098:
/* 80510098  C0 3C 0B DC */	lfs f1, 0xbdc(r28)
/* 8051009C  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 805100A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 805100A4  FC 00 02 10 */	fabs f0, f0
/* 805100A8  FC 20 00 18 */	frsp f1, f0
/* 805100AC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 805100B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805100B4  40 81 00 6C */	ble lbl_80510120
/* 805100B8  38 00 00 15 */	li r0, 0x15
/* 805100BC  B0 1C 09 72 */	sth r0, 0x972(r28)
/* 805100C0  38 00 00 00 */	li r0, 0
/* 805100C4  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 805100C8  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 805100CC  B0 1C 0A 0E */	sth r0, 0xa0e(r28)
/* 805100D0  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 805100D4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 805100D8  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 805100DC  D0 1C 09 EC */	stfs f0, 0x9ec(r28)
/* 805100E0  38 00 03 E8 */	li r0, 0x3e8
/* 805100E4  B0 1C 09 98 */	sth r0, 0x998(r28)
/* 805100E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070014@ha */
/* 805100EC  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00070014@l */
/* 805100F0  90 01 00 08 */	stw r0, 8(r1)
/* 805100F4  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 805100F8  38 81 00 08 */	addi r4, r1, 8
/* 805100FC  38 A0 FF FF */	li r5, -1
/* 80510100  81 9C 05 D4 */	lwz r12, 0x5d4(r28)
/* 80510104  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80510108  7D 89 03 A6 */	mtctr r12
/* 8051010C  4E 80 04 21 */	bctrl 
/* 80510110  38 00 00 00 */	li r0, 0
/* 80510114  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 80510118  38 60 00 00 */	li r3, 0
/* 8051011C  48 00 01 1C */	b lbl_80510238
lbl_80510120:
/* 80510120  7F A0 07 75 */	extsb. r0, r29
/* 80510124  41 82 00 F4 */	beq lbl_80510218
/* 80510128  7F 83 E3 78 */	mr r3, r28
/* 8051012C  C0 3C 09 80 */	lfs f1, 0x980(r28)
/* 80510130  38 80 40 00 */	li r4, 0x4000
/* 80510134  4B FF 64 A1 */	bl pl_check__FP10e_rd_classfs
/* 80510138  2C 03 00 00 */	cmpwi r3, 0
/* 8051013C  41 82 00 DC */	beq lbl_80510218
/* 80510140  C0 3C 09 80 */	lfs f1, 0x980(r28)
/* 80510144  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80510148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051014C  4C 41 13 82 */	cror 2, 1, 2
/* 80510150  41 82 00 1C */	beq lbl_8051016C
/* 80510154  3C 60 80 51 */	lis r3, s_ep_sub__FPvPv@ha
/* 80510158  38 63 FB 34 */	addi r3, r3, s_ep_sub__FPvPv@l
/* 8051015C  7F 84 E3 78 */	mr r4, r28
/* 80510160  4B B1 11 D8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80510164  28 03 00 00 */	cmplwi r3, 0
/* 80510168  41 82 00 B0 */	beq lbl_80510218
lbl_8051016C:
/* 8051016C  7F 83 E3 78 */	mr r3, r28
/* 80510170  38 80 00 40 */	li r4, 0x40
/* 80510174  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80510178  38 A0 00 02 */	li r5, 2
/* 8051017C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80510180  4B FF 4A 55 */	bl anm_init__FP10e_rd_classifUcf
/* 80510184  38 00 00 1E */	li r0, 0x1e
/* 80510188  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 8051018C  38 00 00 05 */	li r0, 5
/* 80510190  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80510194  3C 60 80 52 */	lis r3, struct_805191E4+0x0@ha
/* 80510198  A8 03 91 E4 */	lha r0, struct_805191E4+0x0@l(r3)
/* 8051019C  2C 00 00 00 */	cmpwi r0, 0
/* 805101A0  40 82 00 78 */	bne lbl_80510218
/* 805101A4  3C 60 80 52 */	lis r3, struct_805191E4+0x2@ha
/* 805101A8  88 03 91 E6 */	lbz r0, struct_805191E4+0x2@l(r3)
/* 805101AC  28 00 00 00 */	cmplwi r0, 0
/* 805101B0  40 82 00 68 */	bne lbl_80510218
/* 805101B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805101B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805101BC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805101C0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805101C4  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 805101C8  7D 89 03 A6 */	mtctr r12
/* 805101CC  4E 80 04 21 */	bctrl 
/* 805101D0  28 03 00 00 */	cmplwi r3, 0
/* 805101D4  40 82 00 44 */	bne lbl_80510218
/* 805101D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805101DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805101E0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805101E4  28 00 00 00 */	cmplwi r0, 0
/* 805101E8  40 82 00 30 */	bne lbl_80510218
/* 805101EC  A8 1C 12 A4 */	lha r0, 0x12a4(r28)
/* 805101F0  2C 00 00 00 */	cmpwi r0, 0
/* 805101F4  40 82 00 24 */	bne lbl_80510218
/* 805101F8  3C 60 80 51 */	lis r3, s_other_sub__FPvPv@ha
/* 805101FC  38 63 FA DC */	addi r3, r3, s_other_sub__FPvPv@l
/* 80510200  7F 84 E3 78 */	mr r4, r28
/* 80510204  4B B1 11 34 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80510208  28 03 00 00 */	cmplwi r3, 0
/* 8051020C  41 82 00 0C */	beq lbl_80510218
/* 80510210  38 00 00 01 */	li r0, 1
/* 80510214  B0 1C 12 A4 */	sth r0, 0x12a4(r28)
lbl_80510218:
/* 80510218  7F C0 07 75 */	extsb. r0, r30
/* 8051021C  41 82 00 18 */	beq lbl_80510234
/* 80510220  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80510224  A8 9C 09 7C */	lha r4, 0x97c(r28)
/* 80510228  38 A0 00 04 */	li r5, 4
/* 8051022C  38 C0 10 00 */	li r6, 0x1000
/* 80510230  4B D6 03 D8 */	b cLib_addCalcAngleS2__FPssss
lbl_80510234:
/* 80510234  7F C3 F3 78 */	mr r3, r30
lbl_80510238:
/* 80510238  39 61 00 50 */	addi r11, r1, 0x50
/* 8051023C  4B E5 1F E4 */	b _restgpr_27
/* 80510240  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80510244  7C 08 03 A6 */	mtlr r0
/* 80510248  38 21 00 50 */	addi r1, r1, 0x50
/* 8051024C  4E 80 00 20 */	blr 
