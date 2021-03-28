lbl_804CE9D0:
/* 804CE9D0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804CE9D4  7C 08 02 A6 */	mflr r0
/* 804CE9D8  90 01 00 84 */	stw r0, 0x84(r1)
/* 804CE9DC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 804CE9E0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 804CE9E4  39 61 00 70 */	addi r11, r1, 0x70
/* 804CE9E8  4B E9 37 F4 */	b _savegpr_29
/* 804CE9EC  7C 7E 1B 78 */	mr r30, r3
/* 804CE9F0  3C 60 80 4D */	lis r3, ccSphSrc@ha
/* 804CE9F4  3B E3 15 F0 */	addi r31, r3, ccSphSrc@l
/* 804CE9F8  A8 7E 05 CC */	lha r3, 0x5cc(r30)
/* 804CE9FC  2C 03 00 01 */	cmpwi r3, 1
/* 804CEA00  41 82 00 80 */	beq lbl_804CEA80
/* 804CEA04  40 80 02 FC */	bge lbl_804CED00
/* 804CEA08  2C 03 00 00 */	cmpwi r3, 0
/* 804CEA0C  40 80 00 08 */	bge lbl_804CEA14
/* 804CEA10  48 00 02 F0 */	b lbl_804CED00
lbl_804CEA14:
/* 804CEA14  38 03 00 01 */	addi r0, r3, 1
/* 804CEA18  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 804CEA1C  38 00 E3 48 */	li r0, -7352
/* 804CEA20  B0 1E 05 DC */	sth r0, 0x5dc(r30)
/* 804CEA24  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CEA28  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 804CEA2C  38 00 00 78 */	li r0, 0x78
/* 804CEA30  B0 1E 05 D6 */	sth r0, 0x5d6(r30)
/* 804CEA34  3C 60 80 4D */	lis r3, sLink_Pos@ha
/* 804CEA38  38 63 18 2C */	addi r3, r3, sLink_Pos@l
/* 804CEA3C  80 63 00 00 */	lwz r3, 0(r3)
/* 804CEA40  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804CEA44  4B DA 21 C0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 804CEA48  7C 63 07 34 */	extsh r3, r3
/* 804CEA4C  38 03 D0 00 */	addi r0, r3, -12288
/* 804CEA50  C8 3F 00 90 */	lfd f1, 0x90(r31)
/* 804CEA54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CEA58  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804CEA5C  3C 00 43 30 */	lis r0, 0x4330
/* 804CEA60  90 01 00 48 */	stw r0, 0x48(r1)
/* 804CEA64  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 804CEA68  EC 00 08 28 */	fsubs f0, f0, f1
/* 804CEA6C  FC 00 00 1E */	fctiwz f0, f0
/* 804CEA70  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804CEA74  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804CEA78  B0 1E 05 DA */	sth r0, 0x5da(r30)
/* 804CEA7C  48 00 02 84 */	b lbl_804CED00
lbl_804CEA80:
/* 804CEA80  A8 1E 05 D6 */	lha r0, 0x5d6(r30)
/* 804CEA84  2C 00 00 64 */	cmpwi r0, 0x64
/* 804CEA88  40 82 00 18 */	bne lbl_804CEAA0
/* 804CEA8C  88 1E 05 C8 */	lbz r0, 0x5c8(r30)
/* 804CEA90  28 00 00 00 */	cmplwi r0, 0
/* 804CEA94  41 82 00 0C */	beq lbl_804CEAA0
/* 804CEA98  38 60 00 1E */	li r3, 0x1e
/* 804CEA9C  4B BC 93 F0 */	b execItemGet__FUc
lbl_804CEAA0:
/* 804CEAA0  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804CEAA4  A8 7E 05 D6 */	lha r3, 0x5d6(r30)
/* 804CEAA8  C8 3F 00 90 */	lfd f1, 0x90(r31)
/* 804CEAAC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804CEAB0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804CEAB4  3C 00 43 30 */	lis r0, 0x4330
/* 804CEAB8  90 01 00 50 */	stw r0, 0x50(r1)
/* 804CEABC  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 804CEAC0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804CEAC4  EF E2 00 24 */	fdivs f31, f2, f0
/* 804CEAC8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804CEACC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804CEAD0  40 81 00 08 */	ble lbl_804CEAD8
/* 804CEAD4  FF E0 00 90 */	fmr f31, f0
lbl_804CEAD8:
/* 804CEAD8  C8 3F 00 90 */	lfd f1, 0x90(r31)
/* 804CEADC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804CEAE0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804CEAE4  3C 00 43 30 */	lis r0, 0x4330
/* 804CEAE8  90 01 00 48 */	stw r0, 0x48(r1)
/* 804CEAEC  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 804CEAF0  EC 20 08 28 */	fsubs f1, f0, f1
/* 804CEAF4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 804CEAF8  EC 61 00 24 */	fdivs f3, f1, f0
/* 804CEAFC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804CEB00  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 804CEB04  40 82 00 B0 */	bne lbl_804CEBB4
/* 804CEB08  2C 03 00 6E */	cmpwi r3, 0x6e
/* 804CEB0C  40 81 00 A8 */	ble lbl_804CEBB4
/* 804CEB10  2C 03 00 73 */	cmpwi r3, 0x73
/* 804CEB14  40 81 00 38 */	ble lbl_804CEB4C
/* 804CEB18  C3 FF 00 58 */	lfs f31, 0x58(r31)
/* 804CEB1C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804CEB20  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 804CEB24  EC 21 00 24 */	fdivs f1, f1, f0
/* 804CEB28  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804CEB2C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804CEB30  EC 21 00 2A */	fadds f1, f1, f0
/* 804CEB34  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CEB38  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804CEB3C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 804CEB40  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804CEB44  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 804CEB48  48 00 00 38 */	b lbl_804CEB80
lbl_804CEB4C:
/* 804CEB4C  2C 03 00 6E */	cmpwi r3, 0x6e
/* 804CEB50  40 81 00 30 */	ble lbl_804CEB80
/* 804CEB54  C3 FF 00 68 */	lfs f31, 0x68(r31)
/* 804CEB58  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804CEB5C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 804CEB60  EC 21 00 24 */	fdivs f1, f1, f0
/* 804CEB64  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804CEB68  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804CEB6C  EC 21 00 2A */	fadds f1, f1, f0
/* 804CEB70  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CEB74  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804CEB78  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804CEB7C  D0 21 00 40 */	stfs f1, 0x40(r1)
lbl_804CEB80:
/* 804CEB80  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804CEB84  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804CEB88  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804CEB8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804CEB90  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 804CEB94  38 81 00 20 */	addi r4, r1, 0x20
/* 804CEB98  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 804CEB9C  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 804CEBA0  4B DA 15 D8 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 804CEBA4  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 804CEBA8  80 7E 06 B0 */	lwz r3, 0x6b0(r30)
/* 804CEBAC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804CEBB0  48 00 00 94 */	b lbl_804CEC44
lbl_804CEBB4:
/* 804CEBB4  A8 1E 05 DA */	lha r0, 0x5da(r30)
/* 804CEBB8  C8 5F 00 90 */	lfd f2, 0x90(r31)
/* 804CEBBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CEBC0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804CEBC4  3C 60 43 30 */	lis r3, 0x4330
/* 804CEBC8  90 61 00 50 */	stw r3, 0x50(r1)
/* 804CEBCC  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 804CEBD0  EC 20 10 28 */	fsubs f1, f0, f2
/* 804CEBD4  A8 1E 05 DC */	lha r0, 0x5dc(r30)
/* 804CEBD8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CEBDC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804CEBE0  90 61 00 48 */	stw r3, 0x48(r1)
/* 804CEBE4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 804CEBE8  EC 00 10 28 */	fsubs f0, f0, f2
/* 804CEBEC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804CEBF0  EC 01 00 2A */	fadds f0, f1, f0
/* 804CEBF4  FC 00 00 1E */	fctiwz f0, f0
/* 804CEBF8  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 804CEBFC  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 804CEC00  B0 1E 05 DA */	sth r0, 0x5da(r30)
/* 804CEC04  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804CEC08  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 804CEC0C  EC 21 00 24 */	fdivs f1, f1, f0
/* 804CEC10  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804CEC14  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804CEC18  EC 41 00 2A */	fadds f2, f1, f0
/* 804CEC1C  C0 3E 05 E0 */	lfs f1, 0x5e0(r30)
/* 804CEC20  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CEC24  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804CEC28  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 804CEC2C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 804CEC30  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 804CEC34  C0 1E 05 EC */	lfs f0, 0x5ec(r30)
/* 804CEC38  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CEC3C  80 7E 06 B0 */	lwz r3, 0x6b0(r30)
/* 804CEC40  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_804CEC44:
/* 804CEC44  A8 7E 05 DA */	lha r3, 0x5da(r30)
/* 804CEC48  38 03 C0 00 */	addi r0, r3, -16384
/* 804CEC4C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 804CEC50  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 804CEC54  FC 20 F8 90 */	fmr f1, f31
/* 804CEC58  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 804CEC5C  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 804CEC60  4B DA 0D DC */	b cLib_addCalc2__FPffff
/* 804CEC64  3C 60 80 4D */	lis r3, sLink_Pos@ha
/* 804CEC68  38 63 18 2C */	addi r3, r3, sLink_Pos@l
/* 804CEC6C  80 63 00 00 */	lwz r3, 0(r3)
/* 804CEC70  4B B3 E0 F4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 804CEC74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804CEC78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804CEC7C  A8 9E 05 DA */	lha r4, 0x5da(r30)
/* 804CEC80  4B B3 D7 B4 */	b mDoMtx_YrotM__FPA4_fs
/* 804CEC84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804CEC88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804CEC8C  38 81 00 38 */	addi r4, r1, 0x38
/* 804CEC90  38 A1 00 2C */	addi r5, r1, 0x2c
/* 804CEC94  4B E7 80 D8 */	b PSMTXMultVec
/* 804CEC98  C0 5E 05 E0 */	lfs f2, 0x5e0(r30)
/* 804CEC9C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 804CECA0  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 804CECA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CECA8  EC 02 00 2A */	fadds f0, f2, f0
/* 804CECAC  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 804CECB0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804CECB4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 804CECB8  C0 5E 05 EC */	lfs f2, 0x5ec(r30)
/* 804CECBC  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 804CECC0  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 804CECC4  4B DA 0C B8 */	b cLib_addCalc__FPfffff
/* 804CECC8  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 804CECCC  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 804CECD0  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 804CECD4  C0 1E 05 EC */	lfs f0, 0x5ec(r30)
/* 804CECD8  EC 42 00 32 */	fmuls f2, f2, f0
/* 804CECDC  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 804CECE0  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 804CECE4  4B DA 0C 98 */	b cLib_addCalc__FPfffff
/* 804CECE8  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 804CECEC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 804CECF0  C0 5E 05 EC */	lfs f2, 0x5ec(r30)
/* 804CECF4  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 804CECF8  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 804CECFC  4B DA 0C 80 */	b cLib_addCalc__FPfffff
lbl_804CED00:
/* 804CED00  80 7E 06 B0 */	lwz r3, 0x6b0(r30)
/* 804CED04  38 63 00 0C */	addi r3, r3, 0xc
/* 804CED08  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 804CED0C  4B E5 97 20 */	b checkPass__12J3DFrameCtrlFf
/* 804CED10  2C 03 00 00 */	cmpwi r3, 0
/* 804CED14  41 82 00 10 */	beq lbl_804CED24
/* 804CED18  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CED1C  80 7E 06 B0 */	lwz r3, 0x6b0(r30)
/* 804CED20  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_804CED24:
/* 804CED24  A8 1E 05 D6 */	lha r0, 0x5d6(r30)
/* 804CED28  2C 00 00 00 */	cmpwi r0, 0
/* 804CED2C  40 82 00 0C */	bne lbl_804CED38
/* 804CED30  7F C3 F3 78 */	mr r3, r30
/* 804CED34  4B B4 AF 48 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_804CED38:
/* 804CED38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CED3C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 804CED40  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804CED44  38 00 00 FF */	li r0, 0xff
/* 804CED48  90 01 00 08 */	stw r0, 8(r1)
/* 804CED4C  38 80 00 00 */	li r4, 0
/* 804CED50  90 81 00 0C */	stw r4, 0xc(r1)
/* 804CED54  38 00 FF FF */	li r0, -1
/* 804CED58  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CED5C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804CED60  90 81 00 18 */	stw r4, 0x18(r1)
/* 804CED64  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804CED68  80 9E 06 04 */	lwz r4, 0x604(r30)
/* 804CED6C  38 A0 00 00 */	li r5, 0
/* 804CED70  38 C0 07 2F */	li r6, 0x72f
/* 804CED74  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 804CED78  39 1E 01 0C */	addi r8, r30, 0x10c
/* 804CED7C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 804CED80  39 40 00 00 */	li r10, 0
/* 804CED84  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804CED88  4B B7 E7 44 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804CED8C  90 7E 06 04 */	stw r3, 0x604(r30)
/* 804CED90  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804CED94  38 00 00 FF */	li r0, 0xff
/* 804CED98  90 01 00 08 */	stw r0, 8(r1)
/* 804CED9C  38 80 00 00 */	li r4, 0
/* 804CEDA0  90 81 00 0C */	stw r4, 0xc(r1)
/* 804CEDA4  38 00 FF FF */	li r0, -1
/* 804CEDA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CEDAC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804CEDB0  90 81 00 18 */	stw r4, 0x18(r1)
/* 804CEDB4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804CEDB8  80 9E 06 0C */	lwz r4, 0x60c(r30)
/* 804CEDBC  38 A0 00 00 */	li r5, 0
/* 804CEDC0  38 C0 07 30 */	li r6, 0x730
/* 804CEDC4  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 804CEDC8  39 1E 01 0C */	addi r8, r30, 0x10c
/* 804CEDCC  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 804CEDD0  39 40 00 00 */	li r10, 0
/* 804CEDD4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804CEDD8  4B B7 E6 F4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804CEDDC  90 7E 06 0C */	stw r3, 0x60c(r30)
/* 804CEDE0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804CEDE4  38 00 00 FF */	li r0, 0xff
/* 804CEDE8  90 01 00 08 */	stw r0, 8(r1)
/* 804CEDEC  38 80 00 00 */	li r4, 0
/* 804CEDF0  90 81 00 0C */	stw r4, 0xc(r1)
/* 804CEDF4  38 00 FF FF */	li r0, -1
/* 804CEDF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CEDFC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804CEE00  90 81 00 18 */	stw r4, 0x18(r1)
/* 804CEE04  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804CEE08  80 9E 06 10 */	lwz r4, 0x610(r30)
/* 804CEE0C  38 A0 00 00 */	li r5, 0
/* 804CEE10  38 C0 07 32 */	li r6, 0x732
/* 804CEE14  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 804CEE18  39 1E 01 0C */	addi r8, r30, 0x10c
/* 804CEE1C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 804CEE20  39 40 00 00 */	li r10, 0
/* 804CEE24  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804CEE28  4B B7 E6 A4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804CEE2C  90 7E 06 10 */	stw r3, 0x610(r30)
/* 804CEE30  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 804CEE34  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 804CEE38  39 61 00 70 */	addi r11, r1, 0x70
/* 804CEE3C  4B E9 33 EC */	b _restgpr_29
/* 804CEE40  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804CEE44  7C 08 03 A6 */	mtlr r0
/* 804CEE48  38 21 00 80 */	addi r1, r1, 0x80
/* 804CEE4C  4E 80 00 20 */	blr 
