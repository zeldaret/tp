lbl_80113D58:
/* 80113D58  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 80113D5C  7C 08 02 A6 */	mflr r0
/* 80113D60  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 80113D64  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 80113D68  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, 0 /* qr0 */
/* 80113D6C  DB C1 01 90 */	stfd f30, 0x190(r1)
/* 80113D70  F3 C1 01 98 */	psq_st f30, 408(r1), 0, 0 /* qr0 */
/* 80113D74  DB A1 01 80 */	stfd f29, 0x180(r1)
/* 80113D78  F3 A1 01 88 */	psq_st f29, 392(r1), 0, 0 /* qr0 */
/* 80113D7C  39 61 01 80 */	addi r11, r1, 0x180
/* 80113D80  48 24 E4 49 */	bl _savegpr_24
/* 80113D84  7C 7F 1B 78 */	mr r31, r3
/* 80113D88  3C 60 80 39 */	lis r3, lit_3757@ha
/* 80113D8C  3B C3 D6 58 */	addi r30, r3, lit_3757@l
/* 80113D90  C0 1F 37 F8 */	lfs f0, 0x37f8(r31)
/* 80113D94  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80113D98  C0 1F 37 FC */	lfs f0, 0x37fc(r31)
/* 80113D9C  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80113DA0  C0 1F 38 00 */	lfs f0, 0x3800(r31)
/* 80113DA4  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80113DA8  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 80113DAC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80113DB0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80113DB4  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 80113DB8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80113DBC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80113DC0  48 23 26 F1 */	bl PSMTXCopy
/* 80113DC4  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 80113DC8  C0 42 96 30 */	lfs f2, lit_34772(r2)
/* 80113DCC  C0 62 96 34 */	lfs f3, lit_34773(r2)
/* 80113DD0  4B EF 8F CD */	bl transM__14mDoMtx_stack_cFfff
/* 80113DD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80113DD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80113DDC  38 80 6A AA */	li r4, 0x6aaa
/* 80113DE0  38 A0 C6 67 */	li r5, -14745
/* 80113DE4  38 C0 4E EE */	li r6, 0x4eee
/* 80113DE8  4B EF 83 7D */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 80113DEC  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 80113DF0  2C 00 00 00 */	cmpwi r0, 0
/* 80113DF4  40 82 00 24 */	bne lbl_80113E18
/* 80113DF8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80113DFC  FC 40 08 90 */	fmr f2, f1
/* 80113E00  C0 62 93 30 */	lfs f3, lit_7625(r2)
/* 80113E04  4B EF 8F 99 */	bl transM__14mDoMtx_stack_cFfff
/* 80113E08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80113E0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80113E10  38 80 7F FF */	li r4, 0x7fff
/* 80113E14  4B EF 85 89 */	bl mDoMtx_XrotM__FPA4_fs
lbl_80113E18:
/* 80113E18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80113E1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80113E20  38 9E 24 EC */	addi r4, r30, 0x24ec
/* 80113E24  38 BF 37 EC */	addi r5, r31, 0x37ec
/* 80113E28  48 23 2F 45 */	bl PSMTXMultVec
/* 80113E2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80113E30  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
/* 80113E34  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80113E38  D0 1F 37 E0 */	stfs f0, 0x37e0(r31)
/* 80113E3C  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80113E40  D0 1F 37 E4 */	stfs f0, 0x37e4(r31)
/* 80113E44  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80113E48  D0 1F 37 E8 */	stfs f0, 0x37e8(r31)
/* 80113E4C  7F 63 DB 78 */	mr r3, r27
/* 80113E50  38 9F 31 6C */	addi r4, r31, 0x316c
/* 80113E54  4B EF 8D AD */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 80113E58  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 80113E5C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80113E60  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80113E64  C0 03 01 BC */	lfs f0, 0x1bc(r3)
/* 80113E68  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 80113E6C  C0 03 01 CC */	lfs f0, 0x1cc(r3)
/* 80113E70  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80113E74  C0 03 01 DC */	lfs f0, 0x1dc(r3)
/* 80113E78  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 80113E7C  C0 03 02 AC */	lfs f0, 0x2ac(r3)
/* 80113E80  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80113E84  C0 03 02 BC */	lfs f0, 0x2bc(r3)
/* 80113E88  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 80113E8C  C0 03 02 CC */	lfs f0, 0x2cc(r3)
/* 80113E90  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80113E94  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80113E98  38 81 01 24 */	addi r4, r1, 0x124
/* 80113E9C  38 A1 01 18 */	addi r5, r1, 0x118
/* 80113EA0  48 15 2C 45 */	bl __pl__4cXyzCFRC3Vec
/* 80113EA4  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80113EA8  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80113EAC  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 80113EB0  48 15 2C D5 */	bl __ml__4cXyzCFf
/* 80113EB4  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80113EB8  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80113EBC  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80113EC0  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80113EC4  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80113EC8  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80113ECC  38 00 00 00 */	li r0, 0
/* 80113ED0  B0 1F 30 1C */	sth r0, 0x301c(r31)
/* 80113ED4  3B 80 00 00 */	li r28, 0
/* 80113ED8  3B A0 00 00 */	li r29, 0
/* 80113EDC  A8 7F 30 26 */	lha r3, 0x3026(r31)
/* 80113EE0  2C 03 00 00 */	cmpwi r3, 0
/* 80113EE4  41 82 00 0C */	beq lbl_80113EF0
/* 80113EE8  38 03 FF FF */	addi r0, r3, -1
/* 80113EEC  B0 1F 30 26 */	sth r0, 0x3026(r31)
lbl_80113EF0:
/* 80113EF0  38 7F 0F B8 */	addi r3, r31, 0xfb8
/* 80113EF4  4B F7 03 CD */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80113EF8  28 03 00 00 */	cmplwi r3, 0
/* 80113EFC  41 82 00 34 */	beq lbl_80113F30
/* 80113F00  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80113F04  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 80113F08  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80113F0C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80113F10  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 80113F14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80113F18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80113F1C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80113F20  38 80 00 03 */	li r4, 3
/* 80113F24  38 A0 00 01 */	li r5, 1
/* 80113F28  38 C1 00 B8 */	addi r6, r1, 0xb8
/* 80113F2C  4B F5 BA F9 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80113F30:
/* 80113F30  A8 7F 30 18 */	lha r3, 0x3018(r31)
/* 80113F34  7C 60 07 35 */	extsh. r0, r3
/* 80113F38  40 82 00 B4 */	bne lbl_80113FEC
/* 80113F3C  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 80113F40  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80113F44  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80113F48  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80113F4C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80113F50  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80113F54  48 23 25 5D */	bl PSMTXCopy
/* 80113F58  C0 22 96 38 */	lfs f1, lit_34774(r2)
/* 80113F5C  C0 42 96 3C */	lfs f2, lit_34775(r2)
/* 80113F60  C0 62 96 40 */	lfs f3, lit_34776(r2)
/* 80113F64  4B EF 8E 39 */	bl transM__14mDoMtx_stack_cFfff
/* 80113F68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80113F6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80113F70  38 80 2B BB */	li r4, 0x2bbb
/* 80113F74  38 A0 FE 39 */	li r5, -455
/* 80113F78  38 C0 23 C4 */	li r6, 0x23c4
/* 80113F7C  4B EF 81 E9 */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 80113F80  80 7F 38 40 */	lwz r3, 0x3840(r31)
/* 80113F84  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80113F88  D0 03 00 00 */	stfs f0, 0(r3)
/* 80113F8C  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80113F90  D0 03 00 04 */	stfs f0, 4(r3)
/* 80113F94  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80113F98  D0 03 00 08 */	stfs f0, 8(r3)
/* 80113F9C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80113FA0  28 00 00 D8 */	cmplwi r0, 0xd8
/* 80113FA4  41 82 00 0C */	beq lbl_80113FB0
/* 80113FA8  28 00 00 D9 */	cmplwi r0, 0xd9
/* 80113FAC  40 82 00 18 */	bne lbl_80113FC4
lbl_80113FB0:
/* 80113FB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80113FB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80113FB8  80 9F 38 44 */	lwz r4, 0x3844(r31)
/* 80113FBC  4B EF 8C 45 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 80113FC0  48 00 00 20 */	b lbl_80113FE0
lbl_80113FC4:
/* 80113FC4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80113FC8  80 7F 38 44 */	lwz r3, 0x3844(r31)
/* 80113FCC  38 00 C0 00 */	li r0, -16384
/* 80113FD0  B0 03 00 00 */	sth r0, 0(r3)
/* 80113FD4  B0 83 00 02 */	sth r4, 2(r3)
/* 80113FD8  38 00 00 00 */	li r0, 0
/* 80113FDC  B0 03 00 04 */	sth r0, 4(r3)
lbl_80113FE0:
/* 80113FE0  38 00 00 06 */	li r0, 6
/* 80113FE4  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 80113FE8  48 00 0C F4 */	b lbl_80114CDC
lbl_80113FEC:
/* 80113FEC  2C 03 00 01 */	cmpwi r3, 1
/* 80113FF0  41 82 0C EC */	beq lbl_80114CDC
/* 80113FF4  2C 03 00 02 */	cmpwi r3, 2
/* 80113FF8  40 82 00 D8 */	bne lbl_801140D0
/* 80113FFC  C0 82 95 28 */	lfs f4, lit_21624(r2)
/* 80114000  C0 62 96 44 */	lfs f3, lit_34777(r2)
/* 80114004  C0 3F 20 58 */	lfs f1, 0x2058(r31)
/* 80114008  A8 1F 20 50 */	lha r0, 0x2050(r31)
/* 8011400C  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 80114010  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80114014  90 01 01 4C */	stw r0, 0x14c(r1)
/* 80114018  3C 60 43 30 */	lis r3, 0x4330
/* 8011401C  90 61 01 48 */	stw r3, 0x148(r1)
/* 80114020  C8 01 01 48 */	lfd f0, 0x148(r1)
/* 80114024  EC 00 10 28 */	fsubs f0, f0, f2
/* 80114028  EC 01 00 24 */	fdivs f0, f1, f0
/* 8011402C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80114030  EC 04 00 28 */	fsubs f0, f4, f0
/* 80114034  FC 00 00 1E */	fctiwz f0, f0
/* 80114038  D8 01 01 50 */	stfd f0, 0x150(r1)
/* 8011403C  83 01 01 54 */	lwz r24, 0x154(r1)
/* 80114040  38 00 00 03 */	li r0, 3
/* 80114044  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 80114048  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 8011404C  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 80114050  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80114054  90 01 01 5C */	stw r0, 0x15c(r1)
/* 80114058  90 61 01 58 */	stw r3, 0x158(r1)
/* 8011405C  C8 01 01 58 */	lfd f0, 0x158(r1)
/* 80114060  EC 00 10 28 */	fsubs f0, f0, f2
/* 80114064  EC 21 00 32 */	fmuls f1, f1, f0
/* 80114068  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011406C  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 80114070  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80114074  D0 21 01 2C */	stfs f1, 0x12c(r1)
/* 80114078  38 7F 37 EC */	addi r3, r31, 0x37ec
/* 8011407C  4B EF 8C E9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80114080  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80114084  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80114088  A8 9F 05 9C */	lha r4, 0x59c(r31)
/* 8011408C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80114090  38 C0 00 00 */	li r6, 0
/* 80114094  4B EF 82 0D */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80114098  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8011409C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 801140A0  7F 04 C3 78 */	mr r4, r24
/* 801140A4  4B EF 83 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 801140A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801140AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 801140B0  38 81 01 24 */	addi r4, r1, 0x124
/* 801140B4  80 BF 38 40 */	lwz r5, 0x3840(r31)
/* 801140B8  48 23 2C B5 */	bl PSMTXMultVec
/* 801140BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801140C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 801140C4  80 9F 38 44 */	lwz r4, 0x3844(r31)
/* 801140C8  4B EF 8B 39 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 801140CC  48 00 0C 10 */	b lbl_80114CDC
lbl_801140D0:
/* 801140D0  2C 03 00 03 */	cmpwi r3, 3
/* 801140D4  41 82 0C 08 */	beq lbl_80114CDC
/* 801140D8  2C 03 00 04 */	cmpwi r3, 4
/* 801140DC  40 82 00 1C */	bne lbl_801140F8
/* 801140E0  A8 7F 30 1A */	lha r3, 0x301a(r31)
/* 801140E4  38 03 00 01 */	addi r0, r3, 1
/* 801140E8  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 801140EC  7F E3 FB 78 */	mr r3, r31
/* 801140F0  4B FF FB B1 */	bl checkIronBallReturnChange__9daAlink_cFv
/* 801140F4  48 00 0B E8 */	b lbl_80114CDC
lbl_801140F8:
/* 801140F8  2C 03 00 05 */	cmpwi r3, 5
/* 801140FC  41 82 00 0C */	beq lbl_80114108
/* 80114100  2C 03 00 06 */	cmpwi r3, 6
/* 80114104  40 82 0A 60 */	bne lbl_80114B64
lbl_80114108:
/* 80114108  38 9F 17 3C */	addi r4, r31, 0x173c
/* 8011410C  80 7F 38 40 */	lwz r3, 0x3840(r31)
/* 80114110  7C 65 1B 78 */	mr r5, r3
/* 80114114  48 23 2F 7D */	bl PSVECAdd
/* 80114118  7F E3 FB 78 */	mr r3, r31
/* 8011411C  4B FF FB 85 */	bl checkIronBallReturnChange__9daAlink_cFv
/* 80114120  2C 03 00 00 */	cmpwi r3, 0
/* 80114124  40 82 0B B8 */	bne lbl_80114CDC
/* 80114128  38 7E 14 18 */	addi r3, r30, 0x1418
/* 8011412C  C3 C3 00 68 */	lfs f30, 0x68(r3)
/* 80114130  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 80114134  2C 00 00 05 */	cmpwi r0, 5
/* 80114138  40 82 00 64 */	bne lbl_8011419C
/* 8011413C  C3 E3 00 64 */	lfs f31, 0x64(r3)
/* 80114140  80 7F 38 40 */	lwz r3, 0x3840(r31)
/* 80114144  38 81 00 28 */	addi r4, r1, 0x28
/* 80114148  4B F0 97 49 */	bl fopAcM_getWaterY__FPC4cXyzPf
/* 8011414C  2C 03 00 00 */	cmpwi r3, 0
/* 80114150  41 82 00 50 */	beq lbl_801141A0
/* 80114154  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80114158  80 7F 38 40 */	lwz r3, 0x3840(r31)
/* 8011415C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80114160  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80114164  40 81 00 3C */	ble lbl_801141A0
/* 80114168  A8 1F 30 22 */	lha r0, 0x3022(r31)
/* 8011416C  2C 00 00 00 */	cmpwi r0, 0
/* 80114170  40 82 00 1C */	bne lbl_8011418C
/* 80114174  38 00 00 01 */	li r0, 1
/* 80114178  B0 1F 30 22 */	sth r0, 0x3022(r31)
/* 8011417C  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 80114180  7C 64 1B 78 */	mr r4, r3
/* 80114184  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 80114188  48 23 2F 51 */	bl PSVECScale
lbl_8011418C:
/* 8011418C  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 80114190  EF FF 00 32 */	fmuls f31, f31, f0
/* 80114194  EF DE 00 32 */	fmuls f30, f30, f0
/* 80114198  48 00 00 08 */	b lbl_801141A0
lbl_8011419C:
/* 8011419C  C3 E3 00 60 */	lfs f31, 0x60(r3)
lbl_801141A0:
/* 801141A0  38 61 00 AC */	addi r3, r1, 0xac
/* 801141A4  80 9F 38 48 */	lwz r4, 0x3848(r31)
/* 801141A8  C0 22 93 DC */	lfs f1, lit_11471(r2)
/* 801141AC  48 15 29 D9 */	bl __ml__4cXyzCFf
/* 801141B0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 801141B4  38 9F 37 F8 */	addi r4, r31, 0x37f8
/* 801141B8  38 A1 00 AC */	addi r5, r1, 0xac
/* 801141BC  48 15 29 29 */	bl __pl__4cXyzCFRC3Vec
/* 801141C0  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 801141C4  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 801141C8  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 801141CC  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 801141D0  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 801141D4  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 801141D8  80 7F 38 40 */	lwz r3, 0x3840(r31)
/* 801141DC  38 9F 37 EC */	addi r4, r31, 0x37ec
/* 801141E0  48 23 31 BD */	bl PSVECSquareDistance
/* 801141E4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801141E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801141EC  40 81 00 58 */	ble lbl_80114244
/* 801141F0  FC 00 08 34 */	frsqrte f0, f1
/* 801141F4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 801141F8  FC 44 00 32 */	fmul f2, f4, f0
/* 801141FC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80114200  FC 00 00 32 */	fmul f0, f0, f0
/* 80114204  FC 01 00 32 */	fmul f0, f1, f0
/* 80114208  FC 03 00 28 */	fsub f0, f3, f0
/* 8011420C  FC 02 00 32 */	fmul f0, f2, f0
/* 80114210  FC 44 00 32 */	fmul f2, f4, f0
/* 80114214  FC 00 00 32 */	fmul f0, f0, f0
/* 80114218  FC 01 00 32 */	fmul f0, f1, f0
/* 8011421C  FC 03 00 28 */	fsub f0, f3, f0
/* 80114220  FC 02 00 32 */	fmul f0, f2, f0
/* 80114224  FC 44 00 32 */	fmul f2, f4, f0
/* 80114228  FC 00 00 32 */	fmul f0, f0, f0
/* 8011422C  FC 01 00 32 */	fmul f0, f1, f0
/* 80114230  FC 03 00 28 */	fsub f0, f3, f0
/* 80114234  FC 02 00 32 */	fmul f0, f2, f0
/* 80114238  FC 21 00 32 */	fmul f1, f1, f0
/* 8011423C  FC 20 08 18 */	frsp f1, f1
/* 80114240  48 00 00 88 */	b lbl_801142C8
lbl_80114244:
/* 80114244  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80114248  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011424C  40 80 00 10 */	bge lbl_8011425C
/* 80114250  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80114254  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80114258  48 00 00 70 */	b lbl_801142C8
lbl_8011425C:
/* 8011425C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80114260  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80114264  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80114268  3C 00 7F 80 */	lis r0, 0x7f80
/* 8011426C  7C 03 00 00 */	cmpw r3, r0
/* 80114270  41 82 00 14 */	beq lbl_80114284
/* 80114274  40 80 00 40 */	bge lbl_801142B4
/* 80114278  2C 03 00 00 */	cmpwi r3, 0
/* 8011427C  41 82 00 20 */	beq lbl_8011429C
/* 80114280  48 00 00 34 */	b lbl_801142B4
lbl_80114284:
/* 80114284  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80114288  41 82 00 0C */	beq lbl_80114294
/* 8011428C  38 00 00 01 */	li r0, 1
/* 80114290  48 00 00 28 */	b lbl_801142B8
lbl_80114294:
/* 80114294  38 00 00 02 */	li r0, 2
/* 80114298  48 00 00 20 */	b lbl_801142B8
lbl_8011429C:
/* 8011429C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801142A0  41 82 00 0C */	beq lbl_801142AC
/* 801142A4  38 00 00 05 */	li r0, 5
/* 801142A8  48 00 00 10 */	b lbl_801142B8
lbl_801142AC:
/* 801142AC  38 00 00 03 */	li r0, 3
/* 801142B0  48 00 00 08 */	b lbl_801142B8
lbl_801142B4:
/* 801142B4  38 00 00 04 */	li r0, 4
lbl_801142B8:
/* 801142B8  2C 00 00 01 */	cmpwi r0, 1
/* 801142BC  40 82 00 0C */	bne lbl_801142C8
/* 801142C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801142C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_801142C8:
/* 801142C8  38 7E 14 18 */	addi r3, r30, 0x1418
/* 801142CC  A8 03 00 14 */	lha r0, 0x14(r3)
/* 801142D0  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 801142D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801142D8  90 01 01 5C */	stw r0, 0x15c(r1)
/* 801142DC  3C 00 43 30 */	lis r0, 0x4330
/* 801142E0  90 01 01 58 */	stw r0, 0x158(r1)
/* 801142E4  C8 01 01 58 */	lfd f0, 0x158(r1)
/* 801142E8  EC 40 10 28 */	fsubs f2, f0, f2
/* 801142EC  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 801142F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 801142F4  EC 02 00 2A */	fadds f0, f2, f0
/* 801142F8  FC 00 00 1E */	fctiwz f0, f0
/* 801142FC  D8 01 01 50 */	stfd f0, 0x150(r1)
/* 80114300  80 81 01 54 */	lwz r4, 0x154(r1)
/* 80114304  7C 83 07 34 */	extsh r3, r4
/* 80114308  2C 03 00 64 */	cmpwi r3, 0x64
/* 8011430C  40 81 00 10 */	ble lbl_8011431C
/* 80114310  38 00 00 64 */	li r0, 0x64
/* 80114314  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 80114318  48 00 00 14 */	b lbl_8011432C
lbl_8011431C:
/* 8011431C  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 80114320  7C 00 18 00 */	cmpw r0, r3
/* 80114324  40 80 00 08 */	bge lbl_8011432C
/* 80114328  B0 9F 30 1A */	sth r4, 0x301a(r31)
lbl_8011432C:
/* 8011432C  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 80114330  C0 03 00 04 */	lfs f0, 4(r3)
/* 80114334  EC 00 F8 2A */	fadds f0, f0, f31
/* 80114338  D0 03 00 04 */	stfs f0, 4(r3)
/* 8011433C  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 80114340  C0 03 00 04 */	lfs f0, 4(r3)
/* 80114344  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80114348  40 80 00 08 */	bge lbl_80114350
/* 8011434C  D3 C3 00 04 */	stfs f30, 4(r3)
lbl_80114350:
/* 80114350  80 7F 38 40 */	lwz r3, 0x3840(r31)
/* 80114354  80 9F 38 48 */	lwz r4, 0x3848(r31)
/* 80114358  7C 65 1B 78 */	mr r5, r3
/* 8011435C  48 23 2D 35 */	bl PSVECAdd
/* 80114360  38 61 00 94 */	addi r3, r1, 0x94
/* 80114364  80 9F 38 40 */	lwz r4, 0x3840(r31)
/* 80114368  38 BF 37 EC */	addi r5, r31, 0x37ec
/* 8011436C  48 15 27 C9 */	bl __mi__4cXyzCFRC3Vec
/* 80114370  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80114374  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80114378  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8011437C  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80114380  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80114384  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80114388  38 61 01 0C */	addi r3, r1, 0x10c
/* 8011438C  48 23 2D AD */	bl PSVECSquareMag
/* 80114390  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80114394  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80114398  40 81 00 58 */	ble lbl_801143F0
/* 8011439C  FC 00 08 34 */	frsqrte f0, f1
/* 801143A0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 801143A4  FC 44 00 32 */	fmul f2, f4, f0
/* 801143A8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 801143AC  FC 00 00 32 */	fmul f0, f0, f0
/* 801143B0  FC 01 00 32 */	fmul f0, f1, f0
/* 801143B4  FC 03 00 28 */	fsub f0, f3, f0
/* 801143B8  FC 02 00 32 */	fmul f0, f2, f0
/* 801143BC  FC 44 00 32 */	fmul f2, f4, f0
/* 801143C0  FC 00 00 32 */	fmul f0, f0, f0
/* 801143C4  FC 01 00 32 */	fmul f0, f1, f0
/* 801143C8  FC 03 00 28 */	fsub f0, f3, f0
/* 801143CC  FC 02 00 32 */	fmul f0, f2, f0
/* 801143D0  FC 44 00 32 */	fmul f2, f4, f0
/* 801143D4  FC 00 00 32 */	fmul f0, f0, f0
/* 801143D8  FC 01 00 32 */	fmul f0, f1, f0
/* 801143DC  FC 03 00 28 */	fsub f0, f3, f0
/* 801143E0  FC 02 00 32 */	fmul f0, f2, f0
/* 801143E4  FC 21 00 32 */	fmul f1, f1, f0
/* 801143E8  FC 20 08 18 */	frsp f1, f1
/* 801143EC  48 00 00 88 */	b lbl_80114474
lbl_801143F0:
/* 801143F0  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 801143F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801143F8  40 80 00 10 */	bge lbl_80114408
/* 801143FC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80114400  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80114404  48 00 00 70 */	b lbl_80114474
lbl_80114408:
/* 80114408  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8011440C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80114410  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80114414  3C 00 7F 80 */	lis r0, 0x7f80
/* 80114418  7C 03 00 00 */	cmpw r3, r0
/* 8011441C  41 82 00 14 */	beq lbl_80114430
/* 80114420  40 80 00 40 */	bge lbl_80114460
/* 80114424  2C 03 00 00 */	cmpwi r3, 0
/* 80114428  41 82 00 20 */	beq lbl_80114448
/* 8011442C  48 00 00 34 */	b lbl_80114460
lbl_80114430:
/* 80114430  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80114434  41 82 00 0C */	beq lbl_80114440
/* 80114438  38 00 00 01 */	li r0, 1
/* 8011443C  48 00 00 28 */	b lbl_80114464
lbl_80114440:
/* 80114440  38 00 00 02 */	li r0, 2
/* 80114444  48 00 00 20 */	b lbl_80114464
lbl_80114448:
/* 80114448  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8011444C  41 82 00 0C */	beq lbl_80114458
/* 80114450  38 00 00 05 */	li r0, 5
/* 80114454  48 00 00 10 */	b lbl_80114464
lbl_80114458:
/* 80114458  38 00 00 03 */	li r0, 3
/* 8011445C  48 00 00 08 */	b lbl_80114464
lbl_80114460:
/* 80114460  38 00 00 04 */	li r0, 4
lbl_80114464:
/* 80114464  2C 00 00 01 */	cmpwi r0, 1
/* 80114468  40 82 00 0C */	bne lbl_80114474
/* 8011446C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80114470  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80114474:
/* 80114474  3B 40 00 00 */	li r26, 0
/* 80114478  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 8011447C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80114480  40 81 00 70 */	ble lbl_801144F0
/* 80114484  38 61 01 0C */	addi r3, r1, 0x10c
/* 80114488  7C 64 1B 78 */	mr r4, r3
/* 8011448C  EC 20 08 24 */	fdivs f1, f0, f1
/* 80114490  48 23 2C 49 */	bl PSVECScale
/* 80114494  38 61 00 88 */	addi r3, r1, 0x88
/* 80114498  38 9F 37 EC */	addi r4, r31, 0x37ec
/* 8011449C  38 A1 01 0C */	addi r5, r1, 0x10c
/* 801144A0  48 15 26 45 */	bl __pl__4cXyzCFRC3Vec
/* 801144A4  80 7F 38 40 */	lwz r3, 0x3840(r31)
/* 801144A8  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 801144AC  D0 03 00 00 */	stfs f0, 0(r3)
/* 801144B0  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 801144B4  D0 03 00 04 */	stfs f0, 4(r3)
/* 801144B8  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 801144BC  D0 03 00 08 */	stfs f0, 8(r3)
/* 801144C0  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 801144C4  48 23 2C 75 */	bl PSVECSquareMag
/* 801144C8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 801144CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801144D0  40 80 00 0C */	bge lbl_801144DC
/* 801144D4  3B 40 00 01 */	li r26, 1
/* 801144D8  48 00 00 18 */	b lbl_801144F0
lbl_801144DC:
/* 801144DC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801144E0  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 801144E4  D0 03 00 00 */	stfs f0, 0(r3)
/* 801144E8  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 801144EC  D0 03 00 08 */	stfs f0, 8(r3)
lbl_801144F0:
/* 801144F0  38 61 00 7C */	addi r3, r1, 0x7c
/* 801144F4  38 81 01 24 */	addi r4, r1, 0x124
/* 801144F8  80 BF 38 40 */	lwz r5, 0x3840(r31)
/* 801144FC  48 15 26 39 */	bl __mi__4cXyzCFRC3Vec
/* 80114500  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80114504  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80114508  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8011450C  D0 21 01 10 */	stfs f1, 0x110(r1)
/* 80114510  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80114514  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80114518  EC 01 F8 2A */	fadds f0, f1, f31
/* 8011451C  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 80114520  38 61 01 0C */	addi r3, r1, 0x10c
/* 80114524  48 15 2C 05 */	bl atan2sX_Z__4cXyzCFv
/* 80114528  7C 78 1B 78 */	mr r24, r3
/* 8011452C  38 61 01 0C */	addi r3, r1, 0x10c
/* 80114530  48 15 2C 21 */	bl atan2sY_XZ__4cXyzCFv
/* 80114534  80 9F 38 44 */	lwz r4, 0x3844(r31)
/* 80114538  B0 64 00 00 */	sth r3, 0(r4)
/* 8011453C  B3 04 00 02 */	sth r24, 2(r4)
/* 80114540  38 00 00 00 */	li r0, 0
/* 80114544  B0 04 00 04 */	sth r0, 4(r4)
/* 80114548  A8 7F 05 9C */	lha r3, 0x59c(r31)
/* 8011454C  7C 60 07 35 */	extsh. r0, r3
/* 80114550  41 80 00 0C */	blt lbl_8011455C
/* 80114554  3B 20 00 32 */	li r25, 0x32
/* 80114558  48 00 00 30 */	b lbl_80114588
lbl_8011455C:
/* 8011455C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80114560  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80114564  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80114568  7C 43 04 2E */	lfsx f2, r3, r0
/* 8011456C  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 80114570  C0 02 93 D4 */	lfs f0, lit_11442(r2)
/* 80114574  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80114578  EC 01 00 28 */	fsubs f0, f1, f0
/* 8011457C  FC 00 00 1E */	fctiwz f0, f0
/* 80114580  D8 01 01 58 */	stfd f0, 0x158(r1)
/* 80114584  83 21 01 5C */	lwz r25, 0x15c(r1)
lbl_80114588:
/* 80114588  7F E3 FB 78 */	mr r3, r31
/* 8011458C  4B FF E1 DD */	bl setIronBallBgCheckPos__9daAlink_cFv
/* 80114590  C0 1F 38 04 */	lfs f0, 0x3804(r31)
/* 80114594  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 80114598  C0 1F 38 08 */	lfs f0, 0x3808(r31)
/* 8011459C  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 801145A0  C0 1F 38 0C */	lfs f0, 0x380c(r31)
/* 801145A4  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 801145A8  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 801145AC  C3 C3 00 04 */	lfs f30, 4(r3)
/* 801145B0  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 801145B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 801145B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 801145BC  3B 64 0F 38 */	addi r27, r4, 0xf38
/* 801145C0  7F 64 DB 78 */	mr r4, r27
/* 801145C4  4B F6 24 E9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 801145C8  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 801145CC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 801145D0  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 801145D4  41 82 00 54 */	beq lbl_80114628
/* 801145D8  38 63 00 F0 */	addi r3, r3, 0xf0
/* 801145DC  48 09 6E E5 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 801145E0  54 78 06 3E */	clrlwi r24, r3, 0x18
/* 801145E4  FC 00 F2 10 */	fabs f0, f30
/* 801145E8  FF A0 00 18 */	frsp f29, f0
/* 801145EC  7F 63 DB 78 */	mr r3, r27
/* 801145F0  80 9F 07 78 */	lwz r4, 0x778(r31)
/* 801145F4  38 84 00 F0 */	addi r4, r4, 0xf0
/* 801145F8  4B F6 04 C5 */	bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 801145FC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80114600  7C 00 00 34 */	cntlzw r0, r0
/* 80114604  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80114608  B0 1F 30 1C */	sth r0, 0x301c(r31)
/* 8011460C  A8 1F 30 24 */	lha r0, 0x3024(r31)
/* 80114610  2C 00 00 00 */	cmpwi r0, 0
/* 80114614  40 82 02 D4 */	bne lbl_801148E8
/* 80114618  38 00 00 01 */	li r0, 1
/* 8011461C  B0 1F 30 24 */	sth r0, 0x3024(r31)
/* 80114620  3B 80 00 01 */	li r28, 1
/* 80114624  48 00 02 C4 */	b lbl_801148E8
lbl_80114628:
/* 80114628  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 8011462C  41 82 01 F0 */	beq lbl_8011481C
/* 80114630  80 7F 07 74 */	lwz r3, 0x774(r31)
/* 80114634  48 09 6E 8D */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 80114638  54 78 06 3E */	clrlwi r24, r3, 0x18
/* 8011463C  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 80114640  C0 23 00 08 */	lfs f1, 8(r3)
/* 80114644  C0 03 00 00 */	lfs f0, 0(r3)
/* 80114648  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8011464C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80114650  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80114654  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80114658  38 61 00 40 */	addi r3, r1, 0x40
/* 8011465C  48 23 2A DD */	bl PSVECSquareMag
/* 80114660  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80114664  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80114668  40 81 00 58 */	ble lbl_801146C0
/* 8011466C  FC 00 08 34 */	frsqrte f0, f1
/* 80114670  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80114674  FC 44 00 32 */	fmul f2, f4, f0
/* 80114678  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8011467C  FC 00 00 32 */	fmul f0, f0, f0
/* 80114680  FC 01 00 32 */	fmul f0, f1, f0
/* 80114684  FC 03 00 28 */	fsub f0, f3, f0
/* 80114688  FC 02 00 32 */	fmul f0, f2, f0
/* 8011468C  FC 44 00 32 */	fmul f2, f4, f0
/* 80114690  FC 00 00 32 */	fmul f0, f0, f0
/* 80114694  FC 01 00 32 */	fmul f0, f1, f0
/* 80114698  FC 03 00 28 */	fsub f0, f3, f0
/* 8011469C  FC 02 00 32 */	fmul f0, f2, f0
/* 801146A0  FC 44 00 32 */	fmul f2, f4, f0
/* 801146A4  FC 00 00 32 */	fmul f0, f0, f0
/* 801146A8  FC 01 00 32 */	fmul f0, f1, f0
/* 801146AC  FC 03 00 28 */	fsub f0, f3, f0
/* 801146B0  FC 02 00 32 */	fmul f0, f2, f0
/* 801146B4  FF A1 00 32 */	fmul f29, f1, f0
/* 801146B8  FF A0 E8 18 */	frsp f29, f29
/* 801146BC  48 00 00 90 */	b lbl_8011474C
lbl_801146C0:
/* 801146C0  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 801146C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801146C8  40 80 00 10 */	bge lbl_801146D8
/* 801146CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801146D0  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)
/* 801146D4  48 00 00 78 */	b lbl_8011474C
lbl_801146D8:
/* 801146D8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801146DC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 801146E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801146E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 801146E8  7C 03 00 00 */	cmpw r3, r0
/* 801146EC  41 82 00 14 */	beq lbl_80114700
/* 801146F0  40 80 00 40 */	bge lbl_80114730
/* 801146F4  2C 03 00 00 */	cmpwi r3, 0
/* 801146F8  41 82 00 20 */	beq lbl_80114718
/* 801146FC  48 00 00 34 */	b lbl_80114730
lbl_80114700:
/* 80114700  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80114704  41 82 00 0C */	beq lbl_80114710
/* 80114708  38 00 00 01 */	li r0, 1
/* 8011470C  48 00 00 28 */	b lbl_80114734
lbl_80114710:
/* 80114710  38 00 00 02 */	li r0, 2
/* 80114714  48 00 00 20 */	b lbl_80114734
lbl_80114718:
/* 80114718  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8011471C  41 82 00 0C */	beq lbl_80114728
/* 80114720  38 00 00 05 */	li r0, 5
/* 80114724  48 00 00 10 */	b lbl_80114734
lbl_80114728:
/* 80114728  38 00 00 03 */	li r0, 3
/* 8011472C  48 00 00 08 */	b lbl_80114734
lbl_80114730:
/* 80114730  38 00 00 04 */	li r0, 4
lbl_80114734:
/* 80114734  2C 00 00 01 */	cmpwi r0, 1
/* 80114738  40 82 00 10 */	bne lbl_80114748
/* 8011473C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80114740  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)
/* 80114744  48 00 00 08 */	b lbl_8011474C
lbl_80114748:
/* 80114748  FF A0 08 90 */	fmr f29, f1
lbl_8011474C:
/* 8011474C  7F 63 DB 78 */	mr r3, r27
/* 80114750  80 9F 07 74 */	lwz r4, 0x774(r31)
/* 80114754  4B F6 03 69 */	bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 80114758  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8011475C  7C 00 00 34 */	cntlzw r0, r0
/* 80114760  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80114764  B0 1F 30 1C */	sth r0, 0x301c(r31)
/* 80114768  A8 1F 30 26 */	lha r0, 0x3026(r31)
/* 8011476C  2C 00 00 00 */	cmpwi r0, 0
/* 80114770  40 82 01 78 */	bne lbl_801148E8
/* 80114774  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 80114778  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8011477C  40 81 01 6C */	ble lbl_801148E8
/* 80114780  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80114784  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80114788  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8011478C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80114790  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80114794  38 7B 4C 9C */	addi r3, r27, 0x4c9c
/* 80114798  38 80 00 03 */	li r4, 3
/* 8011479C  38 A0 00 01 */	li r5, 1
/* 801147A0  38 C1 00 70 */	addi r6, r1, 0x70
/* 801147A4  4B F5 B2 81 */	bl StartShock__12dVibration_cFii4cXyz
/* 801147A8  38 00 00 0F */	li r0, 0xf
/* 801147AC  B0 1F 30 26 */	sth r0, 0x3026(r31)
/* 801147B0  3B A0 00 01 */	li r29, 1
/* 801147B4  C0 9F 38 04 */	lfs f4, 0x3804(r31)
/* 801147B8  D0 81 00 E8 */	stfs f4, 0xe8(r1)
/* 801147BC  C0 3F 38 08 */	lfs f1, 0x3808(r31)
/* 801147C0  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 801147C4  C0 7F 38 0C */	lfs f3, 0x380c(r31)
/* 801147C8  D0 61 00 F0 */	stfs f3, 0xf0(r1)
/* 801147CC  C0 02 94 28 */	lfs f0, lit_14621(r2)
/* 801147D0  EC 41 00 2A */	fadds f2, f1, f0
/* 801147D4  D0 41 00 EC */	stfs f2, 0xec(r1)
/* 801147D8  80 7F 07 74 */	lwz r3, 0x774(r31)
/* 801147DC  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 801147E0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801147E4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 801147E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801147EC  7C 64 02 14 */	add r3, r4, r0
/* 801147F0  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801147F4  7C 04 04 2E */	lfsx f0, r4, r0
/* 801147F8  C0 22 93 98 */	lfs f1, lit_8786(r2)
/* 801147FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80114800  EC 04 00 28 */	fsubs f0, f4, f0
/* 80114804  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80114808  D0 41 00 E0 */	stfs f2, 0xe0(r1)
/* 8011480C  EC 01 01 72 */	fmuls f0, f1, f5
/* 80114810  EC 03 00 28 */	fsubs f0, f3, f0
/* 80114814  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80114818  48 00 00 D0 */	b lbl_801148E8
lbl_8011481C:
/* 8011481C  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 80114820  41 82 00 C4 */	beq lbl_801148E4
/* 80114824  38 63 01 30 */	addi r3, r3, 0x130
/* 80114828  48 09 6C 99 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 8011482C  54 78 06 3E */	clrlwi r24, r3, 0x18
/* 80114830  FC 00 F2 10 */	fabs f0, f30
/* 80114834  FF A0 00 18 */	frsp f29, f0
/* 80114838  7F 63 DB 78 */	mr r3, r27
/* 8011483C  80 9F 07 78 */	lwz r4, 0x778(r31)
/* 80114840  38 84 01 30 */	addi r4, r4, 0x130
/* 80114844  4B F6 02 79 */	bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 80114848  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8011484C  7C 00 00 34 */	cntlzw r0, r0
/* 80114850  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80114854  B0 1F 30 1C */	sth r0, 0x301c(r31)
/* 80114858  A8 1F 30 26 */	lha r0, 0x3026(r31)
/* 8011485C  2C 00 00 00 */	cmpwi r0, 0
/* 80114860  40 82 00 88 */	bne lbl_801148E8
/* 80114864  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 80114868  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8011486C  40 81 00 7C */	ble lbl_801148E8
/* 80114870  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80114874  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80114878  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8011487C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80114880  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80114884  38 7B 4C 9C */	addi r3, r27, 0x4c9c
/* 80114888  38 80 00 03 */	li r4, 3
/* 8011488C  38 A0 00 01 */	li r5, 1
/* 80114890  38 C1 00 64 */	addi r6, r1, 0x64
/* 80114894  4B F5 B1 91 */	bl StartShock__12dVibration_cFii4cXyz
/* 80114898  38 00 00 0F */	li r0, 0xf
/* 8011489C  B0 1F 30 26 */	sth r0, 0x3026(r31)
/* 801148A0  3B A0 00 01 */	li r29, 1
/* 801148A4  C0 7F 38 04 */	lfs f3, 0x3804(r31)
/* 801148A8  D0 61 00 E8 */	stfs f3, 0xe8(r1)
/* 801148AC  C0 3F 38 08 */	lfs f1, 0x3808(r31)
/* 801148B0  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 801148B4  C0 5F 38 0C */	lfs f2, 0x380c(r31)
/* 801148B8  D0 41 00 F0 */	stfs f2, 0xf0(r1)
/* 801148BC  C0 02 94 28 */	lfs f0, lit_14621(r2)
/* 801148C0  EC 21 00 2A */	fadds f1, f1, f0
/* 801148C4  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 801148C8  D0 61 00 DC */	stfs f3, 0xdc(r1)
/* 801148CC  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 801148D0  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 801148D4  C0 02 93 98 */	lfs f0, lit_8786(r2)
/* 801148D8  EC 01 00 2A */	fadds f0, f1, f0
/* 801148DC  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 801148E0  48 00 00 08 */	b lbl_801148E8
lbl_801148E4:
/* 801148E4  3B 00 FF FF */	li r24, -1
lbl_801148E8:
/* 801148E8  2C 18 FF FF */	cmpwi r24, -1
/* 801148EC  41 82 00 38 */	beq lbl_80114924
/* 801148F0  C0 02 96 48 */	lfs f0, lit_34778(r2)
/* 801148F4  EF BD 00 32 */	fmuls f29, f29, f0
/* 801148F8  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 801148FC  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80114900  40 81 00 08 */	ble lbl_80114908
/* 80114904  FF A0 00 90 */	fmr f29, f0
lbl_80114908:
/* 80114908  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 8011490C  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040006@ha */
/* 80114910  38 84 00 06 */	addi r4, r4, 0x0006 /* 0x00040006@l */
/* 80114914  7F 05 C3 78 */	mr r5, r24
/* 80114918  80 DF 07 6C */	lwz r6, 0x76c(r31)
/* 8011491C  FC 20 E8 90 */	fmr f1, f29
/* 80114920  48 1A FE F5 */	bl startHitItemSE__14Z2CreatureLinkFUlUlP14Z2SoundObjBasef
lbl_80114924:
/* 80114924  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 80114928  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8011492C  54 64 06 F7 */	rlwinm. r4, r3, 0, 0x1b, 0x1b
/* 80114930  40 82 00 34 */	bne lbl_80114964
/* 80114934  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80114938  40 82 00 2C */	bne lbl_80114964
/* 8011493C  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80114940  40 82 00 24 */	bne lbl_80114964
/* 80114944  A8 BF 30 18 */	lha r5, 0x3018(r31)
/* 80114948  2C 05 00 05 */	cmpwi r5, 5
/* 8011494C  40 82 01 E4 */	bne lbl_80114B30
/* 80114950  2C 1A 00 00 */	cmpwi r26, 0
/* 80114954  40 82 00 10 */	bne lbl_80114964
/* 80114958  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 8011495C  7C 00 C8 00 */	cmpw r0, r25
/* 80114960  40 81 01 D0 */	ble lbl_80114B30
lbl_80114964:
/* 80114964  28 04 00 00 */	cmplwi r4, 0
/* 80114968  40 82 00 14 */	bne lbl_8011497C
/* 8011496C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80114970  40 82 00 0C */	bne lbl_8011497C
/* 80114974  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80114978  41 82 01 58 */	beq lbl_80114AD0
lbl_8011497C:
/* 8011497C  38 61 00 58 */	addi r3, r1, 0x58
/* 80114980  38 9F 38 04 */	addi r4, r31, 0x3804
/* 80114984  38 A1 01 24 */	addi r5, r1, 0x124
/* 80114988  48 15 21 AD */	bl __mi__4cXyzCFRC3Vec
/* 8011498C  80 7F 38 40 */	lwz r3, 0x3840(r31)
/* 80114990  38 81 00 58 */	addi r4, r1, 0x58
/* 80114994  7C 65 1B 78 */	mr r5, r3
/* 80114998  48 23 26 F9 */	bl PSVECAdd
/* 8011499C  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 801149A0  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 801149A4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 801149A8  41 82 00 44 */	beq lbl_801149EC
/* 801149AC  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 801149B0  C0 03 00 00 */	lfs f0, 0(r3)
/* 801149B4  C0 22 96 4C */	lfs f1, lit_34779(r2)
/* 801149B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 801149BC  D0 03 00 00 */	stfs f0, 0(r3)
/* 801149C0  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 801149C4  C0 03 00 08 */	lfs f0, 8(r3)
/* 801149C8  EC 00 00 72 */	fmuls f0, f0, f1
/* 801149CC  D0 03 00 08 */	stfs f0, 8(r3)
/* 801149D0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801149D4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 801149D8  40 81 00 14 */	ble lbl_801149EC
/* 801149DC  C0 02 94 08 */	lfs f0, lit_14064(r2)
/* 801149E0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 801149E4  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 801149E8  D0 03 00 04 */	stfs f0, 4(r3)
lbl_801149EC:
/* 801149EC  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 801149F0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 801149F4  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 801149F8  41 82 00 90 */	beq lbl_80114A88
/* 801149FC  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 80114A00  C0 03 00 00 */	lfs f0, 0(r3)
/* 80114A04  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 80114A08  EC 00 00 72 */	fmuls f0, f0, f1
/* 80114A0C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80114A10  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 80114A14  C0 03 00 08 */	lfs f0, 8(r3)
/* 80114A18  EC 00 00 72 */	fmuls f0, f0, f1
/* 80114A1C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80114A20  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 80114A24  38 63 00 F0 */	addi r3, r3, 0xf0
/* 80114A28  4B FF 10 95 */	bl checkSnowCodePolygon__9daAlink_cFR13cBgS_PolyInfo
/* 80114A2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80114A30  41 82 00 10 */	beq lbl_80114A40
/* 80114A34  C0 02 95 90 */	lfs f0, lit_25059(r2)
/* 80114A38  D0 1F 34 90 */	stfs f0, 0x3490(r31)
/* 80114A3C  48 00 00 94 */	b lbl_80114AD0
lbl_80114A40:
/* 80114A40  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80114A44  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80114A48  40 80 00 88 */	bge lbl_80114AD0
/* 80114A4C  C0 02 93 4C */	lfs f0, lit_8131(r2)
/* 80114A50  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80114A54  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 80114A58  D0 03 00 04 */	stfs f0, 4(r3)
/* 80114A5C  C0 3F 34 94 */	lfs f1, 0x3494(r31)
/* 80114A60  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80114A64  EC 01 00 28 */	fsubs f0, f1, f0
/* 80114A68  D0 1F 34 94 */	stfs f0, 0x3494(r31)
/* 80114A6C  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 80114A70  C0 23 00 04 */	lfs f1, 4(r3)
/* 80114A74  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 80114A78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80114A7C  40 81 00 54 */	ble lbl_80114AD0
/* 80114A80  D0 03 00 04 */	stfs f0, 4(r3)
/* 80114A84  48 00 00 4C */	b lbl_80114AD0
lbl_80114A88:
/* 80114A88  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80114A8C  41 82 00 44 */	beq lbl_80114AD0
/* 80114A90  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 80114A94  C0 03 00 00 */	lfs f0, 0(r3)
/* 80114A98  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 80114A9C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80114AA0  D0 03 00 00 */	stfs f0, 0(r3)
/* 80114AA4  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 80114AA8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80114AAC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80114AB0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80114AB4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80114AB8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80114ABC  40 81 00 14 */	ble lbl_80114AD0
/* 80114AC0  C0 02 93 4C */	lfs f0, lit_8131(r2)
/* 80114AC4  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80114AC8  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 80114ACC  D0 03 00 04 */	stfs f0, 4(r3)
lbl_80114AD0:
/* 80114AD0  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 80114AD4  2C 00 00 05 */	cmpwi r0, 5
/* 80114AD8  40 82 00 10 */	bne lbl_80114AE8
/* 80114ADC  38 00 00 06 */	li r0, 6
/* 80114AE0  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 80114AE4  48 00 00 68 */	b lbl_80114B4C
lbl_80114AE8:
/* 80114AE8  C0 3F 34 94 */	lfs f1, 0x3494(r31)
/* 80114AEC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80114AF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80114AF4  40 80 00 14 */	bge lbl_80114B08
/* 80114AF8  7F E3 FB 78 */	mr r3, r31
/* 80114AFC  38 80 00 00 */	li r4, 0
/* 80114B00  4B FF DB F9 */	bl setIronBallReturn__9daAlink_cFi
/* 80114B04  48 00 00 48 */	b lbl_80114B4C
lbl_80114B08:
/* 80114B08  80 7F 38 48 */	lwz r3, 0x3848(r31)
/* 80114B0C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80114B10  38 7E 14 18 */	addi r3, r30, 0x1418
/* 80114B14  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80114B18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80114B1C  40 80 00 30 */	bge lbl_80114B4C
/* 80114B20  7F E3 FB 78 */	mr r3, r31
/* 80114B24  38 80 00 01 */	li r4, 1
/* 80114B28  4B FF DB D1 */	bl setIronBallReturn__9daAlink_cFi
/* 80114B2C  48 00 00 20 */	b lbl_80114B4C
lbl_80114B30:
/* 80114B30  2C 05 00 06 */	cmpwi r5, 6
/* 80114B34  40 82 00 18 */	bne lbl_80114B4C
/* 80114B38  2C 1A 00 00 */	cmpwi r26, 0
/* 80114B3C  41 82 00 10 */	beq lbl_80114B4C
/* 80114B40  7F E3 FB 78 */	mr r3, r31
/* 80114B44  38 80 00 01 */	li r4, 1
/* 80114B48  4B FF DB B1 */	bl setIronBallReturn__9daAlink_cFi
lbl_80114B4C:
/* 80114B4C  80 7F 38 40 */	lwz r3, 0x3840(r31)
/* 80114B50  C0 23 00 04 */	lfs f1, 4(r3)
/* 80114B54  C0 1F 34 90 */	lfs f0, 0x3490(r31)
/* 80114B58  EC 01 00 2A */	fadds f0, f1, f0
/* 80114B5C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80114B60  48 00 01 7C */	b lbl_80114CDC
lbl_80114B64:
/* 80114B64  2C 03 00 07 */	cmpwi r3, 7
/* 80114B68  40 82 00 80 */	bne lbl_80114BE8
/* 80114B6C  80 7F 38 40 */	lwz r3, 0x3840(r31)
/* 80114B70  38 81 00 24 */	addi r4, r1, 0x24
/* 80114B74  4B F0 8D 1D */	bl fopAcM_getWaterY__FPC4cXyzPf
/* 80114B78  2C 03 00 00 */	cmpwi r3, 0
/* 80114B7C  41 82 00 28 */	beq lbl_80114BA4
/* 80114B80  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80114B84  80 7F 38 40 */	lwz r3, 0x3840(r31)
/* 80114B88  C0 03 00 04 */	lfs f0, 4(r3)
/* 80114B8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80114B90  40 81 00 14 */	ble lbl_80114BA4
/* 80114B94  38 7E 14 18 */	addi r3, r30, 0x1418
/* 80114B98  A8 63 00 16 */	lha r3, 0x16(r3)
/* 80114B9C  38 63 FF FF */	addi r3, r3, -1
/* 80114BA0  48 00 00 0C */	b lbl_80114BAC
lbl_80114BA4:
/* 80114BA4  38 7E 14 18 */	addi r3, r30, 0x1418
/* 80114BA8  A8 63 00 16 */	lha r3, 0x16(r3)
lbl_80114BAC:
/* 80114BAC  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 80114BB0  2C 00 00 06 */	cmpwi r0, 6
/* 80114BB4  40 81 00 24 */	ble lbl_80114BD8
/* 80114BB8  7C 03 00 50 */	subf r0, r3, r0
/* 80114BBC  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 80114BC0  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 80114BC4  2C 00 00 06 */	cmpwi r0, 6
/* 80114BC8  41 81 01 14 */	bgt lbl_80114CDC
/* 80114BCC  38 00 00 08 */	li r0, 8
/* 80114BD0  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 80114BD4  48 00 01 08 */	b lbl_80114CDC
lbl_80114BD8:
/* 80114BD8  41 81 01 04 */	bgt lbl_80114CDC
/* 80114BDC  38 00 00 08 */	li r0, 8
/* 80114BE0  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 80114BE4  48 00 00 F8 */	b lbl_80114CDC
lbl_80114BE8:
/* 80114BE8  2C 03 00 08 */	cmpwi r3, 8
/* 80114BEC  40 82 00 F0 */	bne lbl_80114CDC
/* 80114BF0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80114BF4  D0 1F 34 90 */	stfs f0, 0x3490(r31)
/* 80114BF8  38 61 01 00 */	addi r3, r1, 0x100
/* 80114BFC  4B EF 81 69 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80114C00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80114C04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80114C08  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80114C0C  4B EF 78 29 */	bl mDoMtx_YrotM__FPA4_fs
/* 80114C10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80114C14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80114C18  38 9E 43 EC */	addi r4, r30, 0x43ec
/* 80114C1C  38 A1 01 24 */	addi r5, r1, 0x124
/* 80114C20  48 23 21 4D */	bl PSMTXMultVec
/* 80114C24  C0 21 01 28 */	lfs f1, 0x128(r1)
/* 80114C28  C0 02 94 24 */	lfs f0, lit_14620(r2)
/* 80114C2C  EC 01 00 2A */	fadds f0, f1, f0
/* 80114C30  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80114C34  38 7F 37 F8 */	addi r3, r31, 0x37f8
/* 80114C38  38 81 01 24 */	addi r4, r1, 0x124
/* 80114C3C  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 80114C40  C0 42 93 10 */	lfs f2, lit_7306(r2)
/* 80114C44  C0 62 93 30 */	lfs f3, lit_7625(r2)
/* 80114C48  48 15 AE 71 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80114C4C  80 7F 38 44 */	lwz r3, 0x3844(r31)
/* 80114C50  38 80 C0 00 */	li r4, -16384
/* 80114C54  38 A0 00 05 */	li r5, 5
/* 80114C58  38 C0 10 00 */	li r6, 0x1000
/* 80114C5C  38 E0 04 00 */	li r7, 0x400
/* 80114C60  48 15 B8 E1 */	bl cLib_addCalcAngleS__FPsssss
/* 80114C64  80 7F 38 44 */	lwz r3, 0x3844(r31)
/* 80114C68  38 63 00 02 */	addi r3, r3, 2
/* 80114C6C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80114C70  38 A0 00 05 */	li r5, 5
/* 80114C74  38 C0 10 00 */	li r6, 0x1000
/* 80114C78  38 E0 04 00 */	li r7, 0x400
/* 80114C7C  48 15 B8 C5 */	bl cLib_addCalcAngleS__FPsssss
/* 80114C80  38 7F 37 F8 */	addi r3, r31, 0x37f8
/* 80114C84  4B EF 80 E1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80114C88  80 7F 38 44 */	lwz r3, 0x3844(r31)
/* 80114C8C  4B EF 82 B9 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80114C90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80114C94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80114C98  38 9E 43 E0 */	addi r4, r30, 0x43e0
/* 80114C9C  80 BF 38 40 */	lwz r5, 0x3840(r31)
/* 80114CA0  48 23 20 CD */	bl PSMTXMultVec
/* 80114CA4  A8 7F 30 1A */	lha r3, 0x301a(r31)
/* 80114CA8  2C 03 00 06 */	cmpwi r3, 6
/* 80114CAC  40 81 00 24 */	ble lbl_80114CD0
/* 80114CB0  38 03 FF F6 */	addi r0, r3, -10
/* 80114CB4  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 80114CB8  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 80114CBC  2C 00 00 06 */	cmpwi r0, 6
/* 80114CC0  40 80 00 1C */	bge lbl_80114CDC
/* 80114CC4  38 00 00 06 */	li r0, 6
/* 80114CC8  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 80114CCC  48 00 00 10 */	b lbl_80114CDC
lbl_80114CD0:
/* 80114CD0  40 80 00 0C */	bge lbl_80114CDC
/* 80114CD4  38 00 00 06 */	li r0, 6
/* 80114CD8  B0 1F 30 1A */	sth r0, 0x301a(r31)
lbl_80114CDC:
/* 80114CDC  7F E3 FB 78 */	mr r3, r31
/* 80114CE0  4B FF E1 9D */	bl setIronBallChainPos__9daAlink_cFv
/* 80114CE4  80 7F 38 40 */	lwz r3, 0x3840(r31)
/* 80114CE8  4B EF 80 7D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80114CEC  80 7F 38 44 */	lwz r3, 0x3844(r31)
/* 80114CF0  4B EF 82 55 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80114CF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80114CF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80114CFC  80 9F 07 08 */	lwz r4, 0x708(r31)
/* 80114D00  38 84 00 24 */	addi r4, r4, 0x24
/* 80114D04  48 23 17 AD */	bl PSMTXCopy
/* 80114D08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80114D0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80114D10  38 9E 24 F8 */	addi r4, r30, 0x24f8
/* 80114D14  38 BF 37 F8 */	addi r5, r31, 0x37f8
/* 80114D18  48 23 20 55 */	bl PSMTXMultVec
/* 80114D1C  C0 1F 38 04 */	lfs f0, 0x3804(r31)
/* 80114D20  D0 1F 38 10 */	stfs f0, 0x3810(r31)
/* 80114D24  C0 1F 38 08 */	lfs f0, 0x3808(r31)
/* 80114D28  D0 1F 38 14 */	stfs f0, 0x3814(r31)
/* 80114D2C  C0 1F 38 0C */	lfs f0, 0x380c(r31)
/* 80114D30  D0 1F 38 18 */	stfs f0, 0x3818(r31)
/* 80114D34  C0 5F 38 00 */	lfs f2, 0x3800(r31)
/* 80114D38  C0 3F 37 FC */	lfs f1, 0x37fc(r31)
/* 80114D3C  C0 02 94 28 */	lfs f0, lit_14621(r2)
/* 80114D40  EC 21 00 28 */	fsubs f1, f1, f0
/* 80114D44  C0 1F 37 F8 */	lfs f0, 0x37f8(r31)
/* 80114D48  D0 1F 38 04 */	stfs f0, 0x3804(r31)
/* 80114D4C  D0 3F 38 08 */	stfs f1, 0x3808(r31)
/* 80114D50  D0 5F 38 0C */	stfs f2, 0x380c(r31)
/* 80114D54  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 80114D58  2C 00 00 04 */	cmpwi r0, 4
/* 80114D5C  40 82 00 6C */	bne lbl_80114DC8
/* 80114D60  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 80114D64  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80114D68  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80114D6C  3B 04 0F 38 */	addi r24, r4, 0xf38
/* 80114D70  7F 04 C3 78 */	mr r4, r24
/* 80114D74  4B F6 1D 39 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80114D78  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 80114D7C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80114D80  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80114D84  40 82 00 14 */	bne lbl_80114D98
/* 80114D88  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 80114D8C  40 82 00 0C */	bne lbl_80114D98
/* 80114D90  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80114D94  41 82 00 34 */	beq lbl_80114DC8
lbl_80114D98:
/* 80114D98  38 00 00 08 */	li r0, 8
/* 80114D9C  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 80114DA0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80114DA4  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80114DA8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80114DAC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80114DB0  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80114DB4  38 78 4C 9C */	addi r3, r24, 0x4c9c
/* 80114DB8  38 80 00 04 */	li r4, 4
/* 80114DBC  38 A0 00 01 */	li r5, 1
/* 80114DC0  38 C1 00 4C */	addi r6, r1, 0x4c
/* 80114DC4  4B F5 AC 61 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80114DC8:
/* 80114DC8  38 7F 17 3C */	addi r3, r31, 0x173c
/* 80114DCC  48 14 EB 91 */	bl ClrCcMove__9cCcD_SttsFv
/* 80114DD0  80 7F 07 6C */	lwz r3, 0x76c(r31)
/* 80114DD4  38 80 00 00 */	li r4, 0
/* 80114DD8  88 BF 2F 9A */	lbz r5, 0x2f9a(r31)
/* 80114DDC  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80114DE0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80114DE4  7D 89 03 A6 */	mtctr r12
/* 80114DE8  4E 80 04 21 */	bctrl 
/* 80114DEC  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 80114DF0  2C 00 00 00 */	cmpwi r0, 0
/* 80114DF4  41 82 00 A0 */	beq lbl_80114E94
/* 80114DF8  80 7F 07 7C */	lwz r3, 0x77c(r31)
/* 80114DFC  38 81 00 F4 */	addi r4, r1, 0xf4
/* 80114E00  38 BF 37 F8 */	addi r5, r31, 0x37f8
/* 80114E04  7F E6 FB 78 */	mr r6, r31
/* 80114E08  4B F6 2F 5D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80114E0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80114E10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80114E14  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 80114E18  7F 03 C3 78 */	mr r3, r24
/* 80114E1C  80 9F 07 7C */	lwz r4, 0x77c(r31)
/* 80114E20  4B F5 F5 95 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80114E24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80114E28  41 82 00 6C */	beq lbl_80114E94
/* 80114E2C  7F 03 C3 78 */	mr r3, r24
/* 80114E30  80 9F 07 7C */	lwz r4, 0x77c(r31)
/* 80114E34  38 84 00 14 */	addi r4, r4, 0x14
/* 80114E38  4B F6 00 19 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80114E3C  2C 03 00 06 */	cmpwi r3, 6
/* 80114E40  41 82 00 54 */	beq lbl_80114E94
/* 80114E44  80 7F 07 7C */	lwz r3, 0x77c(r31)
/* 80114E48  38 63 00 30 */	addi r3, r3, 0x30
/* 80114E4C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80114E50  38 80 00 00 */	li r4, 0
/* 80114E54  4B F0 AA 29 */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 80114E58  88 FF 2F 9A */	lbz r7, 0x2f9a(r31)
/* 80114E5C  80 7F 07 7C */	lwz r3, 0x77c(r31)
/* 80114E60  38 A3 00 30 */	addi r5, r3, 0x30
/* 80114E64  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 80114E68  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 80114E6C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80114E70  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80114E74  38 81 00 20 */	addi r4, r1, 0x20
/* 80114E78  38 C0 00 00 */	li r6, 0
/* 80114E7C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80114E80  FC 40 08 90 */	fmr f2, f1
/* 80114E84  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 80114E88  FC 80 18 90 */	fmr f4, f3
/* 80114E8C  39 00 00 00 */	li r8, 0
/* 80114E90  48 19 6A F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80114E94:
/* 80114E94  2C 1D 00 00 */	cmpwi r29, 0
/* 80114E98  41 82 01 D4 */	beq lbl_8011506C
/* 80114E9C  80 7F 07 80 */	lwz r3, 0x780(r31)
/* 80114EA0  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80114EA4  38 A1 00 DC */	addi r5, r1, 0xdc
/* 80114EA8  7F E6 FB 78 */	mr r6, r31
/* 80114EAC  4B F6 2E B9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80114EB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80114EB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80114EB8  3B 03 0F 38 */	addi r24, r3, 0xf38
/* 80114EBC  7F 03 C3 78 */	mr r3, r24
/* 80114EC0  80 9F 07 80 */	lwz r4, 0x780(r31)
/* 80114EC4  4B F5 F4 F1 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80114EC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80114ECC  41 82 01 A0 */	beq lbl_8011506C
/* 80114ED0  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80114ED4  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80114ED8  90 01 01 40 */	stw r0, 0x140(r1)
/* 80114EDC  7F 03 C3 78 */	mr r3, r24
/* 80114EE0  80 9F 07 80 */	lwz r4, 0x780(r31)
/* 80114EE4  38 84 00 14 */	addi r4, r4, 0x14
/* 80114EE8  38 A1 01 30 */	addi r5, r1, 0x130
/* 80114EEC  4B F5 F8 59 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80114EF0  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 80114EF4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80114EF8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80114EFC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80114F00  C0 01 01 38 */	lfs f0, 0x138(r1)
/* 80114F04  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80114F08  38 61 00 34 */	addi r3, r1, 0x34
/* 80114F0C  48 23 22 2D */	bl PSVECSquareMag
/* 80114F10  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80114F14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80114F18  40 81 00 58 */	ble lbl_80114F70
/* 80114F1C  FC 00 08 34 */	frsqrte f0, f1
/* 80114F20  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80114F24  FC 44 00 32 */	fmul f2, f4, f0
/* 80114F28  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80114F2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80114F30  FC 01 00 32 */	fmul f0, f1, f0
/* 80114F34  FC 03 00 28 */	fsub f0, f3, f0
/* 80114F38  FC 02 00 32 */	fmul f0, f2, f0
/* 80114F3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80114F40  FC 00 00 32 */	fmul f0, f0, f0
/* 80114F44  FC 01 00 32 */	fmul f0, f1, f0
/* 80114F48  FC 03 00 28 */	fsub f0, f3, f0
/* 80114F4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80114F50  FC 44 00 32 */	fmul f2, f4, f0
/* 80114F54  FC 00 00 32 */	fmul f0, f0, f0
/* 80114F58  FC 01 00 32 */	fmul f0, f1, f0
/* 80114F5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80114F60  FC 02 00 32 */	fmul f0, f2, f0
/* 80114F64  FF A1 00 32 */	fmul f29, f1, f0
/* 80114F68  FF A0 E8 18 */	frsp f29, f29
/* 80114F6C  48 00 00 90 */	b lbl_80114FFC
lbl_80114F70:
/* 80114F70  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80114F74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80114F78  40 80 00 10 */	bge lbl_80114F88
/* 80114F7C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80114F80  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)
/* 80114F84  48 00 00 78 */	b lbl_80114FFC
lbl_80114F88:
/* 80114F88  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80114F8C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80114F90  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80114F94  3C 00 7F 80 */	lis r0, 0x7f80
/* 80114F98  7C 03 00 00 */	cmpw r3, r0
/* 80114F9C  41 82 00 14 */	beq lbl_80114FB0
/* 80114FA0  40 80 00 40 */	bge lbl_80114FE0
/* 80114FA4  2C 03 00 00 */	cmpwi r3, 0
/* 80114FA8  41 82 00 20 */	beq lbl_80114FC8
/* 80114FAC  48 00 00 34 */	b lbl_80114FE0
lbl_80114FB0:
/* 80114FB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80114FB4  41 82 00 0C */	beq lbl_80114FC0
/* 80114FB8  38 00 00 01 */	li r0, 1
/* 80114FBC  48 00 00 28 */	b lbl_80114FE4
lbl_80114FC0:
/* 80114FC0  38 00 00 02 */	li r0, 2
/* 80114FC4  48 00 00 20 */	b lbl_80114FE4
lbl_80114FC8:
/* 80114FC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80114FCC  41 82 00 0C */	beq lbl_80114FD8
/* 80114FD0  38 00 00 05 */	li r0, 5
/* 80114FD4  48 00 00 10 */	b lbl_80114FE4
lbl_80114FD8:
/* 80114FD8  38 00 00 03 */	li r0, 3
/* 80114FDC  48 00 00 08 */	b lbl_80114FE4
lbl_80114FE0:
/* 80114FE0  38 00 00 04 */	li r0, 4
lbl_80114FE4:
/* 80114FE4  2C 00 00 01 */	cmpwi r0, 1
/* 80114FE8  40 82 00 10 */	bne lbl_80114FF8
/* 80114FEC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80114FF0  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)
/* 80114FF4  48 00 00 08 */	b lbl_80114FFC
lbl_80114FF8:
/* 80114FF8  FF A0 08 90 */	fmr f29, f1
lbl_80114FFC:
/* 80114FFC  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 80115000  FC 20 00 50 */	fneg f1, f0
/* 80115004  C0 01 01 38 */	lfs f0, 0x138(r1)
/* 80115008  FC 40 00 50 */	fneg f2, f0
/* 8011500C  48 15 26 69 */	bl cM_atan2s__Fff
/* 80115010  7C 78 1B 78 */	mr r24, r3
/* 80115014  C0 21 01 34 */	lfs f1, 0x134(r1)
/* 80115018  FC 40 E8 90 */	fmr f2, f29
/* 8011501C  48 15 26 59 */	bl cM_atan2s__Fff
/* 80115020  7C 64 1B 78 */	mr r4, r3
/* 80115024  38 61 00 2C */	addi r3, r1, 0x2c
/* 80115028  7F 05 C3 78 */	mr r5, r24
/* 8011502C  38 C0 00 00 */	li r6, 0
/* 80115030  48 15 23 C5 */	bl __ct__5csXyzFsss
/* 80115034  80 7F 07 80 */	lwz r3, 0x780(r31)
/* 80115038  38 C3 00 30 */	addi r6, r3, 0x30
/* 8011503C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80115040  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80115044  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80115048  38 80 00 09 */	li r4, 9
/* 8011504C  38 A0 00 00 */	li r5, 0
/* 80115050  38 E1 00 2C */	addi r7, r1, 0x2c
/* 80115054  39 00 00 00 */	li r8, 0
/* 80115058  39 20 00 00 */	li r9, 0
/* 8011505C  4B F3 71 BD */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 80115060  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80115064  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80115068  90 01 01 40 */	stw r0, 0x140(r1)
lbl_8011506C:
/* 8011506C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80115070  7C 00 07 74 */	extsb r0, r0
/* 80115074  90 01 00 08 */	stw r0, 8(r1)
/* 80115078  80 7F 2F 1C */	lwz r3, 0x2f1c(r31)
/* 8011507C  38 9F 01 0C */	addi r4, r31, 0x10c
/* 80115080  38 BF 38 04 */	addi r5, r31, 0x3804
/* 80115084  38 C0 00 3B */	li r6, 0x3b
/* 80115088  3C E0 00 04 */	lis r7, 4
/* 8011508C  2C 1C 00 00 */	cmpwi r28, 0
/* 80115090  41 82 00 0C */	beq lbl_8011509C
/* 80115094  7C A8 2B 78 */	mr r8, r5
/* 80115098  48 00 00 08 */	b lbl_801150A0
lbl_8011509C:
/* 8011509C  39 00 00 00 */	li r8, 0
lbl_801150A0:
/* 801150A0  39 20 00 00 */	li r9, 0
/* 801150A4  39 40 00 00 */	li r10, 0
/* 801150A8  C0 3F 34 20 */	lfs f1, 0x3420(r31)
/* 801150AC  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 801150B0  4B F3 BF 59 */	bl setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff
/* 801150B4  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, 0 /* qr0 */
/* 801150B8  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 801150BC  E3 C1 01 98 */	psq_l f30, 408(r1), 0, 0 /* qr0 */
/* 801150C0  CB C1 01 90 */	lfd f30, 0x190(r1)
/* 801150C4  E3 A1 01 88 */	psq_l f29, 392(r1), 0, 0 /* qr0 */
/* 801150C8  CB A1 01 80 */	lfd f29, 0x180(r1)
/* 801150CC  39 61 01 80 */	addi r11, r1, 0x180
/* 801150D0  48 24 D1 45 */	bl _restgpr_24
/* 801150D4  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 801150D8  7C 08 03 A6 */	mtlr r0
/* 801150DC  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 801150E0  4E 80 00 20 */	blr 
