lbl_80D3F438:
/* 80D3F438  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D3F43C  7C 08 02 A6 */	mflr r0
/* 80D3F440  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D3F444  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D3F448  7C 7F 1B 78 */	mr r31, r3
/* 80D3F44C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3F450  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D3F454  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80D3F458  38 61 00 08 */	addi r3, r1, 8
/* 80D3F45C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80D3F460  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D3F464  4B 52 76 D0 */	b __mi__4cXyzCFRC3Vec
/* 80D3F468  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D3F46C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D3F470  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D3F474  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D3F478  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D3F47C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D3F480  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D3F484  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D3F488  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80D3F48C  7C 00 00 D0 */	neg r0, r0
/* 80D3F490  7C 04 07 34 */	extsh r4, r0
/* 80D3F494  4B 2C CF 48 */	b mDoMtx_YrotS__FPA4_fs
/* 80D3F498  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D3F49C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D3F4A0  38 81 00 14 */	addi r4, r1, 0x14
/* 80D3F4A4  7C 85 23 78 */	mr r5, r4
/* 80D3F4A8  4B 60 78 C4 */	b PSMTXMultVec
/* 80D3F4AC  38 60 00 01 */	li r3, 1
/* 80D3F4B0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80D3F4B4  3C 80 80 D4 */	lis r4, lit_3658@ha
/* 80D3F4B8  C0 04 02 7C */	lfs f0, lit_3658@l(r4)
/* 80D3F4BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D3F4C0  40 81 00 08 */	ble lbl_80D3F4C8
/* 80D3F4C4  38 60 00 00 */	li r3, 0
lbl_80D3F4C8:
/* 80D3F4C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D3F4CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D3F4D0  7C 08 03 A6 */	mtlr r0
/* 80D3F4D4  38 21 00 30 */	addi r1, r1, 0x30
/* 80D3F4D8  4E 80 00 20 */	blr 
