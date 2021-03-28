lbl_80CFC04C:
/* 80CFC04C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFC050  7C 08 02 A6 */	mflr r0
/* 80CFC054  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFC058  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFC05C  7C 7F 1B 78 */	mr r31, r3
/* 80CFC060  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFC064  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFC068  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80CFC06C  88 1F 07 30 */	lbz r0, 0x730(r31)
/* 80CFC070  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80CFC074  3C 60 80 D0 */	lis r3, l_hang_offset@ha
/* 80CFC078  38 03 D3 00 */	addi r0, r3, l_hang_offset@l
/* 80CFC07C  7C 60 22 14 */	add r3, r0, r4
/* 80CFC080  C0 03 00 00 */	lfs f0, 0(r3)
/* 80CFC084  D0 1F 07 70 */	stfs f0, 0x770(r31)
/* 80CFC088  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CFC08C  D0 1F 07 74 */	stfs f0, 0x774(r31)
/* 80CFC090  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CFC094  D0 1F 07 78 */	stfs f0, 0x778(r31)
/* 80CFC098  C0 3F 07 74 */	lfs f1, 0x774(r31)
/* 80CFC09C  C0 1F 07 6C */	lfs f0, 0x76c(r31)
/* 80CFC0A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CFC0A4  D0 1F 07 74 */	stfs f0, 0x774(r31)
/* 80CFC0A8  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80CFC0AC  A8 05 04 E6 */	lha r0, 0x4e6(r5)
/* 80CFC0B0  7C 03 00 50 */	subf r0, r3, r0
/* 80CFC0B4  7C 00 07 34 */	extsh r0, r0
/* 80CFC0B8  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80CFC0BC  41 81 00 18 */	bgt lbl_80CFC0D4
/* 80CFC0C0  2C 00 C0 00 */	cmpwi r0, -16384
/* 80CFC0C4  41 80 00 10 */	blt lbl_80CFC0D4
/* 80CFC0C8  C0 1F 07 78 */	lfs f0, 0x778(r31)
/* 80CFC0CC  FC 00 00 50 */	fneg f0, f0
/* 80CFC0D0  D0 1F 07 78 */	stfs f0, 0x778(r31)
lbl_80CFC0D4:
/* 80CFC0D4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CFC0D8  4B 31 0C 8C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CFC0DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFC0E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFC0E4  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CFC0E8  4B 31 03 4C */	b mDoMtx_YrotM__FPA4_fs
/* 80CFC0EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFC0F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFC0F4  38 9F 07 70 */	addi r4, r31, 0x770
/* 80CFC0F8  7C 85 23 78 */	mr r5, r4
/* 80CFC0FC  4B 64 AC 70 */	b PSMTXMultVec
/* 80CFC100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFC104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFC108  7C 08 03 A6 */	mtlr r0
/* 80CFC10C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFC110  4E 80 00 20 */	blr 
