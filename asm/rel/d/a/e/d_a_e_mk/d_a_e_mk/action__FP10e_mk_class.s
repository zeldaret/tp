lbl_8071A538:
/* 8071A538  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8071A53C  7C 08 02 A6 */	mflr r0
/* 8071A540  90 01 00 34 */	stw r0, 0x34(r1)
/* 8071A544  39 61 00 30 */	addi r11, r1, 0x30
/* 8071A548  4B C4 7C 90 */	b _savegpr_28
/* 8071A54C  7C 7E 1B 78 */	mr r30, r3
/* 8071A550  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8071A554  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 8071A558  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8071A55C  4B 90 04 08 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8071A560  D0 3E 06 B8 */	stfs f1, 0x6b8(r30)
/* 8071A564  7F C3 F3 78 */	mr r3, r30
/* 8071A568  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8071A56C  4B 90 01 A4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8071A570  B0 7E 06 BC */	sth r3, 0x6bc(r30)
/* 8071A574  7F C3 F3 78 */	mr r3, r30
/* 8071A578  4B FF BC 81 */	bl damage_check__FP10e_mk_class
/* 8071A57C  3B A0 00 01 */	li r29, 1
/* 8071A580  3B 80 00 01 */	li r28, 1
/* 8071A584  38 00 00 00 */	li r0, 0
/* 8071A588  98 1E 06 F8 */	stb r0, 0x6f8(r30)
/* 8071A58C  A8 1E 06 B6 */	lha r0, 0x6b6(r30)
/* 8071A590  28 00 00 23 */	cmplwi r0, 0x23
/* 8071A594  41 81 00 AC */	bgt lbl_8071A640
/* 8071A598  3C 60 80 72 */	lis r3, lit_6244@ha
/* 8071A59C  38 63 C8 DC */	addi r3, r3, lit_6244@l
/* 8071A5A0  54 00 10 3A */	slwi r0, r0, 2
/* 8071A5A4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8071A5A8  7C 09 03 A6 */	mtctr r0
/* 8071A5AC  4E 80 04 20 */	bctr 
lbl_8071A5B0:
/* 8071A5B0  7F C3 F3 78 */	mr r3, r30
/* 8071A5B4  4B FF AE F5 */	bl e_mk_wait__FP10e_mk_class
/* 8071A5B8  48 00 00 88 */	b lbl_8071A640
lbl_8071A5BC:
/* 8071A5BC  7F C3 F3 78 */	mr r3, r30
/* 8071A5C0  4B FF A5 B9 */	bl e_mk_move__FP10e_mk_class
/* 8071A5C4  48 00 00 7C */	b lbl_8071A640
lbl_8071A5C8:
/* 8071A5C8  7F C3 F3 78 */	mr r3, r30
/* 8071A5CC  4B FF B0 4D */	bl e_mk_shoot__FP10e_mk_class
/* 8071A5D0  48 00 00 70 */	b lbl_8071A640
lbl_8071A5D4:
/* 8071A5D4  7F C3 F3 78 */	mr r3, r30
/* 8071A5D8  4B FF B5 41 */	bl e_mk_yoro__FP10e_mk_class
/* 8071A5DC  48 00 00 64 */	b lbl_8071A640
lbl_8071A5E0:
/* 8071A5E0  7F C3 F3 78 */	mr r3, r30
/* 8071A5E4  4B FF B7 49 */	bl e_mk_drop__FP10e_mk_class
/* 8071A5E8  38 00 00 01 */	li r0, 1
/* 8071A5EC  98 1E 06 F8 */	stb r0, 0x6f8(r30)
/* 8071A5F0  48 00 00 50 */	b lbl_8071A640
lbl_8071A5F4:
/* 8071A5F4  7F C3 F3 78 */	mr r3, r30
/* 8071A5F8  4B FF BA B9 */	bl e_mk_damage__FP10e_mk_class
/* 8071A5FC  38 00 00 01 */	li r0, 1
/* 8071A600  98 1E 06 F8 */	stb r0, 0x6f8(r30)
/* 8071A604  48 00 00 3C */	b lbl_8071A640
lbl_8071A608:
/* 8071A608  7F C3 F3 78 */	mr r3, r30
/* 8071A60C  4B FF BD 71 */	bl e_mk_s_demo__FP10e_mk_class
/* 8071A610  3B A0 00 00 */	li r29, 0
/* 8071A614  48 00 00 2C */	b lbl_8071A640
lbl_8071A618:
/* 8071A618  7F C3 F3 78 */	mr r3, r30
/* 8071A61C  4B FF C1 65 */	bl e_mk_e_demo__FP10e_mk_class
/* 8071A620  98 7E 06 F8 */	stb r3, 0x6f8(r30)
/* 8071A624  3B A0 00 00 */	li r29, 0
/* 8071A628  3B 80 00 00 */	li r28, 0
/* 8071A62C  48 00 00 14 */	b lbl_8071A640
lbl_8071A630:
/* 8071A630  7F C3 F3 78 */	mr r3, r30
/* 8071A634  4B FF C9 15 */	bl e_mk_r04_demo__FP10e_mk_class
/* 8071A638  38 00 00 01 */	li r0, 1
/* 8071A63C  98 1E 06 F8 */	stb r0, 0x6f8(r30)
lbl_8071A640:
/* 8071A640  7F 80 07 75 */	extsb. r0, r28
/* 8071A644  41 82 00 10 */	beq lbl_8071A654
/* 8071A648  38 00 00 04 */	li r0, 4
/* 8071A64C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8071A650  48 00 00 18 */	b lbl_8071A668
lbl_8071A654:
/* 8071A654  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8071A658  54 00 00 3E */	slwi r0, r0, 0
/* 8071A65C  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8071A660  38 00 00 00 */	li r0, 0
/* 8071A664  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_8071A668:
/* 8071A668  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8071A66C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8071A670  38 A0 00 04 */	li r5, 4
/* 8071A674  38 C0 20 00 */	li r6, 0x2000
/* 8071A678  4B B5 5F 90 */	b cLib_addCalcAngleS2__FPssss
/* 8071A67C  88 1E 06 F8 */	lbz r0, 0x6f8(r30)
/* 8071A680  7C 00 07 75 */	extsb. r0, r0
/* 8071A684  41 82 00 48 */	beq lbl_8071A6CC
/* 8071A688  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8071A68C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8071A690  7C 65 1B 78 */	mr r5, r3
/* 8071A694  4B C2 C9 FC */	b PSVECAdd
/* 8071A698  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8071A69C  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 8071A6A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8071A6A4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8071A6A8  88 1E 06 F8 */	lbz r0, 0x6f8(r30)
/* 8071A6AC  2C 00 00 01 */	cmpwi r0, 1
/* 8071A6B0  40 82 00 2C */	bne lbl_8071A6DC
/* 8071A6B4  38 7E 07 60 */	addi r3, r30, 0x760
/* 8071A6B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8071A6BC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8071A6C0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8071A6C4  4B 95 C3 E8 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8071A6C8  48 00 00 14 */	b lbl_8071A6DC
lbl_8071A6CC:
/* 8071A6CC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8071A6D0  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8071A6D4  7C 65 1B 78 */	mr r5, r3
/* 8071A6D8  4B C2 C9 B8 */	b PSVECAdd
lbl_8071A6DC:
/* 8071A6DC  88 7E 07 1B */	lbz r3, 0x71b(r30)
/* 8071A6E0  7C 60 07 75 */	extsb. r0, r3
/* 8071A6E4  41 82 00 F4 */	beq lbl_8071A7D8
/* 8071A6E8  7C 60 07 74 */	extsb r0, r3
/* 8071A6EC  2C 00 00 02 */	cmpwi r0, 2
/* 8071A6F0  40 82 00 BC */	bne lbl_8071A7AC
/* 8071A6F4  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8071A6F8  83 83 00 04 */	lwz r28, 4(r3)
/* 8071A6FC  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8071A700  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8071A704  38 63 05 70 */	addi r3, r3, 0x570
/* 8071A708  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8071A70C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8071A710  80 84 00 00 */	lwz r4, 0(r4)
/* 8071A714  4B C2 BD 9C */	b PSMTXCopy
/* 8071A718  3C 60 80 72 */	lis r3, lit_3780@ha
/* 8071A71C  C0 03 C5 50 */	lfs f0, lit_3780@l(r3)
/* 8071A720  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8071A724  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8071A728  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8071A72C  38 61 00 14 */	addi r3, r1, 0x14
/* 8071A730  38 81 00 08 */	addi r4, r1, 8
/* 8071A734  4B B5 67 B8 */	b MtxPosition__FP4cXyzP4cXyz
/* 8071A738  38 7E 0C 08 */	addi r3, r30, 0xc08
/* 8071A73C  38 9E 0C 0C */	addi r4, r30, 0xc0c
/* 8071A740  38 A1 00 08 */	addi r5, r1, 8
/* 8071A744  38 DE 04 E4 */	addi r6, r30, 0x4e4
/* 8071A748  3C E0 80 72 */	lis r7, lit_6243@ha
/* 8071A74C  C0 27 C7 68 */	lfs f1, lit_6243@l(r7)
/* 8071A750  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8071A754  39 00 00 00 */	li r8, 0
/* 8071A758  4B 90 28 C8 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 8071A75C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8071A760  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8071A764  38 63 06 30 */	addi r3, r3, 0x630
/* 8071A768  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8071A76C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8071A770  80 84 00 00 */	lwz r4, 0(r4)
/* 8071A774  4B C2 BD 3C */	b PSMTXCopy
/* 8071A778  38 61 00 14 */	addi r3, r1, 0x14
/* 8071A77C  38 81 00 08 */	addi r4, r1, 8
/* 8071A780  4B B5 67 6C */	b MtxPosition__FP4cXyzP4cXyz
/* 8071A784  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 8071A788  38 9E 0C 14 */	addi r4, r30, 0xc14
/* 8071A78C  38 A1 00 08 */	addi r5, r1, 8
/* 8071A790  38 DE 04 E4 */	addi r6, r30, 0x4e4
/* 8071A794  3C E0 80 72 */	lis r7, lit_6243@ha
/* 8071A798  C0 27 C7 68 */	lfs f1, lit_6243@l(r7)
/* 8071A79C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8071A7A0  39 00 00 00 */	li r8, 0
/* 8071A7A4  4B 90 28 7C */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 8071A7A8  48 00 00 28 */	b lbl_8071A7D0
lbl_8071A7AC:
/* 8071A7AC  38 7E 0C 08 */	addi r3, r30, 0xc08
/* 8071A7B0  38 9E 0C 0C */	addi r4, r30, 0xc0c
/* 8071A7B4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8071A7B8  38 DE 04 E4 */	addi r6, r30, 0x4e4
/* 8071A7BC  3C E0 80 72 */	lis r7, lit_6243@ha
/* 8071A7C0  C0 27 C7 68 */	lfs f1, lit_6243@l(r7)
/* 8071A7C4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8071A7C8  39 00 00 01 */	li r8, 1
/* 8071A7CC  4B 90 28 54 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_8071A7D0:
/* 8071A7D0  38 00 00 00 */	li r0, 0
/* 8071A7D4  98 1E 07 1B */	stb r0, 0x71b(r30)
lbl_8071A7D8:
/* 8071A7D8  7F A0 07 75 */	extsb. r0, r29
/* 8071A7DC  41 82 00 14 */	beq lbl_8071A7F0
/* 8071A7E0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8071A7E4  80 03 05 88 */	lwz r0, 0x588(r3)
/* 8071A7E8  64 00 02 00 */	oris r0, r0, 0x200
/* 8071A7EC  90 03 05 88 */	stw r0, 0x588(r3)
lbl_8071A7F0:
/* 8071A7F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8071A7F4  4B C4 7A 30 */	b _restgpr_28
/* 8071A7F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8071A7FC  7C 08 03 A6 */	mtlr r0
/* 8071A800  38 21 00 30 */	addi r1, r1, 0x30
/* 8071A804  4E 80 00 20 */	blr 
