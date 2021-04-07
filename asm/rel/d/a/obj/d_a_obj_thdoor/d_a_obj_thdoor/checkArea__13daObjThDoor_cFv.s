lbl_80D0E06C:
/* 80D0E06C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D0E070  7C 08 02 A6 */	mflr r0
/* 80D0E074  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D0E078  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D0E07C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D0E080  7C 7E 1B 78 */	mr r30, r3
/* 80D0E084  3C 60 80 D1 */	lis r3, lit_3663@ha /* 0x80D0E5F8@ha */
/* 80D0E088  3B E3 E5 F8 */	addi r31, r3, lit_3663@l /* 0x80D0E5F8@l */
/* 80D0E08C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0E090  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0E094  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D0E098  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D0E09C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D0E0A0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D0E0A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D0E0A8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D0E0AC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D0E0B0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D0E0B4  4B 2F EC B1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D0E0B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0E0BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0E0C0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80D0E0C4  4B 2F E3 71 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D0E0C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0E0CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0E0D0  7C 64 1B 78 */	mr r4, r3
/* 80D0E0D4  4B 63 84 DD */	bl PSMTXInverse
/* 80D0E0D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D0E0DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D0E0E0  38 81 00 08 */	addi r4, r1, 8
/* 80D0E0E4  7C 85 23 78 */	mr r5, r4
/* 80D0E0E8  4B 63 8C 85 */	bl PSMTXMultVec
/* 80D0E0EC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80D0E0F0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80D0E0F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0E0F8  41 81 00 10 */	bgt lbl_80D0E108
/* 80D0E0FC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80D0E100  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0E104  40 80 00 0C */	bge lbl_80D0E110
lbl_80D0E108:
/* 80D0E108  38 60 00 00 */	li r3, 0
/* 80D0E10C  48 00 00 2C */	b lbl_80D0E138
lbl_80D0E110:
/* 80D0E110  C0 21 00 08 */	lfs f1, 8(r1)
/* 80D0E114  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D0E118  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0E11C  41 80 00 10 */	blt lbl_80D0E12C
/* 80D0E120  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80D0E124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0E128  40 81 00 0C */	ble lbl_80D0E134
lbl_80D0E12C:
/* 80D0E12C  38 60 00 00 */	li r3, 0
/* 80D0E130  48 00 00 08 */	b lbl_80D0E138
lbl_80D0E134:
/* 80D0E134  38 60 00 01 */	li r3, 1
lbl_80D0E138:
/* 80D0E138  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D0E13C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D0E140  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D0E144  7C 08 03 A6 */	mtlr r0
/* 80D0E148  38 21 00 20 */	addi r1, r1, 0x20
/* 80D0E14C  4E 80 00 20 */	blr 
