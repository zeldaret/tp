lbl_805EF630:
/* 805EF630  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805EF634  7C 08 02 A6 */	mflr r0
/* 805EF638  90 01 00 44 */	stw r0, 0x44(r1)
/* 805EF63C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805EF640  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805EF644  7C 7E 1B 78 */	mr r30, r3
/* 805EF648  3C 80 80 5F */	lis r4, lit_3774@ha /* 0x805F4188@ha */
/* 805EF64C  3B E4 41 88 */	addi r31, r4, lit_3774@l /* 0x805F4188@l */
/* 805EF650  A8 03 07 20 */	lha r0, 0x720(r3)
/* 805EF654  28 00 00 15 */	cmplwi r0, 0x15
/* 805EF658  41 81 03 4C */	bgt lbl_805EF9A4
/* 805EF65C  3C 80 80 5F */	lis r4, lit_4619@ha /* 0x805F43EC@ha */
/* 805EF660  38 84 43 EC */	addi r4, r4, lit_4619@l /* 0x805F43EC@l */
/* 805EF664  54 00 10 3A */	slwi r0, r0, 2
/* 805EF668  7C 04 00 2E */	lwzx r0, r4, r0
/* 805EF66C  7C 09 03 A6 */	mtctr r0
/* 805EF670  4E 80 04 20 */	bctr 
lbl_805EF674:
/* 805EF674  38 00 00 01 */	li r0, 1
/* 805EF678  B0 1E 07 20 */	sth r0, 0x720(r30)
/* 805EF67C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805EF680  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_805EF684:
/* 805EF684  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 805EF688  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 805EF68C  EC 01 00 2A */	fadds f0, f1, f0
/* 805EF690  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 805EF694  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 805EF698  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 805EF69C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805EF6A0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 805EF6A4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 805EF6A8  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 805EF6AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EF6B0  4C 40 13 82 */	cror 2, 0, 2
/* 805EF6B4  40 82 02 F0 */	bne lbl_805EF9A4
/* 805EF6B8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805EF6BC  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 805EF6C0  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 805EF6C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 805EF6C8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805EF6CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805EF6D0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805EF6D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EF6D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EF6DC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805EF6E0  38 80 00 08 */	li r4, 8
/* 805EF6E4  38 A0 00 4F */	li r5, 0x4f
/* 805EF6E8  38 C1 00 08 */	addi r6, r1, 8
/* 805EF6EC  4B A8 03 39 */	bl StartShock__12dVibration_cFii4cXyz
/* 805EF6F0  38 00 00 02 */	li r0, 2
/* 805EF6F4  B0 1E 07 20 */	sth r0, 0x720(r30)
/* 805EF6F8  7F C3 F3 78 */	mr r3, r30
/* 805EF6FC  38 80 00 12 */	li r4, 0x12
/* 805EF700  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805EF704  38 A0 00 00 */	li r5, 0
/* 805EF708  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805EF70C  4B FF E2 F1 */	bl anm_init__FP10b_gm_classifUcf
/* 805EF710  38 00 01 2C */	li r0, 0x12c
/* 805EF714  B0 1E 07 22 */	sth r0, 0x722(r30)
/* 805EF718  38 7E 1C 84 */	addi r3, r30, 0x1c84
/* 805EF71C  38 9E 1C 88 */	addi r4, r30, 0x1c88
/* 805EF720  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805EF724  38 C0 00 00 */	li r6, 0
/* 805EF728  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 805EF72C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 805EF730  39 00 00 01 */	li r8, 1
/* 805EF734  4B A2 D8 ED */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 805EF738  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805EF73C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805EF740  80 63 00 00 */	lwz r3, 0(r3)
/* 805EF744  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805EF748  38 80 00 01 */	li r4, 1
/* 805EF74C  4B CC 08 41 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 805EF750  38 60 00 01 */	li r3, 1
/* 805EF754  38 80 FF FF */	li r4, -1
/* 805EF758  4B A3 E3 45 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 805EF75C  48 00 02 48 */	b lbl_805EF9A4
lbl_805EF760:
/* 805EF760  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 805EF764  38 80 00 01 */	li r4, 1
/* 805EF768  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805EF76C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805EF770  40 82 00 18 */	bne lbl_805EF788
/* 805EF774  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805EF778  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805EF77C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805EF780  41 82 00 08 */	beq lbl_805EF788
/* 805EF784  38 80 00 00 */	li r4, 0
lbl_805EF788:
/* 805EF788  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805EF78C  41 82 00 1C */	beq lbl_805EF7A8
/* 805EF790  7F C3 F3 78 */	mr r3, r30
/* 805EF794  38 80 00 14 */	li r4, 0x14
/* 805EF798  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805EF79C  38 A0 00 02 */	li r5, 2
/* 805EF7A0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805EF7A4  4B FF E2 59 */	bl anm_init__FP10b_gm_classifUcf
lbl_805EF7A8:
/* 805EF7A8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805EF7AC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 805EF7B0  A8 1E 07 22 */	lha r0, 0x722(r30)
/* 805EF7B4  2C 00 00 00 */	cmpwi r0, 0
/* 805EF7B8  40 82 01 EC */	bne lbl_805EF9A4
/* 805EF7BC  38 00 00 03 */	li r0, 3
/* 805EF7C0  B0 1E 07 20 */	sth r0, 0x720(r30)
/* 805EF7C4  7F C3 F3 78 */	mr r3, r30
/* 805EF7C8  38 80 00 17 */	li r4, 0x17
/* 805EF7CC  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 805EF7D0  38 A0 00 00 */	li r5, 0
/* 805EF7D4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805EF7D8  4B FF E2 25 */	bl anm_init__FP10b_gm_classifUcf
/* 805EF7DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805EF7E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805EF7E4  80 63 00 00 */	lwz r3, 0(r3)
/* 805EF7E8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805EF7EC  38 80 00 02 */	li r4, 2
/* 805EF7F0  4B CC 07 9D */	bl changeBgmStatus__8Z2SeqMgrFl
/* 805EF7F4  48 00 01 B0 */	b lbl_805EF9A4
lbl_805EF7F8:
/* 805EF7F8  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 805EF7FC  38 80 00 01 */	li r4, 1
/* 805EF800  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805EF804  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805EF808  40 82 00 18 */	bne lbl_805EF820
/* 805EF80C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805EF810  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805EF814  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805EF818  41 82 00 08 */	beq lbl_805EF820
/* 805EF81C  38 80 00 00 */	li r4, 0
lbl_805EF820:
/* 805EF820  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805EF824  41 82 01 80 */	beq lbl_805EF9A4
/* 805EF828  7F C3 F3 78 */	mr r3, r30
/* 805EF82C  38 80 00 1E */	li r4, 0x1e
/* 805EF830  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805EF834  38 A0 00 02 */	li r5, 2
/* 805EF838  3C C0 80 5F */	lis r6, l_HIO@ha /* 0x805F47DC@ha */
/* 805EF83C  38 C6 47 DC */	addi r6, r6, l_HIO@l /* 0x805F47DC@l */
/* 805EF840  C0 46 00 20 */	lfs f2, 0x20(r6)
/* 805EF844  4B FF E1 B9 */	bl anm_init__FP10b_gm_classifUcf
/* 805EF848  38 00 00 00 */	li r0, 0
/* 805EF84C  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 805EF850  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 805EF854  38 00 00 05 */	li r0, 5
/* 805EF858  B0 1E 07 22 */	sth r0, 0x722(r30)
/* 805EF85C  38 00 00 04 */	li r0, 4
/* 805EF860  B0 1E 07 20 */	sth r0, 0x720(r30)
/* 805EF864  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805EF868  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805EF86C  80 63 00 00 */	lwz r3, 0(r3)
/* 805EF870  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805EF874  4B A1 CB 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 805EF878  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805EF87C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805EF880  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805EF884  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 805EF888  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805EF88C  38 61 00 20 */	addi r3, r1, 0x20
/* 805EF890  38 81 00 14 */	addi r4, r1, 0x14
/* 805EF894  4B C8 16 59 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805EF898  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805EF89C  38 81 00 14 */	addi r4, r1, 0x14
/* 805EF8A0  7C 65 1B 78 */	mr r5, r3
/* 805EF8A4  4B D5 77 ED */	bl PSVECAdd
/* 805EF8A8  48 00 00 FC */	b lbl_805EF9A4
lbl_805EF8AC:
/* 805EF8AC  38 00 00 05 */	li r0, 5
/* 805EF8B0  B0 1E 07 2A */	sth r0, 0x72a(r30)
/* 805EF8B4  A8 1E 07 22 */	lha r0, 0x722(r30)
/* 805EF8B8  2C 00 00 00 */	cmpwi r0, 0
/* 805EF8BC  40 82 00 E8 */	bne lbl_805EF9A4
/* 805EF8C0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805EF8C4  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 805EF8C8  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 805EF8CC  D0 1E 07 40 */	stfs f0, 0x740(r30)
/* 805EF8D0  38 00 00 01 */	li r0, 1
/* 805EF8D4  B0 1E 07 1E */	sth r0, 0x71e(r30)
/* 805EF8D8  38 00 00 00 */	li r0, 0
/* 805EF8DC  B0 1E 07 20 */	sth r0, 0x720(r30)
/* 805EF8E0  48 00 00 C4 */	b lbl_805EF9A4
lbl_805EF8E4:
/* 805EF8E4  38 80 00 13 */	li r4, 0x13
/* 805EF8E8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805EF8EC  38 A0 00 00 */	li r5, 0
/* 805EF8F0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805EF8F4  4B FF E1 09 */	bl anm_init__FP10b_gm_classifUcf
/* 805EF8F8  38 00 00 0B */	li r0, 0xb
/* 805EF8FC  B0 1E 07 20 */	sth r0, 0x720(r30)
lbl_805EF900:
/* 805EF900  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 805EF904  38 80 00 01 */	li r4, 1
/* 805EF908  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805EF90C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805EF910  40 82 00 18 */	bne lbl_805EF928
/* 805EF914  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805EF918  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805EF91C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805EF920  41 82 00 08 */	beq lbl_805EF928
/* 805EF924  38 80 00 00 */	li r4, 0
lbl_805EF928:
/* 805EF928  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805EF92C  41 82 00 78 */	beq lbl_805EF9A4
/* 805EF930  38 00 00 03 */	li r0, 3
/* 805EF934  B0 1E 07 20 */	sth r0, 0x720(r30)
/* 805EF938  7F C3 F3 78 */	mr r3, r30
/* 805EF93C  38 80 00 17 */	li r4, 0x17
/* 805EF940  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 805EF944  38 A0 00 00 */	li r5, 0
/* 805EF948  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805EF94C  4B FF E0 B1 */	bl anm_init__FP10b_gm_classifUcf
/* 805EF950  38 00 00 C8 */	li r0, 0xc8
/* 805EF954  B0 1E 07 2A */	sth r0, 0x72a(r30)
/* 805EF958  48 00 00 4C */	b lbl_805EF9A4
lbl_805EF95C:
/* 805EF95C  38 80 00 10 */	li r4, 0x10
/* 805EF960  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805EF964  38 A0 00 00 */	li r5, 0
/* 805EF968  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805EF96C  4B FF E0 91 */	bl anm_init__FP10b_gm_classifUcf
/* 805EF970  38 00 00 15 */	li r0, 0x15
/* 805EF974  B0 1E 07 20 */	sth r0, 0x720(r30)
lbl_805EF978:
/* 805EF978  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 805EF97C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805EF980  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 805EF984  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EF988  4C 41 13 82 */	cror 2, 1, 2
/* 805EF98C  40 82 00 18 */	bne lbl_805EF9A4
/* 805EF990  38 7E 1A E4 */	addi r3, r30, 0x1ae4
/* 805EF994  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 805EF998  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805EF99C  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 805EF9A0  4B C8 00 9D */	bl cLib_addCalc2__FPffff
lbl_805EF9A4:
/* 805EF9A4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805EF9A8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805EF9AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805EF9B0  7C 08 03 A6 */	mtlr r0
/* 805EF9B4  38 21 00 40 */	addi r1, r1, 0x40
/* 805EF9B8  4E 80 00 20 */	blr 
