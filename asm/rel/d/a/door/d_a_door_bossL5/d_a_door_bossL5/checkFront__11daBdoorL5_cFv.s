lbl_80671D44:
/* 80671D44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80671D48  7C 08 02 A6 */	mflr r0
/* 80671D4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80671D50  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80671D54  7C 7F 1B 78 */	mr r31, r3
/* 80671D58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80671D5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80671D60  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80671D64  38 61 00 08 */	addi r3, r1, 8
/* 80671D68  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80671D6C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80671D70  4B BF 4D C4 */	b __mi__4cXyzCFRC3Vec
/* 80671D74  C0 01 00 08 */	lfs f0, 8(r1)
/* 80671D78  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80671D7C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80671D80  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80671D84  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80671D88  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80671D8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80671D90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80671D94  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80671D98  7C 00 00 D0 */	neg r0, r0
/* 80671D9C  7C 04 07 34 */	extsh r4, r0
/* 80671DA0  4B 99 A6 3C */	b mDoMtx_YrotS__FPA4_fs
/* 80671DA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80671DA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80671DAC  38 81 00 14 */	addi r4, r1, 0x14
/* 80671DB0  7C 85 23 78 */	mr r5, r4
/* 80671DB4  4B CD 4F B8 */	b PSMTXMultVec
/* 80671DB8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80671DBC  3C 60 80 67 */	lis r3, lit_4015@ha
/* 80671DC0  C0 03 25 1C */	lfs f0, lit_4015@l(r3)
/* 80671DC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80671DC8  7C 00 00 26 */	mfcr r0
/* 80671DCC  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80671DD0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80671DD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80671DD8  7C 08 03 A6 */	mtlr r0
/* 80671DDC  38 21 00 30 */	addi r1, r1, 0x30
/* 80671DE0  4E 80 00 20 */	blr 
