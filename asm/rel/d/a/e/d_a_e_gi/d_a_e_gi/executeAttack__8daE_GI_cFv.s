lbl_806CEC94:
/* 806CEC94  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 806CEC98  7C 08 02 A6 */	mflr r0
/* 806CEC9C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806CECA0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 806CECA4  4B C9 35 38 */	b _savegpr_29
/* 806CECA8  7C 7E 1B 78 */	mr r30, r3
/* 806CECAC  3C 80 80 6D */	lis r4, lit_3907@ha
/* 806CECB0  3B E4 0E 60 */	addi r31, r4, lit_3907@l
/* 806CECB4  38 00 00 01 */	li r0, 1
/* 806CECB8  98 03 06 98 */	stb r0, 0x698(r3)
/* 806CECBC  80 03 06 74 */	lwz r0, 0x674(r3)
/* 806CECC0  28 00 00 07 */	cmplwi r0, 7
/* 806CECC4  41 81 03 DC */	bgt lbl_806CF0A0
/* 806CECC8  3C 80 80 6D */	lis r4, lit_4707@ha
/* 806CECCC  38 84 10 44 */	addi r4, r4, lit_4707@l
/* 806CECD0  54 00 10 3A */	slwi r0, r0, 2
/* 806CECD4  7C 04 00 2E */	lwzx r0, r4, r0
/* 806CECD8  7C 09 03 A6 */	mtctr r0
/* 806CECDC  4E 80 04 20 */	bctr 
lbl_806CECE0:
/* 806CECE0  38 00 00 00 */	li r0, 0
/* 806CECE4  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 806CECE8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CECEC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806CECF0  38 80 00 05 */	li r4, 5
/* 806CECF4  38 A0 00 00 */	li r5, 0
/* 806CECF8  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806CECFC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CED00  4B FF EB 69 */	bl setBck__8daE_GI_cFiUcff
/* 806CED04  38 00 00 01 */	li r0, 1
/* 806CED08  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_806CED0C:
/* 806CED0C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CED10  38 63 00 0C */	addi r3, r3, 0xc
/* 806CED14  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 806CED18  4B C5 97 14 */	b checkPass__12J3DFrameCtrlFf
/* 806CED1C  2C 03 00 00 */	cmpwi r3, 0
/* 806CED20  41 82 00 2C */	beq lbl_806CED4C
/* 806CED24  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007036E@ha */
/* 806CED28  38 03 03 6E */	addi r0, r3, 0x036E /* 0x0007036E@l */
/* 806CED2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806CED30  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806CED34  38 81 00 10 */	addi r4, r1, 0x10
/* 806CED38  38 A0 FF FF */	li r5, -1
/* 806CED3C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806CED40  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806CED44  7D 89 03 A6 */	mtctr r12
/* 806CED48  4E 80 04 21 */	bctrl 
lbl_806CED4C:
/* 806CED4C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CED50  38 63 00 0C */	addi r3, r3, 0xc
/* 806CED54  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 806CED58  4B C5 96 D4 */	b checkPass__12J3DFrameCtrlFf
/* 806CED5C  2C 03 00 00 */	cmpwi r3, 0
/* 806CED60  41 82 00 30 */	beq lbl_806CED90
/* 806CED64  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007036C@ha */
/* 806CED68  38 03 03 6C */	addi r0, r3, 0x036C /* 0x0007036C@l */
/* 806CED6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806CED70  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806CED74  38 81 00 0C */	addi r4, r1, 0xc
/* 806CED78  38 A0 00 00 */	li r5, 0
/* 806CED7C  38 C0 FF FF */	li r6, -1
/* 806CED80  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806CED84  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806CED88  7D 89 03 A6 */	mtctr r12
/* 806CED8C  4E 80 04 21 */	bctrl 
lbl_806CED90:
/* 806CED90  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CED94  38 63 00 0C */	addi r3, r3, 0xc
/* 806CED98  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 806CED9C  4B C5 96 90 */	b checkPass__12J3DFrameCtrlFf
/* 806CEDA0  2C 03 00 00 */	cmpwi r3, 0
/* 806CEDA4  41 82 00 38 */	beq lbl_806CEDDC
/* 806CEDA8  7F C3 F3 78 */	mr r3, r30
/* 806CEDAC  4B FF F1 2D */	bl setAttackEffect__8daE_GI_cFv
/* 806CEDB0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007036D@ha */
/* 806CEDB4  38 03 03 6D */	addi r0, r3, 0x036D /* 0x0007036D@l */
/* 806CEDB8  90 01 00 08 */	stw r0, 8(r1)
/* 806CEDBC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806CEDC0  38 81 00 08 */	addi r4, r1, 8
/* 806CEDC4  38 A0 00 00 */	li r5, 0
/* 806CEDC8  38 C0 FF FF */	li r6, -1
/* 806CEDCC  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806CEDD0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806CEDD4  7D 89 03 A6 */	mtctr r12
/* 806CEDD8  4E 80 04 21 */	bctrl 
lbl_806CEDDC:
/* 806CEDDC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CEDE0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806CEDE4  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 806CEDE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CEDEC  40 80 00 54 */	bge lbl_806CEE40
/* 806CEDF0  38 7E 06 64 */	addi r3, r30, 0x664
/* 806CEDF4  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 806CEDF8  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 806CEDFC  4B BA 19 44 */	b cLib_chaseF__FPfff
/* 806CEE00  7F C3 F3 78 */	mr r3, r30
/* 806CEE04  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806CEE08  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806CEE0C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806CEE10  4B 94 B9 00 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CEE14  7C 64 1B 78 */	mr r4, r3
/* 806CEE18  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806CEE1C  38 04 04 00 */	addi r0, r4, 0x400
/* 806CEE20  7C 04 07 34 */	extsh r4, r0
/* 806CEE24  38 A0 00 10 */	li r5, 0x10
/* 806CEE28  38 C0 02 00 */	li r6, 0x200
/* 806CEE2C  38 E0 00 80 */	li r7, 0x80
/* 806CEE30  4B BA 17 10 */	b cLib_addCalcAngleS__FPsssss
/* 806CEE34  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806CEE38  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806CEE3C  48 00 01 0C */	b lbl_806CEF48
lbl_806CEE40:
/* 806CEE40  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 806CEE44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CEE48  4C 40 13 82 */	cror 2, 0, 2
/* 806CEE4C  40 82 00 FC */	bne lbl_806CEF48
/* 806CEE50  7F C3 F3 78 */	mr r3, r30
/* 806CEE54  38 80 00 01 */	li r4, 1
/* 806CEE58  4B FF EE C5 */	bl setWeaponAtBit__8daE_GI_cFUc
/* 806CEE5C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806CEE60  38 63 00 24 */	addi r3, r3, 0x24
/* 806CEE64  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806CEE68  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806CEE6C  4B C7 76 44 */	b PSMTXCopy
/* 806CEE70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806CEE74  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 806CEE78  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 806CEE7C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806CEE80  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 806CEE84  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806CEE88  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 806CEE8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806CEE90  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 806CEE94  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 806CEE98  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806CEE9C  4B 93 DF 00 */	b transM__14mDoMtx_stack_cFfff
/* 806CEEA0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 806CEEA4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806CEEA8  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 806CEEAC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806CEEB0  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 806CEEB4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806CEEB8  38 61 00 2C */	addi r3, r1, 0x2c
/* 806CEEBC  4B 9A 8D AC */	b __ct__11dBgS_LinChkFv
/* 806CEEC0  38 61 00 2C */	addi r3, r1, 0x2c
/* 806CEEC4  38 81 00 20 */	addi r4, r1, 0x20
/* 806CEEC8  38 A1 00 14 */	addi r5, r1, 0x14
/* 806CEECC  7F C6 F3 78 */	mr r6, r30
/* 806CEED0  4B 9A 8E 94 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806CEED4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CEED8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CEEDC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806CEEE0  38 81 00 2C */	addi r4, r1, 0x2c
/* 806CEEE4  4B 9A 54 D0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806CEEE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806CEEEC  41 82 00 50 */	beq lbl_806CEF3C
/* 806CEEF0  38 C1 00 5C */	addi r6, r1, 0x5c
/* 806CEEF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CEEF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CEEFC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806CEF00  38 80 00 02 */	li r4, 2
/* 806CEF04  7F C5 F3 78 */	mr r5, r30
/* 806CEF08  38 E0 00 00 */	li r7, 0
/* 806CEF0C  39 00 00 00 */	li r8, 0
/* 806CEF10  39 20 00 00 */	li r9, 0
/* 806CEF14  4B 97 D3 04 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 806CEF18  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806CEF1C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CEF20  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806CEF24  38 00 00 02 */	li r0, 2
/* 806CEF28  90 1E 06 74 */	stw r0, 0x674(r30)
/* 806CEF2C  38 61 00 2C */	addi r3, r1, 0x2c
/* 806CEF30  38 80 FF FF */	li r4, -1
/* 806CEF34  4B 9A 8D A8 */	b __dt__11dBgS_LinChkFv
/* 806CEF38  48 00 01 68 */	b lbl_806CF0A0
lbl_806CEF3C:
/* 806CEF3C  38 61 00 2C */	addi r3, r1, 0x2c
/* 806CEF40  38 80 FF FF */	li r4, -1
/* 806CEF44  4B 9A 8D 98 */	b __dt__11dBgS_LinChkFv
lbl_806CEF48:
/* 806CEF48  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CEF4C  38 63 00 0C */	addi r3, r3, 0xc
/* 806CEF50  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 806CEF54  4B C5 94 D8 */	b checkPass__12J3DFrameCtrlFf
/* 806CEF58  2C 03 00 00 */	cmpwi r3, 0
/* 806CEF5C  41 82 00 0C */	beq lbl_806CEF68
/* 806CEF60  38 00 00 03 */	li r0, 3
/* 806CEF64  98 1E 06 A0 */	stb r0, 0x6a0(r30)
lbl_806CEF68:
/* 806CEF68  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CEF6C  38 63 00 0C */	addi r3, r3, 0xc
/* 806CEF70  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 806CEF74  4B C5 94 B8 */	b checkPass__12J3DFrameCtrlFf
/* 806CEF78  2C 03 00 00 */	cmpwi r3, 0
/* 806CEF7C  41 82 00 0C */	beq lbl_806CEF88
/* 806CEF80  38 00 00 00 */	li r0, 0
/* 806CEF84  98 1E 06 A0 */	stb r0, 0x6a0(r30)
lbl_806CEF88:
/* 806CEF88  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CEF8C  38 80 00 01 */	li r4, 1
/* 806CEF90  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806CEF94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806CEF98  40 82 00 18 */	bne lbl_806CEFB0
/* 806CEF9C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CEFA0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806CEFA4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806CEFA8  41 82 00 08 */	beq lbl_806CEFB0
/* 806CEFAC  38 80 00 00 */	li r4, 0
lbl_806CEFB0:
/* 806CEFB0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806CEFB4  41 82 00 EC */	beq lbl_806CF0A0
/* 806CEFB8  7F C3 F3 78 */	mr r3, r30
/* 806CEFBC  38 80 00 02 */	li r4, 2
/* 806CEFC0  38 A0 00 0A */	li r5, 0xa
/* 806CEFC4  4B FF E9 49 */	bl setActionMode__8daE_GI_cFii
/* 806CEFC8  48 00 00 D8 */	b lbl_806CF0A0
lbl_806CEFCC:
/* 806CEFCC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CEFD0  38 63 00 0C */	addi r3, r3, 0xc
/* 806CEFD4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806CEFD8  4B C5 94 54 */	b checkPass__12J3DFrameCtrlFf
/* 806CEFDC  2C 03 00 00 */	cmpwi r3, 0
/* 806CEFE0  41 82 00 C0 */	beq lbl_806CF0A0
/* 806CEFE4  7F C3 F3 78 */	mr r3, r30
/* 806CEFE8  38 80 00 02 */	li r4, 2
/* 806CEFEC  38 A0 00 0A */	li r5, 0xa
/* 806CEFF0  4B FF E9 1D */	bl setActionMode__8daE_GI_cFii
/* 806CEFF4  48 00 00 AC */	b lbl_806CF0A0
lbl_806CEFF8:
/* 806CEFF8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CEFFC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806CF000  38 80 00 0B */	li r4, 0xb
/* 806CF004  38 A0 00 02 */	li r5, 2
/* 806CF008  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806CF00C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CF010  4B FF E8 59 */	bl setBck__8daE_GI_cFiUcff
/* 806CF014  38 00 00 06 */	li r0, 6
/* 806CF018  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_806CF01C:
/* 806CF01C  3C 60 80 6D */	lis r3, m_cry_gi@ha
/* 806CF020  38 63 11 64 */	addi r3, r3, m_cry_gi@l
/* 806CF024  80 63 00 00 */	lwz r3, 0(r3)
/* 806CF028  28 03 00 00 */	cmplwi r3, 0
/* 806CF02C  40 82 00 28 */	bne lbl_806CF054
/* 806CF030  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806CF034  4B B9 89 20 */	b cM_rndF__Ff
/* 806CF038  FC 00 08 1E */	fctiwz f0, f1
/* 806CF03C  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 806CF040  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806CF044  90 1E 06 84 */	stw r0, 0x684(r30)
/* 806CF048  38 00 00 07 */	li r0, 7
/* 806CF04C  90 1E 06 74 */	stw r0, 0x674(r30)
/* 806CF050  48 00 00 50 */	b lbl_806CF0A0
lbl_806CF054:
/* 806CF054  88 03 06 9C */	lbz r0, 0x69c(r3)
/* 806CF058  28 00 00 00 */	cmplwi r0, 0
/* 806CF05C  41 82 00 44 */	beq lbl_806CF0A0
/* 806CF060  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 806CF064  4B B9 88 F0 */	b cM_rndF__Ff
/* 806CF068  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 806CF06C  EC 00 08 2A */	fadds f0, f0, f1
/* 806CF070  FC 00 00 1E */	fctiwz f0, f0
/* 806CF074  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 806CF078  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806CF07C  90 1E 06 84 */	stw r0, 0x684(r30)
/* 806CF080  38 00 00 07 */	li r0, 7
/* 806CF084  90 1E 06 74 */	stw r0, 0x674(r30)
/* 806CF088  48 00 00 18 */	b lbl_806CF0A0
lbl_806CF08C:
/* 806CF08C  80 1E 06 84 */	lwz r0, 0x684(r30)
/* 806CF090  2C 00 00 00 */	cmpwi r0, 0
/* 806CF094  40 82 00 0C */	bne lbl_806CF0A0
/* 806CF098  38 00 00 00 */	li r0, 0
/* 806CF09C  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_806CF0A0:
/* 806CF0A0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 806CF0A4  4B C9 31 84 */	b _restgpr_29
/* 806CF0A8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806CF0AC  7C 08 03 A6 */	mtlr r0
/* 806CF0B0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806CF0B4  4E 80 00 20 */	blr 
