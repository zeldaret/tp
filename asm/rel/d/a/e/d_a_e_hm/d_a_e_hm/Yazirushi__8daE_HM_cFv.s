lbl_806E4008:
/* 806E4008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E400C  7C 08 02 A6 */	mflr r0
/* 806E4010  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E4014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E4018  7C 7F 1B 78 */	mr r31, r3
/* 806E401C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806E4020  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806E4024  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806E4028  4B FF C8 59 */	bl other_bg_check__FP8daE_HM_cP10fopAc_ac_c
/* 806E402C  2C 03 00 00 */	cmpwi r3, 0
/* 806E4030  40 82 00 6C */	bne lbl_806E409C
/* 806E4034  A8 1F 05 D4 */	lha r0, 0x5d4(r31)
/* 806E4038  2C 00 00 01 */	cmpwi r0, 1
/* 806E403C  41 82 00 60 */	beq lbl_806E409C
/* 806E4040  38 00 00 04 */	li r0, 4
/* 806E4044  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806E4048  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806E404C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 806E4050  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806E4054  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806E4058  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806E405C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806E4060  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806E4064  3C 60 80 6E */	lis r3, lit_4809@ha
/* 806E4068  C0 23 5A 20 */	lfs f1, lit_4809@l(r3)
/* 806E406C  EC 00 08 2A */	fadds f0, f0, f1
/* 806E4070  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806E4074  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806E4078  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 806E407C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806E4080  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806E4084  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806E4088  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 806E408C  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 806E4090  EC 00 08 2A */	fadds f0, f0, f1
/* 806E4094  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806E4098  48 00 00 0C */	b lbl_806E40A4
lbl_806E409C:
/* 806E409C  38 00 00 00 */	li r0, 0
/* 806E40A0  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_806E40A4:
/* 806E40A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E40A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E40AC  7C 08 03 A6 */	mtlr r0
/* 806E40B0  38 21 00 10 */	addi r1, r1, 0x10
/* 806E40B4  4E 80 00 20 */	blr 
