lbl_80781F80:
/* 80781F80  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80781F84  7C 08 02 A6 */	mflr r0
/* 80781F88  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80781F8C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80781F90  4B BE 02 4D */	bl _savegpr_29
/* 80781F94  7C 7E 1B 78 */	mr r30, r3
/* 80781F98  3C 60 80 78 */	lis r3, lit_3658@ha /* 0x80784D68@ha */
/* 80781F9C  3B E3 4D 68 */	addi r31, r3, lit_3658@l /* 0x80784D68@l */
/* 80781FA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80781FA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80781FA8  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80781FAC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80781FB0  4B 8F 5C B9 */	bl __ct__11dBgS_LinChkFv
/* 80781FB4  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80781FB8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80781FBC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80781FC0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80781FC4  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80781FC8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80781FCC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80781FD0  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80781FD4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80781FD8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80781FDC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80781FE0  4B 88 AD 85 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80781FE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80781FE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80781FEC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80781FF0  4B 88 A4 45 */	bl mDoMtx_YrotM__FPA4_fs
/* 80781FF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80781FF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80781FFC  38 81 00 20 */	addi r4, r1, 0x20
/* 80782000  7C 85 23 78 */	mr r5, r4
/* 80782004  4B BC 4D 69 */	bl PSMTXMultVec
/* 80782008  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8078200C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80782010  38 81 00 14 */	addi r4, r1, 0x14
/* 80782014  7C 85 23 78 */	mr r5, r4
/* 80782018  4B BC 4D 55 */	bl PSMTXMultVec
/* 8078201C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80782020  38 81 00 20 */	addi r4, r1, 0x20
/* 80782024  38 A1 00 14 */	addi r5, r1, 0x14
/* 80782028  38 C0 00 00 */	li r6, 0
/* 8078202C  4B 8F 5D 39 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80782030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80782034  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80782038  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8078203C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80782040  4B 8F 23 75 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80782044  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80782048  41 82 01 04 */	beq lbl_8078214C
/* 8078204C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80782050  D0 01 00 08 */	stfs f0, 8(r1)
/* 80782054  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80782058  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8078205C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80782060  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80782064  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80782068  EC 21 00 28 */	fsubs f1, f1, f0
/* 8078206C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80782070  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80782074  40 81 00 70 */	ble lbl_807820E4
/* 80782078  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 8078207C  2C 00 00 02 */	cmpwi r0, 2
/* 80782080  41 82 00 48 */	beq lbl_807820C8
/* 80782084  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80782088  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8078208C  40 82 00 20 */	bne lbl_807820AC
/* 80782090  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80782094  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x80784F84@ha */
/* 80782098  38 63 4F 84 */	addi r3, r3, l_HIO@l /* 0x80784F84@l */
/* 8078209C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807820A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 807820A4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807820A8  48 00 00 A4 */	b lbl_8078214C
lbl_807820AC:
/* 807820AC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 807820B0  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x80784F84@ha */
/* 807820B4  38 63 4F 84 */	addi r3, r3, l_HIO@l /* 0x80784F84@l */
/* 807820B8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 807820BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 807820C0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807820C4  48 00 00 88 */	b lbl_8078214C
lbl_807820C8:
/* 807820C8  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 807820CC  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x80784F84@ha */
/* 807820D0  38 63 4F 84 */	addi r3, r3, l_HIO@l /* 0x80784F84@l */
/* 807820D4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807820D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 807820DC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807820E0  48 00 00 6C */	b lbl_8078214C
lbl_807820E4:
/* 807820E4  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 807820E8  2C 00 00 02 */	cmpwi r0, 2
/* 807820EC  41 82 00 48 */	beq lbl_80782134
/* 807820F0  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 807820F4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 807820F8  40 82 00 20 */	bne lbl_80782118
/* 807820FC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80782100  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x80784F84@ha */
/* 80782104  38 63 4F 84 */	addi r3, r3, l_HIO@l /* 0x80784F84@l */
/* 80782108  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8078210C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80782110  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80782114  48 00 00 38 */	b lbl_8078214C
lbl_80782118:
/* 80782118  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8078211C  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x80784F84@ha */
/* 80782120  38 63 4F 84 */	addi r3, r3, l_HIO@l /* 0x80784F84@l */
/* 80782124  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80782128  EC 01 00 32 */	fmuls f0, f1, f0
/* 8078212C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80782130  48 00 00 1C */	b lbl_8078214C
lbl_80782134:
/* 80782134  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80782138  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x80784F84@ha */
/* 8078213C  38 63 4F 84 */	addi r3, r3, l_HIO@l /* 0x80784F84@l */
/* 80782140  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80782144  EC 01 00 32 */	fmuls f0, f1, f0
/* 80782148  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_8078214C:
/* 8078214C  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x80784F84@ha */
/* 80782150  38 63 4F 84 */	addi r3, r3, l_HIO@l /* 0x80784F84@l */
/* 80782154  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80782158  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8078215C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80782160  38 80 FF FF */	li r4, -1
/* 80782164  4B 8F 5B 79 */	bl __dt__11dBgS_LinChkFv
/* 80782168  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8078216C  4B BE 00 BD */	bl _restgpr_29
/* 80782170  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80782174  7C 08 03 A6 */	mtlr r0
/* 80782178  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8078217C  4E 80 00 20 */	blr 
