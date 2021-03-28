lbl_8050CD4C:
/* 8050CD4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050CD50  7C 08 02 A6 */	mflr r0
/* 8050CD54  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050CD58  39 61 00 30 */	addi r11, r1, 0x30
/* 8050CD5C  4B E5 54 80 */	b _savegpr_29
/* 8050CD60  7C 7D 1B 78 */	mr r29, r3
/* 8050CD64  3C 60 80 52 */	lis r3, lit_4208@ha
/* 8050CD68  3B E3 85 84 */	addi r31, r3, lit_4208@l
/* 8050CD6C  A8 1D 09 98 */	lha r0, 0x998(r29)
/* 8050CD70  2C 00 00 00 */	cmpwi r0, 0
/* 8050CD74  40 82 00 70 */	bne lbl_8050CDE4
/* 8050CD78  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 8050CD7C  2C 00 00 05 */	cmpwi r0, 5
/* 8050CD80  41 82 00 64 */	beq lbl_8050CDE4
/* 8050CD84  3C 60 80 51 */	lis r3, s_command3_sub__FPvPv@ha
/* 8050CD88  38 63 82 C8 */	addi r3, r3, s_command3_sub__FPvPv@l
/* 8050CD8C  7F A4 EB 78 */	mr r4, r29
/* 8050CD90  4B B1 45 A8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8050CD94  28 03 00 00 */	cmplwi r3, 0
/* 8050CD98  40 82 00 4C */	bne lbl_8050CDE4
/* 8050CD9C  38 00 00 05 */	li r0, 5
/* 8050CDA0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050CDA4  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8050CDA8  4B D5 AB AC */	b cM_rndF__Ff
/* 8050CDAC  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8050CDB0  EC 00 08 2A */	fadds f0, f0, f1
/* 8050CDB4  FC 00 00 1E */	fctiwz f0, f0
/* 8050CDB8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8050CDBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050CDC0  B0 1D 09 92 */	sth r0, 0x992(r29)
/* 8050CDC4  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8050CDC8  4B D5 AB 8C */	b cM_rndF__Ff
/* 8050CDCC  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8050CDD0  EC 00 08 2A */	fadds f0, f0, f1
/* 8050CDD4  FC 00 00 1E */	fctiwz f0, f0
/* 8050CDD8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8050CDDC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8050CDE0  B0 1D 09 90 */	sth r0, 0x990(r29)
lbl_8050CDE4:
/* 8050CDE4  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8050CDE8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8050CDEC  FC 00 00 1E */	fctiwz f0, f0
/* 8050CDF0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8050CDF4  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8050CDF8  3B C0 00 01 */	li r30, 1
/* 8050CDFC  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 8050CE00  28 00 00 0D */	cmplwi r0, 0xd
/* 8050CE04  41 81 03 08 */	bgt lbl_8050D10C
/* 8050CE08  3C 60 80 52 */	lis r3, lit_7704@ha
/* 8050CE0C  38 63 8C 38 */	addi r3, r3, lit_7704@l
/* 8050CE10  54 00 10 3A */	slwi r0, r0, 2
/* 8050CE14  7C 03 00 2E */	lwzx r0, r3, r0
/* 8050CE18  7C 09 03 A6 */	mtctr r0
/* 8050CE1C  4E 80 04 20 */	bctr 
lbl_8050CE20:
/* 8050CE20  3B C0 00 00 */	li r30, 0
/* 8050CE24  7F A3 EB 78 */	mr r3, r29
/* 8050CE28  38 80 00 40 */	li r4, 0x40
/* 8050CE2C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050CE30  38 A0 00 02 */	li r5, 2
/* 8050CE34  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050CE38  4B FF 7D 9D */	bl anm_init__FP10e_rd_classifUcf
/* 8050CE3C  38 00 00 01 */	li r0, 1
/* 8050CE40  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050CE44  48 00 02 C8 */	b lbl_8050D10C
lbl_8050CE48:
/* 8050CE48  3B C0 00 00 */	li r30, 0
/* 8050CE4C  48 00 02 C0 */	b lbl_8050D10C
lbl_8050CE50:
/* 8050CE50  A8 1D 09 90 */	lha r0, 0x990(r29)
/* 8050CE54  2C 00 00 00 */	cmpwi r0, 0
/* 8050CE58  40 82 02 B4 */	bne lbl_8050D10C
/* 8050CE5C  38 00 00 00 */	li r0, 0
/* 8050CE60  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050CE64  48 00 02 A8 */	b lbl_8050D10C
lbl_8050CE68:
/* 8050CE68  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 8050CE6C  2C 00 00 01 */	cmpwi r0, 1
/* 8050CE70  40 82 00 1C */	bne lbl_8050CE8C
/* 8050CE74  7F A3 EB 78 */	mr r3, r29
/* 8050CE78  38 80 00 1D */	li r4, 0x1d
/* 8050CE7C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050CE80  38 A0 00 02 */	li r5, 2
/* 8050CE84  C0 5F 01 3C */	lfs f2, 0x13c(r31)
/* 8050CE88  4B FF 7D 4D */	bl anm_init__FP10e_rd_classifUcf
lbl_8050CE8C:
/* 8050CE8C  A8 1D 09 90 */	lha r0, 0x990(r29)
/* 8050CE90  2C 00 00 0A */	cmpwi r0, 0xa
/* 8050CE94  40 82 00 1C */	bne lbl_8050CEB0
/* 8050CE98  7F A3 EB 78 */	mr r3, r29
/* 8050CE9C  38 80 00 40 */	li r4, 0x40
/* 8050CEA0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050CEA4  38 A0 00 02 */	li r5, 2
/* 8050CEA8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050CEAC  4B FF 7D 29 */	bl anm_init__FP10e_rd_classifUcf
lbl_8050CEB0:
/* 8050CEB0  A8 1D 09 90 */	lha r0, 0x990(r29)
/* 8050CEB4  2C 00 00 00 */	cmpwi r0, 0
/* 8050CEB8  40 82 02 54 */	bne lbl_8050D10C
/* 8050CEBC  38 00 00 07 */	li r0, 7
/* 8050CEC0  B0 1D 09 72 */	sth r0, 0x972(r29)
/* 8050CEC4  38 00 00 00 */	li r0, 0
/* 8050CEC8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050CECC  48 00 02 40 */	b lbl_8050D10C
lbl_8050CED0:
/* 8050CED0  A8 1D 09 90 */	lha r0, 0x990(r29)
/* 8050CED4  2C 00 00 00 */	cmpwi r0, 0
/* 8050CED8  40 82 02 34 */	bne lbl_8050D10C
/* 8050CEDC  7F A3 EB 78 */	mr r3, r29
/* 8050CEE0  38 80 00 39 */	li r4, 0x39
/* 8050CEE4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050CEE8  38 A0 00 00 */	li r5, 0
/* 8050CEEC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050CEF0  4B FF 7C E5 */	bl anm_init__FP10e_rd_classifUcf
/* 8050CEF4  80 7D 06 78 */	lwz r3, 0x678(r29)
/* 8050CEF8  38 80 00 07 */	li r4, 7
/* 8050CEFC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8050CF00  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8050CF04  3C A5 00 02 */	addis r5, r5, 2
/* 8050CF08  38 C0 00 80 */	li r6, 0x80
/* 8050CF0C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8050CF10  4B B2 F3 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8050CF14  7C 64 1B 78 */	mr r4, r3
/* 8050CF18  80 7D 06 98 */	lwz r3, 0x698(r29)
/* 8050CF1C  38 A0 00 00 */	li r5, 0
/* 8050CF20  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050CF24  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 8050CF28  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8050CF2C  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8050CF30  4B B0 3F 40 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8050CF34  38 00 00 0B */	li r0, 0xb
/* 8050CF38  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050CF3C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8050CF40  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8050CF44  48 00 01 C8 */	b lbl_8050D10C
lbl_8050CF48:
/* 8050CF48  38 00 00 04 */	li r0, 4
/* 8050CF4C  98 1D 09 C8 */	stb r0, 0x9c8(r29)
/* 8050CF50  2C 04 00 0A */	cmpwi r4, 0xa
/* 8050CF54  41 80 00 0C */	blt lbl_8050CF60
/* 8050CF58  38 00 00 01 */	li r0, 1
/* 8050CF5C  98 1D 09 A2 */	stb r0, 0x9a2(r29)
lbl_8050CF60:
/* 8050CF60  2C 04 00 14 */	cmpwi r4, 0x14
/* 8050CF64  40 82 00 2C */	bne lbl_8050CF90
/* 8050CF68  3C 00 00 08 */	lis r0, 8
/* 8050CF6C  90 01 00 08 */	stw r0, 8(r1)
/* 8050CF70  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 8050CF74  38 81 00 08 */	addi r4, r1, 8
/* 8050CF78  38 A0 00 00 */	li r5, 0
/* 8050CF7C  38 C0 FF FF */	li r6, -1
/* 8050CF80  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 8050CF84  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8050CF88  7D 89 03 A6 */	mtctr r12
/* 8050CF8C  4E 80 04 21 */	bctrl 
lbl_8050CF90:
/* 8050CF90  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8050CF94  38 80 00 01 */	li r4, 1
/* 8050CF98  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050CF9C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050CFA0  40 82 00 18 */	bne lbl_8050CFB8
/* 8050CFA4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050CFA8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050CFAC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050CFB0  41 82 00 08 */	beq lbl_8050CFB8
/* 8050CFB4  38 80 00 00 */	li r4, 0
lbl_8050CFB8:
/* 8050CFB8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050CFBC  41 82 01 50 */	beq lbl_8050D10C
/* 8050CFC0  7F A3 EB 78 */	mr r3, r29
/* 8050CFC4  38 80 00 3A */	li r4, 0x3a
/* 8050CFC8  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 8050CFCC  38 A0 00 02 */	li r5, 2
/* 8050CFD0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050CFD4  4B FF 7C 01 */	bl anm_init__FP10e_rd_classifUcf
/* 8050CFD8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050CFDC  4B D5 A9 78 */	b cM_rndF__Ff
/* 8050CFE0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8050CFE4  EC 00 08 2A */	fadds f0, f0, f1
/* 8050CFE8  FC 00 00 1E */	fctiwz f0, f0
/* 8050CFEC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8050CFF0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8050CFF4  B0 1D 09 90 */	sth r0, 0x990(r29)
/* 8050CFF8  38 00 00 0C */	li r0, 0xc
/* 8050CFFC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050D000  48 00 01 0C */	b lbl_8050D10C
lbl_8050D004:
/* 8050D004  38 00 00 04 */	li r0, 4
/* 8050D008  98 1D 09 C8 */	stb r0, 0x9c8(r29)
/* 8050D00C  A8 1D 09 90 */	lha r0, 0x990(r29)
/* 8050D010  2C 00 00 00 */	cmpwi r0, 0
/* 8050D014  40 82 00 8C */	bne lbl_8050D0A0
/* 8050D018  4B D2 B2 14 */	b getStatus__12dMsgObject_cFv
/* 8050D01C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8050D020  20 60 00 01 */	subfic r3, r0, 1
/* 8050D024  30 03 FF FF */	addic r0, r3, -1
/* 8050D028  7C 00 19 10 */	subfe r0, r0, r3
/* 8050D02C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8050D030  40 82 00 70 */	bne lbl_8050D0A0
/* 8050D034  88 1D 09 A4 */	lbz r0, 0x9a4(r29)
/* 8050D038  7C 00 07 75 */	extsb. r0, r0
/* 8050D03C  40 82 00 64 */	bne lbl_8050D0A0
/* 8050D040  7F A3 EB 78 */	mr r3, r29
/* 8050D044  38 80 00 38 */	li r4, 0x38
/* 8050D048  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8050D04C  38 A0 00 00 */	li r5, 0
/* 8050D050  FC 40 08 90 */	fmr f2, f1
/* 8050D054  4B FF 7B 81 */	bl anm_init__FP10e_rd_classifUcf
/* 8050D058  80 7D 06 78 */	lwz r3, 0x678(r29)
/* 8050D05C  38 80 00 0A */	li r4, 0xa
/* 8050D060  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8050D064  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8050D068  3C A5 00 02 */	addis r5, r5, 2
/* 8050D06C  38 C0 00 80 */	li r6, 0x80
/* 8050D070  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8050D074  4B B2 F2 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8050D078  7C 64 1B 78 */	mr r4, r3
/* 8050D07C  80 7D 06 98 */	lwz r3, 0x698(r29)
/* 8050D080  38 A0 00 00 */	li r5, 0
/* 8050D084  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8050D088  FC 40 08 90 */	fmr f2, f1
/* 8050D08C  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8050D090  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8050D094  4B B0 3D DC */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8050D098  38 00 00 0D */	li r0, 0xd
/* 8050D09C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_8050D0A0:
/* 8050D0A0  38 00 00 01 */	li r0, 1
/* 8050D0A4  98 1D 09 A2 */	stb r0, 0x9a2(r29)
/* 8050D0A8  48 00 00 64 */	b lbl_8050D10C
lbl_8050D0AC:
/* 8050D0AC  2C 04 00 03 */	cmpwi r4, 3
/* 8050D0B0  41 81 00 14 */	bgt lbl_8050D0C4
/* 8050D0B4  38 00 00 01 */	li r0, 1
/* 8050D0B8  98 1D 09 A2 */	stb r0, 0x9a2(r29)
/* 8050D0BC  38 00 00 04 */	li r0, 4
/* 8050D0C0  98 1D 09 C8 */	stb r0, 0x9c8(r29)
lbl_8050D0C4:
/* 8050D0C4  2C 04 00 02 */	cmpwi r4, 2
/* 8050D0C8  40 82 00 0C */	bne lbl_8050D0D4
/* 8050D0CC  38 00 00 01 */	li r0, 1
/* 8050D0D0  98 1D 09 A3 */	stb r0, 0x9a3(r29)
lbl_8050D0D4:
/* 8050D0D4  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8050D0D8  38 80 00 01 */	li r4, 1
/* 8050D0DC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050D0E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050D0E4  40 82 00 18 */	bne lbl_8050D0FC
/* 8050D0E8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050D0EC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050D0F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050D0F4  41 82 00 08 */	beq lbl_8050D0FC
/* 8050D0F8  38 80 00 00 */	li r4, 0
lbl_8050D0FC:
/* 8050D0FC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050D100  41 82 00 0C */	beq lbl_8050D10C
/* 8050D104  38 00 00 00 */	li r0, 0
/* 8050D108  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_8050D10C:
/* 8050D10C  7F C0 07 75 */	extsb. r0, r30
/* 8050D110  41 82 00 18 */	beq lbl_8050D128
/* 8050D114  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8050D118  A8 9D 09 7C */	lha r4, 0x97c(r29)
/* 8050D11C  38 A0 00 04 */	li r5, 4
/* 8050D120  38 C0 10 00 */	li r6, 0x1000
/* 8050D124  4B D6 34 E4 */	b cLib_addCalcAngleS2__FPssss
lbl_8050D128:
/* 8050D128  C0 3D 09 78 */	lfs f1, 0x978(r29)
/* 8050D12C  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 8050D130  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050D134  40 80 00 18 */	bge lbl_8050D14C
/* 8050D138  38 00 00 05 */	li r0, 5
/* 8050D13C  B0 1D 09 72 */	sth r0, 0x972(r29)
/* 8050D140  38 00 00 00 */	li r0, 0
/* 8050D144  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050D148  98 1D 12 95 */	stb r0, 0x1295(r29)
lbl_8050D14C:
/* 8050D14C  38 60 00 00 */	li r3, 0
/* 8050D150  39 61 00 30 */	addi r11, r1, 0x30
/* 8050D154  4B E5 50 D4 */	b _restgpr_29
/* 8050D158  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050D15C  7C 08 03 A6 */	mtlr r0
/* 8050D160  38 21 00 30 */	addi r1, r1, 0x30
/* 8050D164  4E 80 00 20 */	blr 
