lbl_80A897C0:
/* 80A897C0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80A897C4  7C 08 02 A6 */	mflr r0
/* 80A897C8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80A897CC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80A897D0  4B 8D 8A 0C */	b _savegpr_29
/* 80A897D4  7C 7D 1B 78 */	mr r29, r3
/* 80A897D8  3C 60 80 A9 */	lis r3, lit_3990@ha
/* 80A897DC  3B E3 24 1C */	addi r31, r3, lit_3990@l
/* 80A897E0  38 61 00 38 */	addi r3, r1, 0x38
/* 80A897E4  4B 5E E4 84 */	b __ct__11dBgS_LinChkFv
/* 80A897E8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A897EC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A897F0  80 63 00 00 */	lwz r3, 0(r3)
/* 80A897F4  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80A897F8  4B 58 2B E4 */	b mDoMtx_YrotS__FPA4_fs
/* 80A897FC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A89800  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A89804  80 63 00 00 */	lwz r3, 0(r3)
/* 80A89808  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 80A8980C  4B 58 2B 90 */	b mDoMtx_XrotM__FPA4_fs
/* 80A89810  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A89814  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A89818  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A8981C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A89820  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A89824  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A89828  38 61 00 14 */	addi r3, r1, 0x14
/* 80A8982C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A89830  4B 7E 76 BC */	b MtxPosition__FP4cXyzP4cXyz
/* 80A89834  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A89838  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A8983C  7C 65 1B 78 */	mr r5, r3
/* 80A89840  4B 8B D8 50 */	b PSVECAdd
/* 80A89844  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80A89848  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A8984C  38 61 00 14 */	addi r3, r1, 0x14
/* 80A89850  38 81 00 20 */	addi r4, r1, 0x20
/* 80A89854  4B 7E 76 98 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A89858  38 61 00 20 */	addi r3, r1, 0x20
/* 80A8985C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A89860  7C 65 1B 78 */	mr r5, r3
/* 80A89864  4B 8B D8 2C */	b PSVECAdd
/* 80A89868  38 61 00 38 */	addi r3, r1, 0x38
/* 80A8986C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A89870  38 A1 00 20 */	addi r5, r1, 0x20
/* 80A89874  7F A6 EB 78 */	mr r6, r29
/* 80A89878  4B 5E E4 EC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A8987C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A89880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A89884  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80A89888  7F C3 F3 78 */	mr r3, r30
/* 80A8988C  38 81 00 38 */	addi r4, r1, 0x38
/* 80A89890  4B 5E AB 24 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80A89894  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A89898  41 82 01 00 */	beq lbl_80A89998
/* 80A8989C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80A898A0  D0 1D 06 E4 */	stfs f0, 0x6e4(r29)
/* 80A898A4  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80A898A8  D0 1D 06 E8 */	stfs f0, 0x6e8(r29)
/* 80A898AC  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80A898B0  D0 1D 06 EC */	stfs f0, 0x6ec(r29)
/* 80A898B4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A898B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A898BC  38 61 00 14 */	addi r3, r1, 0x14
/* 80A898C0  38 81 00 20 */	addi r4, r1, 0x20
/* 80A898C4  4B 7E 76 28 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A898C8  38 61 00 20 */	addi r3, r1, 0x20
/* 80A898CC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A898D0  7C 65 1B 78 */	mr r5, r3
/* 80A898D4  4B 8B D7 BC */	b PSVECAdd
/* 80A898D8  38 61 00 38 */	addi r3, r1, 0x38
/* 80A898DC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A898E0  38 A1 00 20 */	addi r5, r1, 0x20
/* 80A898E4  7F A6 EB 78 */	mr r6, r29
/* 80A898E8  4B 5E E4 7C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A898EC  7F C3 F3 78 */	mr r3, r30
/* 80A898F0  38 81 00 38 */	addi r4, r1, 0x38
/* 80A898F4  4B 5E AA C0 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80A898F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A898FC  41 82 00 88 */	beq lbl_80A89984
/* 80A89900  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80A89904  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A89908  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80A8990C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A89910  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80A89914  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A89918  38 61 00 08 */	addi r3, r1, 8
/* 80A8991C  38 81 00 20 */	addi r4, r1, 0x20
/* 80A89920  38 BD 06 E4 */	addi r5, r29, 0x6e4
/* 80A89924  4B 7D D2 10 */	b __mi__4cXyzCFRC3Vec
/* 80A89928  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A8992C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A89930  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A89934  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A89938  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A8993C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A89940  EC 21 00 72 */	fmuls f1, f1, f1
/* 80A89944  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A89948  EC 41 00 2A */	fadds f2, f1, f0
/* 80A8994C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A89950  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A89954  40 81 00 0C */	ble lbl_80A89960
/* 80A89958  FC 00 10 34 */	frsqrte f0, f2
/* 80A8995C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A89960:
/* 80A89960  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A89964  4B 7D DD 10 */	b cM_atan2s__Fff
/* 80A89968  7C 03 00 D0 */	neg r0, r3
/* 80A8996C  7C 1F 07 34 */	extsh r31, r0
/* 80A89970  38 61 00 38 */	addi r3, r1, 0x38
/* 80A89974  38 80 FF FF */	li r4, -1
/* 80A89978  4B 5E E3 64 */	b __dt__11dBgS_LinChkFv
/* 80A8997C  7F E3 FB 78 */	mr r3, r31
/* 80A89980  48 00 00 28 */	b lbl_80A899A8
lbl_80A89984:
/* 80A89984  38 61 00 38 */	addi r3, r1, 0x38
/* 80A89988  38 80 FF FF */	li r4, -1
/* 80A8998C  4B 5E E3 50 */	b __dt__11dBgS_LinChkFv
/* 80A89990  38 60 00 00 */	li r3, 0
/* 80A89994  48 00 00 14 */	b lbl_80A899A8
lbl_80A89998:
/* 80A89998  38 61 00 38 */	addi r3, r1, 0x38
/* 80A8999C  38 80 FF FF */	li r4, -1
/* 80A899A0  4B 5E E3 3C */	b __dt__11dBgS_LinChkFv
/* 80A899A4  38 60 00 00 */	li r3, 0
lbl_80A899A8:
/* 80A899A8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80A899AC  4B 8D 88 7C */	b _restgpr_29
/* 80A899B0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80A899B4  7C 08 03 A6 */	mtlr r0
/* 80A899B8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80A899BC  4E 80 00 20 */	blr 
