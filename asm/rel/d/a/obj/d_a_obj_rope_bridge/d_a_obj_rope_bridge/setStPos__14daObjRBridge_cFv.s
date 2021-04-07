lbl_80595FE0:
/* 80595FE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80595FE4  7C 08 02 A6 */	mflr r0
/* 80595FE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80595FEC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80595FF0  7C 7F 1B 78 */	mr r31, r3
/* 80595FF4  3C 60 80 59 */	lis r3, l_brgBmdIdx@ha /* 0x80597D7C@ha */
/* 80595FF8  38 83 7D 7C */	addi r4, r3, l_brgBmdIdx@l /* 0x80597D7C@l */
/* 80595FFC  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80596000  80 04 00 64 */	lwz r0, 0x64(r4)
/* 80596004  90 61 00 08 */	stw r3, 8(r1)
/* 80596008  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059600C  C0 24 00 68 */	lfs f1, 0x68(r4)
/* 80596010  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80596014  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80596018  C0 04 00 6C */	lfs f0, 0x6c(r4)
/* 8059601C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80596020  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80596024  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80596028  C0 04 00 70 */	lfs f0, 0x70(r4)
/* 8059602C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80596030  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80596034  4B A7 6D 31 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80596038  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059603C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80596040  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80596044  4B A7 63 F1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80596048  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059604C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80596050  38 81 00 1C */	addi r4, r1, 0x1c
/* 80596054  7C 85 23 78 */	mr r5, r4
/* 80596058  4B DB 0D 15 */	bl PSMTXMultVec
/* 8059605C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80596060  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80596064  38 81 00 10 */	addi r4, r1, 0x10
/* 80596068  7C 85 23 78 */	mr r5, r4
/* 8059606C  4B DB 0D 01 */	bl PSMTXMultVec
/* 80596070  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80596074  88 1F 0A F0 */	lbz r0, 0xaf0(r31)
/* 80596078  54 00 10 3A */	slwi r0, r0, 2
/* 8059607C  38 61 00 08 */	addi r3, r1, 8
/* 80596080  7C 23 04 2E */	lfsx f1, r3, r0
/* 80596084  EC 00 08 2A */	fadds f0, f0, f1
/* 80596088  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8059608C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80596090  EC 00 08 2A */	fadds f0, f0, f1
/* 80596094  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80596098  38 61 00 1C */	addi r3, r1, 0x1c
/* 8059609C  38 81 00 10 */	addi r4, r1, 0x10
/* 805960A0  7F E5 FB 78 */	mr r5, r31
/* 805960A4  4B A8 7B C5 */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805960A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805960AC  41 82 00 28 */	beq lbl_805960D4
/* 805960B0  3C 60 80 3F */	lis r3, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 805960B4  38 63 1C 48 */	addi r3, r3, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 805960B8  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805960BC  D0 1F 0B 0C */	stfs f0, 0xb0c(r31)
/* 805960C0  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 805960C4  D0 1F 0B 10 */	stfs f0, 0xb10(r31)
/* 805960C8  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 805960CC  D0 1F 0B 14 */	stfs f0, 0xb14(r31)
/* 805960D0  48 00 00 1C */	b lbl_805960EC
lbl_805960D4:
/* 805960D4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805960D8  D0 1F 0B 0C */	stfs f0, 0xb0c(r31)
/* 805960DC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805960E0  D0 1F 0B 10 */	stfs f0, 0xb10(r31)
/* 805960E4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805960E8  D0 1F 0B 14 */	stfs f0, 0xb14(r31)
lbl_805960EC:
/* 805960EC  C0 1F 0B 0C */	lfs f0, 0xb0c(r31)
/* 805960F0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805960F4  C0 1F 0B 10 */	lfs f0, 0xb10(r31)
/* 805960F8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805960FC  C0 1F 0B 14 */	lfs f0, 0xb14(r31)
/* 80596100  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80596104  C0 1F 0B 0C */	lfs f0, 0xb0c(r31)
/* 80596108  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8059610C  C0 1F 0B 10 */	lfs f0, 0xb10(r31)
/* 80596110  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80596114  C0 1F 0B 14 */	lfs f0, 0xb14(r31)
/* 80596118  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8059611C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80596120  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80596124  7C 08 03 A6 */	mtlr r0
/* 80596128  38 21 00 30 */	addi r1, r1, 0x30
/* 8059612C  4E 80 00 20 */	blr 
