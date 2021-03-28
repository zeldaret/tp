lbl_8061CD98:
/* 8061CD98  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8061CD9C  7C 08 02 A6 */	mflr r0
/* 8061CDA0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8061CDA4  39 61 00 50 */	addi r11, r1, 0x50
/* 8061CDA8  4B D4 54 10 */	b _savegpr_20
/* 8061CDAC  7C 78 1B 78 */	mr r24, r3
/* 8061CDB0  3C 60 80 62 */	lis r3, lit_3650@ha
/* 8061CDB4  3B A3 D9 D4 */	addi r29, r3, lit_3650@l
/* 8061CDB8  4B 9F B4 F0 */	b cDmrNowMidnaTalk__Fv
/* 8061CDBC  2C 03 00 00 */	cmpwi r3, 0
/* 8061CDC0  41 82 00 0C */	beq lbl_8061CDCC
/* 8061CDC4  38 60 00 01 */	li r3, 1
/* 8061CDC8  48 00 02 7C */	b lbl_8061D044
lbl_8061CDCC:
/* 8061CDCC  80 18 05 C8 */	lwz r0, 0x5c8(r24)
/* 8061CDD0  2C 00 00 00 */	cmpwi r0, 0
/* 8061CDD4  40 82 00 24 */	bne lbl_8061CDF8
/* 8061CDD8  80 18 04 A4 */	lwz r0, 0x4a4(r24)
/* 8061CDDC  90 01 00 08 */	stw r0, 8(r1)
/* 8061CDE0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8061CDE4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8061CDE8  38 81 00 08 */	addi r4, r1, 8
/* 8061CDEC  4B 9F CA 0C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8061CDF0  3C 80 80 62 */	lis r4, boss@ha
/* 8061CDF4  90 64 DB D4 */	stw r3, boss@l(r4)
lbl_8061CDF8:
/* 8061CDF8  3C 60 80 62 */	lis r3, boss@ha
/* 8061CDFC  38 63 DB D4 */	addi r3, r3, boss@l
/* 8061CE00  80 63 00 00 */	lwz r3, 0(r3)
/* 8061CE04  28 03 00 00 */	cmplwi r3, 0
/* 8061CE08  40 82 00 0C */	bne lbl_8061CE14
/* 8061CE0C  38 60 00 01 */	li r3, 1
/* 8061CE10  48 00 02 34 */	b lbl_8061D044
lbl_8061CE14:
/* 8061CE14  A8 03 47 52 */	lha r0, 0x4752(r3)
/* 8061CE18  2C 00 00 05 */	cmpwi r0, 5
/* 8061CE1C  40 82 00 20 */	bne lbl_8061CE3C
/* 8061CE20  A8 18 05 CE */	lha r0, 0x5ce(r24)
/* 8061CE24  2C 00 00 0A */	cmpwi r0, 0xa
/* 8061CE28  41 82 00 14 */	beq lbl_8061CE3C
/* 8061CE2C  38 00 00 0A */	li r0, 0xa
/* 8061CE30  B0 18 05 CE */	sth r0, 0x5ce(r24)
/* 8061CE34  38 00 00 00 */	li r0, 0
/* 8061CE38  B0 18 05 D0 */	sth r0, 0x5d0(r24)
lbl_8061CE3C:
/* 8061CE3C  A8 78 05 CC */	lha r3, 0x5cc(r24)
/* 8061CE40  38 03 00 01 */	addi r0, r3, 1
/* 8061CE44  B0 18 05 CC */	sth r0, 0x5cc(r24)
/* 8061CE48  38 60 00 00 */	li r3, 0
/* 8061CE4C  38 00 00 04 */	li r0, 4
/* 8061CE50  7C 09 03 A6 */	mtctr r0
lbl_8061CE54:
/* 8061CE54  38 A3 05 EC */	addi r5, r3, 0x5ec
/* 8061CE58  7C 98 2A AE */	lhax r4, r24, r5
/* 8061CE5C  2C 04 00 00 */	cmpwi r4, 0
/* 8061CE60  41 82 00 0C */	beq lbl_8061CE6C
/* 8061CE64  38 04 FF FF */	addi r0, r4, -1
/* 8061CE68  7C 18 2B 2E */	sthx r0, r24, r5
lbl_8061CE6C:
/* 8061CE6C  38 63 00 02 */	addi r3, r3, 2
/* 8061CE70  42 00 FF E4 */	bdnz lbl_8061CE54
/* 8061CE74  A8 78 05 F4 */	lha r3, 0x5f4(r24)
/* 8061CE78  2C 03 00 00 */	cmpwi r3, 0
/* 8061CE7C  41 82 00 0C */	beq lbl_8061CE88
/* 8061CE80  38 03 FF FF */	addi r0, r3, -1
/* 8061CE84  B0 18 05 F4 */	sth r0, 0x5f4(r24)
lbl_8061CE88:
/* 8061CE88  7F 03 C3 78 */	mr r3, r24
/* 8061CE8C  4B FF FC C1 */	bl damage_check__FP10b_oh_class
/* 8061CE90  7F 03 C3 78 */	mr r3, r24
/* 8061CE94  4B FF F4 31 */	bl action__FP10b_oh_class
/* 8061CE98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061CE9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8061CEA0  C0 38 04 D0 */	lfs f1, 0x4d0(r24)
/* 8061CEA4  C0 58 04 D4 */	lfs f2, 0x4d4(r24)
/* 8061CEA8  C0 18 0C AC */	lfs f0, 0xcac(r24)
/* 8061CEAC  EC 42 00 2A */	fadds f2, f2, f0
/* 8061CEB0  C0 78 04 D8 */	lfs f3, 0x4d8(r24)
/* 8061CEB4  4B D2 9A 34 */	b PSMTXTrans
/* 8061CEB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061CEBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8061CEC0  A8 98 04 E6 */	lha r4, 0x4e6(r24)
/* 8061CEC4  4B 9E F5 70 */	b mDoMtx_YrotM__FPA4_fs
/* 8061CEC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061CECC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8061CED0  A8 98 04 E4 */	lha r4, 0x4e4(r24)
/* 8061CED4  4B 9E F4 C8 */	b mDoMtx_XrotM__FPA4_fs
/* 8061CED8  3C 60 80 62 */	lis r3, l_HIO@ha
/* 8061CEDC  3B C3 DB C4 */	addi r30, r3, l_HIO@l
/* 8061CEE0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8061CEE4  FC 40 08 90 */	fmr f2, f1
/* 8061CEE8  FC 60 08 90 */	fmr f3, f1
/* 8061CEEC  4B 9E FF 4C */	b scaleM__14mDoMtx_stack_cFfff
/* 8061CEF0  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 8061CEF4  83 83 00 04 */	lwz r28, 4(r3)
/* 8061CEF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061CEFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8061CF00  38 9C 00 24 */	addi r4, r28, 0x24
/* 8061CF04  4B D2 95 AC */	b PSMTXCopy
/* 8061CF08  88 18 04 E2 */	lbz r0, 0x4e2(r24)
/* 8061CF0C  7C 03 07 74 */	extsb r3, r0
/* 8061CF10  4B A1 01 5C */	b dComIfGp_getReverb__Fi
/* 8061CF14  7C 65 07 74 */	extsb r5, r3
/* 8061CF18  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 8061CF1C  38 80 00 00 */	li r4, 0
/* 8061CF20  38 C0 00 00 */	li r6, 0
/* 8061CF24  4B 9F 36 A4 */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 8061CF28  80 78 05 C0 */	lwz r3, 0x5c0(r24)
/* 8061CF2C  4B 9F 04 FC */	b play__14mDoExt_baseAnmFv
/* 8061CF30  80 78 05 C4 */	lwz r3, 0x5c4(r24)
/* 8061CF34  4B 9F 04 F4 */	b play__14mDoExt_baseAnmFv
/* 8061CF38  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 8061CF3C  4B 9F 37 70 */	b modelCalc__14mDoExt_McaMorfFv
/* 8061CF40  3B 40 00 01 */	li r26, 1
/* 8061CF44  C0 38 05 E4 */	lfs f1, 0x5e4(r24)
/* 8061CF48  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 8061CF4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8061CF50  40 81 00 18 */	ble lbl_8061CF68
/* 8061CF54  A8 18 05 CE */	lha r0, 0x5ce(r24)
/* 8061CF58  2C 00 00 01 */	cmpwi r0, 1
/* 8061CF5C  40 82 00 0C */	bne lbl_8061CF68
/* 8061CF60  A8 18 05 CC */	lha r0, 0x5cc(r24)
/* 8061CF64  54 1A 07 FE */	clrlwi r26, r0, 0x1f
lbl_8061CF68:
/* 8061CF68  3B 20 00 00 */	li r25, 0
/* 8061CF6C  3A E0 00 00 */	li r23, 0
/* 8061CF70  3A C0 00 00 */	li r22, 0
/* 8061CF74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061CF78  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l
/* 8061CF7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8061CF80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8061CF84  3B 63 23 3C */	addi r27, r3, 0x233c
lbl_8061CF88:
/* 8061CF88  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8061CF8C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8061CF90  7C 1A B2 14 */	add r0, r26, r22
/* 8061CF94  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8061CF98  7C 63 02 14 */	add r3, r3, r0
/* 8061CF9C  7F E4 FB 78 */	mr r4, r31
/* 8061CFA0  4B D2 95 10 */	b PSMTXCopy
/* 8061CFA4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8061CFA8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8061CFAC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8061CFB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8061CFB4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8061CFB8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8061CFBC  A8 18 05 CE */	lha r0, 0x5ce(r24)
/* 8061CFC0  2C 00 00 0A */	cmpwi r0, 0xa
/* 8061CFC4  41 80 00 10 */	blt lbl_8061CFD4
/* 8061CFC8  C0 1D 00 94 */	lfs f0, 0x94(r29)
/* 8061CFCC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8061CFD0  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_8061CFD4:
/* 8061CFD4  7E 98 BA 14 */	add r20, r24, r23
/* 8061CFD8  3A B4 0E 10 */	addi r21, r20, 0xe10
/* 8061CFDC  7E A3 AB 78 */	mr r3, r21
/* 8061CFE0  38 81 00 0C */	addi r4, r1, 0xc
/* 8061CFE4  4B C5 26 64 */	b SetC__8cM3dGSphFRC4cXyz
/* 8061CFE8  A8 18 05 CE */	lha r0, 0x5ce(r24)
/* 8061CFEC  2C 00 00 02 */	cmpwi r0, 2
/* 8061CFF0  40 82 00 1C */	bne lbl_8061D00C
/* 8061CFF4  7E A3 AB 78 */	mr r3, r21
/* 8061CFF8  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8061CFFC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8061D000  EC 21 00 32 */	fmuls f1, f1, f0
/* 8061D004  4B C5 27 04 */	b SetR__8cM3dGSphFf
/* 8061D008  48 00 00 18 */	b lbl_8061D020
lbl_8061D00C:
/* 8061D00C  7E A3 AB 78 */	mr r3, r21
/* 8061D010  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8061D014  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8061D018  EC 21 00 32 */	fmuls f1, f1, f0
/* 8061D01C  4B C5 26 EC */	b SetR__8cM3dGSphFf
lbl_8061D020:
/* 8061D020  7F 63 DB 78 */	mr r3, r27
/* 8061D024  38 94 0C EC */	addi r4, r20, 0xcec
/* 8061D028  4B C4 7B 80 */	b Set__4cCcSFP8cCcD_Obj
/* 8061D02C  3B 39 00 01 */	addi r25, r25, 1
/* 8061D030  2C 19 00 0F */	cmpwi r25, 0xf
/* 8061D034  3A F7 01 38 */	addi r23, r23, 0x138
/* 8061D038  3A D6 00 02 */	addi r22, r22, 2
/* 8061D03C  41 80 FF 4C */	blt lbl_8061CF88
/* 8061D040  38 60 00 01 */	li r3, 1
lbl_8061D044:
/* 8061D044  39 61 00 50 */	addi r11, r1, 0x50
/* 8061D048  4B D4 51 BC */	b _restgpr_20
/* 8061D04C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8061D050  7C 08 03 A6 */	mtlr r0
/* 8061D054  38 21 00 50 */	addi r1, r1, 0x50
/* 8061D058  4E 80 00 20 */	blr 
